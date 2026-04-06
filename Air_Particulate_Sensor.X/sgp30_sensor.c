#include "sgp30_sensor.h"
#include "I2C.h"
#include "mcc_generated_files/system/system.h"

/* ==================================================================
 * CRC-8 calculation  (SGP30 datasheet, poly 0x31, init 0xFF)
 * ================================================================== */
static uint8_t sgp30_crc(uint8_t byte1, uint8_t byte2)
{
    uint8_t crc = 0xFFu;
    uint8_t data[2] = { byte1, byte2 };

    for (uint8_t i = 0u; i < 2u; i++) {
        crc ^= data[i];
        for (uint8_t bit = 0u; bit < 8u; bit++) {
            if (crc & 0x80u)
                crc = (uint8_t)(((uint8_t)(crc << 1u)) ^ 0x31u);
            else
                crc = (uint8_t)(crc << 1u);
        }
    }
    return crc;
}

/* ==================================================================
 * SGP30 communication helpers  (now using hardware I2C from I2C.h)
 * ================================================================== */

/* Send a 16-bit command (START + addr+W + cmd_hi + cmd_lo + STOP).
 * Returns false if any byte is NACKed or on bus error.
 */
static bool sgp30_send_cmd(uint16_t cmd)
{
    uint8_t buf[2];
    buf[0] = (uint8_t)(cmd >> 8u);
    buf[1] = (uint8_t)(cmd & 0xFFu);

    I2C_Status s = I2C_HW_Write(SGP30_I2C_ADDR, buf, 2u);
    return (s == I2C_OK);
}

/* Read n_words 16-bit words, each followed by a CRC byte.
 * Opens a new START+read-address transaction; caller has already
 * waited the required measurement duration.
 * Returns false if sensor NACKs the read address or any CRC fails.
 *
 * Each word on the wire is 3 bytes: MSB, LSB, CRC.
 * So total read length = n_words * 3.
 */
static bool sgp30_read_words(uint16_t *result_buf, uint8_t n_words)
{
    /* Maximum words we ever read is 3 (serial ID), so 9 bytes max */
    uint8_t raw[9];
    uint8_t total = (uint8_t)(n_words * 3u);

    I2C_Status s = I2C_HW_Read(SGP30_I2C_ADDR, raw, total);
    if (s != I2C_OK)
        return false;

    for (uint8_t w = 0u; w < n_words; w++) {
        uint8_t idx = (uint8_t)(w * 3u);
        uint8_t msb = raw[idx];
        uint8_t lsb = raw[idx + 1u];
        uint8_t crc = raw[idx + 2u];

        if (crc != sgp30_crc(msb, lsb))
            return false;

        result_buf[w] = ((uint16_t)msb << 8u) | (uint16_t)lsb;
    }
    return true;
}

/* Send a 16-bit command followed by data words + CRC bytes in one
 * I2C write transaction.
 *
 * wire_words[][2]: array of { MSB, LSB } pairs.
 * n_words        : number of data words (each followed by its CRC).
 *
 * Total write payload: 2 (cmd) + n_words*3 (MSB+LSB+CRC per word).
 */
static bool sgp30_send_cmd_with_data(uint16_t cmd,
                                     const uint8_t wire_words[][2],
                                     uint8_t n_words)
{
    /* Max payload: 2 cmd bytes + 2 words * 3 bytes = 8 bytes */
    uint8_t buf[8];
    uint8_t pos = 0u;

    buf[pos++] = (uint8_t)(cmd >> 8u);
    buf[pos++] = (uint8_t)(cmd & 0xFFu);

    for (uint8_t w = 0u; w < n_words; w++) {
        uint8_t msb = wire_words[w][0];
        uint8_t lsb = wire_words[w][1];
        buf[pos++] = msb;
        buf[pos++] = lsb;
        buf[pos++] = sgp30_crc(msb, lsb);
    }

    I2C_Status s = I2C_HW_Write(SGP30_I2C_ADDR, buf, pos);
    return (s == I2C_OK);
}

/* ==================================================================
 * Public API implementation
 * ================================================================== */

void sgp30_init(void)
{
    __delay_ms(10u);    /* tPU max = 0.6 ms; 10 ms is comfortable     */
    sgp30_send_cmd(SGP30_CMD_INIT_AIR_QUALITY);
    __delay_ms(10u);    /* Init_air_quality max duration = 10 ms       */
    /* NOTE: first 15 s of sgp30_measure() calls return fixed values:
     *       400 ppm CO2eq and 0 ppb TVOC - this is normal behaviour. */
}

