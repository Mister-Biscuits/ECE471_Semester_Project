/* 
 * File:   sgp30_sensor.h
 * Author: skyler
 *
 * SGP30 multi-pixel gas sensor driver.
 * Communicates over bit-bang I2C on RC4 (SDA) / RC5 (SCL).
 *
 * Datasheet references (v0.9):
 *  - I2C address  : 0x58  (Table 8)
 *  - Interface    : I2C fast mode, max 400 kHz  (Table 3)
 *  - Commands     : 16-bit, MSB first  (§6.2)
 *  - Response     : 2-byte word + 1-byte CRC-8 per word, MSB first  (§6.6)
 *  - CRC          : poly 0x31, init 0xFF, no reflection  (Table 13)
 *  - Sampling     : Measure_air_quality must be called every 1 s  (Table 2)
 */

#ifndef SGP30_SENSOR_H
#define SGP30_SENSOR_H

#include <xc.h>
#include <stdint.h>
#include <stdbool.h>

/* ------------------------------------------------------------------ */
/* I2C device address (7-bit, not pre-shifted)                         */
/* ------------------------------------------------------------------ */
#define SGP30_I2C_ADDR              0x58u

/* ------------------------------------------------------------------ */
/* 16-bit command codes  (Table 10, Table 11, Table 12)                */
/* ------------------------------------------------------------------ */
#define SGP30_CMD_INIT_AIR_QUALITY      0x2003u
#define SGP30_CMD_MEASURE_AIR_QUALITY   0x2008u
#define SGP30_CMD_MEASURE_RAW_SIGNALS   0x2050u
#define SGP30_CMD_GET_BASELINE          0x2015u
#define SGP30_CMD_SET_BASELINE          0x201Eu
#define SGP30_CMD_SET_HUMIDITY          0x2061u
#define SGP30_CMD_MEASURE_TEST          0x2032u
#define SGP30_CMD_GET_FEATURE_SET       0x202Fu
#define SGP30_CMD_GET_SERIAL_ID         0x3682u

/* Soft-reset via I2C General Call (Table 11) */
#define SGP30_GENERAL_CALL_ADDR         0x00u
#define SGP30_GENERAL_CALL_RESET        0x06u

/* Self-test pass pattern (§6.3 Measure Test) */
#define SGP30_SELF_TEST_PASS            0xD400u

/* ------------------------------------------------------------------ */
/* Result structures                                                   */
/* ------------------------------------------------------------------ */

/* Air quality measurement result */
typedef struct {
    uint16_t co2eq;     /* CO2 equivalent, ppm  (400?60000)  */
    uint16_t tvoc;      /* Total VOC, ppb        (0?60000)   */
    bool     valid;     /* false if I2C or CRC error          */
} sgp30_data_t;

/* Raw signal measurement result */
typedef struct {
    uint16_t h2_signal;      /* Raw H2 signal output      */
    uint16_t ethanol_signal; /* Raw ethanol signal output */
    bool     valid;
} sgp30_raw_t;

/* ------------------------------------------------------------------ */
/* Public API                                                          */
/* ------------------------------------------------------------------ */

/**
 * @brief  Initialise bit-bang I2C pins and send Init_air_quality.
 *         Must be called after power-up or soft reset.
 *         The first 15 s of measurements will return fixed values
 *         (400 ppm CO2eq, 0 ppb TVOC) while the sensor initialises.
 */
void    sgp30_init(void);

/**
 * @brief  Measure air quality (CO2eq + TVOC).
 *         MUST be called every 1 s for correct baseline compensation.
 * @return true on success, false on I2C/CRC error.
 */
bool    sgp30_measure(sgp30_data_t *result);

/**
 * @brief  Read raw H2 and ethanol signals (for diagnostics / verification).
 * @return true on success.
 */
bool    sgp30_measure_raw(sgp30_raw_t *result);

/**
 * @brief  Read the current baseline values for non-volatile storage.
 *         Save these periodically and restore after power-up with
 *         sgp30_set_baseline() to skip the warm-up period.
 * @return true on success.
 */
bool    sgp30_get_baseline(uint16_t *co2eq_base, uint16_t *tvoc_base);

/**
 * @brief  Restore previously saved baseline values.
 *         Must be called AFTER sgp30_init().
 *         Parameters are in order (co2eq, tvoc) but the wire order is
 *         (TVOC first, CO2eq second) per §6.3 ? handled internally.
 * @return true on success.
 */
bool    sgp30_set_baseline(uint16_t co2eq_base, uint16_t tvoc_base);

/**
 * @brief  Write absolute humidity for on-chip compensation.
 *         Value is a fixed-point 8.8 number in g/m³.
 *         Send 0x0000 to use the sensor default (11.57 g/m³).
 *         Helper macro: SGP30_HUMIDITY_WORD(integer_gm3, frac_256ths)
 * @return true on success.
 */
bool    sgp30_set_humidity(uint16_t humidity_word);

/**
 * @brief  Helper to build the Set_humidity word from float g/m³.
 *         e.g. 16.5 g/m³ ? SGP30_HUMIDITY_FLOAT(16.5f) = 0x1080
 */
#define SGP30_HUMIDITY_FLOAT(gm3) \
    ((uint16_t)(((uint8_t)(gm3) << 8) | (uint8_t)(((gm3) - (uint8_t)(gm3)) * 256.0f)))

/**
 * @brief  Issue a soft reset via I2C General Call (§6.4).
 *         WARNING: resets ALL devices on the bus that support General Call.
 *         A new sgp30_init() must be called after this.
 * @return true on success.
 */
bool    sgp30_soft_reset(void);

/**
 * @brief  Run the on-chip self-test (§6.3 Measure Test).
 *         Do NOT call after Init_air_quality ? for production test only.
 * @return true if sensor returns the pass pattern 0xD400.
 */
bool    sgp30_self_test(void);

/**
 * @brief  Read the 48-bit serial ID (§6.5).
 *         serial_id[0] = most-significant word (first received).
 * @return true on success.
 */
bool    sgp30_get_serial_id(uint16_t serial_id[3]);

/**
 * @brief  Read the feature set version word (§6.3 Feature Set).
 * @return true on success.
 */
bool    sgp30_get_feature_set(uint16_t *feature_set);

#endif /* SGP30_SENSOR_H */