/**
 * @file I2C.h
 *
 * Hardware (MSSP) I2C fast-mode driver for PIC16(L)F15356/75/76/85/86.
 *
 * BRG formula (Equation 32-1 in DS40001866E):
 *   F_SCL = FOSC / (4 * (SSPxADD + 1))
 *   SSPxADD = (FOSC / (4 * F_SCL)) - 1
 *
 * For 400 kHz fast-mode @ 32 MHz FOSC:
 *   SSPxADD = (32 000 000 / (4 * 400 000)) - 1 = 19 = 0x13  ? (Table 32-2)
 * For 400 kHz fast-mode @ 16 MHz FOSC:
 *   SSPxADD = (16 000 000 / (4 * 400 000)) - 1 =  9 = 0x09  ? (Table 32-2)
 *
 * NOTE: SSPxADD values of 0, 1, or 2 are NOT valid in I2C mode
 *       (silicon limitation, DS40001866E §32.7).
 */

#ifndef I2C_H
#define I2C_H

#include <xc.h>
#include <stdint.h>
#include <stdbool.h>

/* ------------------------------------------------------------------ */
/* Module selection ? define exactly ONE before including I2C.h        */
/* ------------------------------------------------------------------ */
/* #define I2C_USE_BITBANG   */
/* #define I2C_USE_HARDWARE  */

/* ------------------------------------------------------------------ */
/* Select which hardware MSSP instance to use (1 or 2).               */
/* Default is MSSP1.  Override in your project settings if needed.    */
/* ------------------------------------------------------------------ */
#ifndef I2C_HW_MODULE
#  define I2C_HW_MODULE  1
#endif

/* ------------------------------------------------------------------ */
/* Convenience macros that resolve to SSP1xxx or SSP2xxx              */
/* ------------------------------------------------------------------ */
#if I2C_HW_MODULE == 1
#  define I2Cx_STAT     SSP1STAT
#  define I2Cx_CON1     SSP1CON1
#  define I2Cx_CON2     SSP1CON2
#  define I2Cx_CON3     SSP1CON3
#  define I2Cx_ADD      SSP1ADD
#  define I2Cx_BUF      SSP1BUF
#  define I2Cx_IF       PIR3bits.SSP1IF
#  define I2Cx_IE       PIE3bits.SSP1IE
#  define I2Cx_BCL_IF   PIR3bits.BCL1IF
#elif I2C_HW_MODULE == 2
#  define I2Cx_STAT     SSP2STAT
#  define I2Cx_CON1     SSP2CON1
#  define I2Cx_CON2     SSP2CON2
#  define I2Cx_CON3     SSP2CON3
#  define I2Cx_ADD      SSP2ADD
#  define I2Cx_BUF      SSP2BUF
#  define I2Cx_IF       PIR3bits.SSP2IF
#  define I2Cx_IE       PIE3bits.SSP2IE
#  define I2Cx_BCL_IF   PIR3bits.BCL2IF
#else
#  error "I2C_HW_MODULE must be 1 or 2"
#endif

/* ------------------------------------------------------------------ */
/* BRG helper macro ? evaluated entirely at compile time.             */
/* Both arguments must be compile-time constants (they always are,    */
/* since FOSC and target SCL frequency are fixed for a given board).  */
/* The 32-bit division never runs on the PIC; the preprocessor        */
/* reduces it to a single uint8_t literal before code generation.     */
/*                                                                     */
/* Usage:  I2C_HW_Init(I2C_HW_BRG(32000000UL, 400000UL));            */
/*   32 MHz / 400 kHz ? 0x13  (19)                                    */
/*   16 MHz / 400 kHz ? 0x09   (9)                                    */
/* NOTE: result must be >= 3; values 0,1,2 invalid for I2C (§32.7).  */
/* ------------------------------------------------------------------ */
#define I2C_HW_BRG(fosc, fscl)  ((uint8_t)(((fosc) / (4UL * (fscl))) - 1UL))