/* Must be called every 1 s for the on-chip baseline algorithm.       */
bool sgp30_measure(sgp30_data_t *result)
{
    result->valid = false;

    if (!sgp30_send_cmd(SGP30_CMD_MEASURE_AIR_QUALITY))
        return false;

    __delay_ms(12u);    /* Measure_air_quality max = 12 ms (Table 10) */

    uint16_t words[2];  /* words[0] = CO2eq ppm, words[1] = TVOC ppb  */
    if (!sgp30_read_words(words, 2u))
        return false;

    result->co2eq = words[0];
    result->tvoc  = words[1];
    result->valid = true;
    return true;
}

bool sgp30_measure_raw(sgp30_raw_t *result)
{
    result->valid = false;

    if (!sgp30_send_cmd(SGP30_CMD_MEASURE_RAW_SIGNALS))
        return false;

    __delay_ms(25u);    /* Measure_raw_signals max = 25 ms (Table 10) */

    uint16_t words[2];
    if (!sgp30_read_words(words, 2u))
        return false;

    result->h2_signal      = words[0];
    result->ethanol_signal = words[1];
    result->valid = true;
    return true;
}

bool sgp30_get_baseline(uint16_t *co2eq_base, uint16_t *tvoc_base)
{
    if (!sgp30_send_cmd(SGP30_CMD_GET_BASELINE))
        return false;

    __delay_ms(10u);

    uint16_t words[2];
    if (!sgp30_read_words(words, 2u))
        return false;

    *co2eq_base = words[0];
    *tvoc_base  = words[1];
    return true;
}

bool sgp30_set_baseline(uint16_t co2eq_base, uint16_t tvoc_base)
{
    /* Wire order per datasheet: TVOC word first, CO2eq word second */
    uint8_t words[2][2];
    words[0][0] = (uint8_t)(tvoc_base  >> 8u);
    words[0][1] = (uint8_t)(tvoc_base  & 0xFFu);
    words[1][0] = (uint8_t)(co2eq_base >> 8u);
    words[1][1] = (uint8_t)(co2eq_base & 0xFFu);

    if (!sgp30_send_cmd_with_data(SGP30_CMD_SET_BASELINE, words, 2u))
        return false;

    __delay_ms(10u);
    return true;
}

bool sgp30_set_humidity(uint16_t humidity_word)
{
    uint8_t words[1][2];
    words[0][0] = (uint8_t)(humidity_word >> 8u);
    words[0][1] = (uint8_t)(humidity_word & 0xFFu);

    if (!sgp30_send_cmd_with_data(SGP30_CMD_SET_HUMIDITY, words, 1u))
        return false;

    __delay_ms(10u);
    return true;
}

/* Soft reset via I2C General Call.
 * Resets ALL devices on the bus that support General Call.
 * Call sgp30_init() again after this.
 */
bool sgp30_soft_reset(void)
{
    uint8_t reset_byte = SGP30_GENERAL_CALL_RESET;
    I2C_Status s = I2C_HW_Write(SGP30_GENERAL_CALL_ADDR, &reset_byte, 1u);
    if (s != I2C_OK)
        return false;

    __delay_ms(1u);
    return true;
}

bool sgp30_self_test(void){
    if (!sgp30_send_cmd(SGP30_CMD_MEASURE_TEST))
        return false;

    __delay_ms(220u);   /* Measure_test max = 220 ms (Table 10) */

    uint16_t result[1];
    if (!sgp30_read_words(result, 1u))
        return false;

    return (result[0] == SGP30_SELF_TEST_PASS);
}

bool sgp30_get_serial_id(uint16_t serial_id[3])
{
    if (!sgp30_send_cmd(SGP30_CMD_GET_SERIAL_ID))
        return false;

    __delay_us(500u);

    return sgp30_read_words(serial_id, 3u);
}

bool sgp30_get_feature_set(uint16_t *feature_set)
{
    if (!sgp30_send_cmd(SGP30_CMD_GET_FEATURE_SET))
        return false;

    __delay_ms(2u);

    return sgp30_read_words(feature_set, 1u);
}