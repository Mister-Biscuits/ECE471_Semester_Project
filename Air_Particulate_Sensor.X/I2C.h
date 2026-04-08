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
 *   SSPxADD = (32 000 000 / (4 * 400 000)) - 1 = 19 = 0x13
 * For 100 kHz standard-mode @ 32 MHz FOSC:
 *   SSPxADD = (32 000 000 / (4 * 100 000)) - 1 = 79 = 0x4F
 *
 * NOTE: SSPxADD values of 0, 1, or 2 are NOT valid in I2C mode.
 */

#ifndef I2C_H
#define I2C_H

#include <xc.h>
#include <stdint.h>
#include <stdbool.h>

#ifndef I2C_HW_MODULE
#  define I2C_HW_MODULE  1
#endif

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

#define I2C_HW_BRG(fosc, fscl)  ((uint8_t)(((fosc) / (4UL * (fscl))) - 1UL))

typedef enum {
    I2C_OK        = 0,
    I2C_NACK      = 1,
    I2C_BUS_COLL  = 2,
    I2C_TIMEOUT   = 3
} I2C_Status;

/* --- Init / recovery --- */
void I2C_HW_Init(uint8_t brg);
void I2C_HW_BusRecovery(uint8_t brg);

/* --- High-level transactions --- */
I2C_Status I2C_HW_Write(uint8_t addr, const uint8_t *data, uint8_t len);
I2C_Status I2C_HW_Read(uint8_t addr, uint8_t *buf, uint8_t len);
I2C_Status I2C_HW_WriteRead(uint8_t addr,
                             const uint8_t *tx, uint8_t tx_len,
                             uint8_t *rx,       uint8_t rx_len);

/* --- Low-level primitives --- */
I2C_Status I2C_HW_Start(void);
I2C_Status I2C_HW_RepeatedStart(void);
I2C_Status I2C_HW_Stop(void);
I2C_Status I2C_HW_SendByte(uint8_t byte);
I2C_Status I2C_HW_ReadByte(uint8_t *byte, bool send_ack);

#endif /* I2C_H */