/* ------------------------------------------------------------------ */
/* Return codes (reuse / extend whatever your bit-bang driver uses)    */
/* ------------------------------------------------------------------ */
typedef enum {
    I2C_OK        = 0,   /**< Success                        */
    I2C_NACK      = 1,   /**< Device did not acknowledge     */
    I2C_BUS_COLL  = 2,   /**< Bus collision detected         */
    I2C_TIMEOUT   = 3    /**< Software timeout expired       */
} I2C_Status;

/* ------------------------------------------------------------------ */
/* Hardware driver API                                                 */
/* These mirror your bit-bang function signatures so callers can      */
/* swap back-ends without changing application code.                  */
/* ------------------------------------------------------------------ */

/**
 * @brief  Initialise the MSSP peripheral for I2C fast mode (400 kHz).
 *
 * Configures SSPxCON1, SSPxSTAT, SSPxCON3, and SSPxADD.
 * Slew-rate control is enabled (SMP = 0) as required by the
 * 400 kHz fast-mode specification (DS40001866E §32.8, SSPxSTAT bit 7).
 *
 * The SDA and SCL pins must already be mapped via PPS and their TRIS
 * bits set to input (1) BEFORE calling this function.  The MSSP
 * hardware overrides the output driver when it needs to pull a line low.
 *
 * @param brg  Pre-computed BRG reload value. Use the I2C_HW_BRG() macro
 *             to calculate this at compile time from your FOSC and target
 *             SCL frequency so no 32-bit division runs on the device.
 *             e.g.  I2C_HW_Init(I2C_HW_BRG(32000000UL, 400000UL));
 *             Must be >= 3 (hardware minimum for I2C, §32.7).
 */
void I2C_HW_Init(uint8_t brg);

/**
 * @brief  Send a START condition and address byte, then write data.
 *
 * Full transaction: START ? address+W ? data[0..len-1] ? STOP.
 *
 * @param addr   7-bit I2C address (NOT pre-shifted).
 * @param data   Pointer to bytes to transmit.
 * @param len    Number of bytes to transmit.
 * @return       I2C_OK on success, I2C_NACK or I2C_BUS_COLL on error.
 */
I2C_Status I2C_HW_Write(uint8_t addr, const uint8_t *data, uint8_t len);

/**
 * @brief  Send a START condition and address byte, then read data.
 *
 * Full transaction: START ? address+R ? data[0..len-1] (last byte NACK) ? STOP.
 *
 * @param addr   7-bit I2C address (NOT pre-shifted).
 * @param buf    Buffer to store received bytes.
 * @param len    Number of bytes to receive.
 * @return       I2C_OK on success, I2C_NACK or I2C_BUS_COLL on error.
 */
I2C_Status I2C_HW_Read(uint8_t addr, uint8_t *buf, uint8_t len);

/**
 * @brief  Write then read in one transaction (repeated START).
 *
 * Transaction: START ? address+W ? tx[0..tx_len-1]
 *              ? REPEATED START ? address+R ? rx[0..rx_len-1] ? STOP.
 *
 * Useful for register-addressed reads (e.g. sensors, EEPROMs).
 *
 * @param addr     7-bit I2C address.
 * @param tx       Bytes to write (register address / command).
 * @param tx_len   Number of bytes to write.
 * @param rx       Buffer for received bytes.
 * @param rx_len   Number of bytes to read.
 * @return         I2C_OK on success.
 */
I2C_Status I2C_HW_WriteRead(uint8_t addr,
                             const uint8_t *tx, uint8_t tx_len,
                             uint8_t *rx,       uint8_t rx_len);

/* ------------------------------------------------------------------
 * Low-level primitives (exposed so bit-bang and HW share the same
 * high-level I2C_Write / I2C_Read wrappers in I2C.c if desired).
 * ------------------------------------------------------------------ */
I2C_Status I2C_HW_Start(void);
I2C_Status I2C_HW_RepeatedStart(void);
I2C_Status I2C_HW_Stop(void);
I2C_Status I2C_HW_SendByte(uint8_t byte);     /**< Returns I2C_NACK if not ACKed */
I2C_Status I2C_HW_ReadByte(uint8_t *byte, bool send_ack);

#endif /* I2C_H */