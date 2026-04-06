/**
 * @file I2C.c
 *
 * Hardware (MSSP) I2C fast-mode driver for PIC16(L)F15356/75/76/85/86.
 */

#include "I2C.h"
#include <xc.h>
#include <stdint.h>
#include <stdbool.h>

#define I2C_HW_TIMEOUT_CNT  1000u

/* ------------------------------------------------------------------ */
/* Private helpers                                                     */
/* ------------------------------------------------------------------ */

static I2C_Status wait_for_if(void)
{
    uint16_t cnt = I2C_HW_TIMEOUT_CNT;
    while (!I2Cx_IF) {
        if (--cnt == 0u) return I2C_TIMEOUT;
    }
    I2Cx_IF = 0;
    return I2C_OK;
}

static I2C_Status wait_for_idle(volatile uint8_t *reg, uint8_t mask)
{
    uint16_t cnt = I2C_HW_TIMEOUT_CNT;
    while (*reg & mask) {
        if (--cnt == 0u) return I2C_TIMEOUT;
    }
    I2Cx_IF = 0;
    return I2C_OK;
}

static I2C_Status check_bus_collision(void)
{
    if (I2Cx_BCL_IF) {
        I2Cx_BCL_IF = 0;
        return I2C_BUS_COLL;
    }
    return I2C_OK;
}

/* ------------------------------------------------------------------ */
/* Public API - init                                                   */
/* ------------------------------------------------------------------ */

void I2C_HW_Init(uint8_t brg)
{
    I2Cx_CON1 = 0x00;
    I2Cx_STAT = 0x00;   /* SMP=0 (slew-rate on for 400 kHz) */
    I2Cx_CON3 = 0x08;   /* SDAHT = 1 (300 ns SDA hold) */
    I2Cx_ADD  = brg;
    I2Cx_CON1 = 0x28;   /* SSPEN=1, SSPM=1000 (I2C host) */
    I2Cx_IF     = 0;
    I2Cx_BCL_IF = 0;
}

/* ------------------------------------------------------------------ */
/* Low-level primitives                                                */
/* ------------------------------------------------------------------ */

I2C_Status I2C_HW_Start(void)
{
    I2C_Status s;
    SSP1CON2bits.SEN = 1;
    s = wait_for_idle((volatile uint8_t *)&I2Cx_CON2, 0x01u);
    if (s != I2C_OK) return s;
    return check_bus_collision();
}

I2C_Status I2C_HW_RepeatedStart(void)
{
    I2C_Status s;
    SSP1CON2bits.RSEN = 1;
    s = wait_for_idle((volatile uint8_t *)&I2Cx_CON2, 0x02u);
    if (s != I2C_OK) return s;
    return check_bus_collision();
}

I2C_Status I2C_HW_Stop(void)
{
    I2C_Status s;
    SSP1CON2bits.PEN = 1;
    s = wait_for_idle((volatile uint8_t *)&I2Cx_CON2, 0x04u);
    if (s != I2C_OK) return s;
    return check_bus_collision();
}

I2C_Status I2C_HW_SendByte(uint8_t byte)
{
    I2C_Status s;
    I2Cx_BUF = byte;

    s = wait_for_if();
    if (s != I2C_OK) return s;

    s = check_bus_collision();
    if (s != I2C_OK) return s;

    if (SSP1CON2bits.ACKSTAT) return I2C_NACK; //1 not received, 0 received
    return I2C_OK;
}

I2C_Status I2C_HW_ReadByte(uint8_t *byte, bool send_ack)
{
    I2C_Status s;
    SSP1CON2bits.RCEN = 1;

    s = wait_for_if();
    if (s != I2C_OK) return s;

    *byte = I2Cx_BUF;

    SSP1CON2bits.ACKDT = send_ack ? 0 : 1;
    SSP1CON2bits.ACKEN = 1;

    s = wait_for_idle((volatile uint8_t *)&I2Cx_CON2, 0x10u);
    if (s != I2C_OK) return s;

    return I2C_OK;
}

/* ------------------------------------------------------------------ */
/* High-level transactions                                             */
/* ------------------------------------------------------------------ */

I2C_Status I2C_HW_Write(uint8_t addr, const uint8_t *data, uint8_t len)
{
    I2C_Status s;

    s = I2C_HW_Start();
    if (s != I2C_OK) return s;

    /* Explicit cast to unsigned before shift to avoid int promotion */
    s = I2C_HW_SendByte((uint8_t)(((unsigned)addr << 1u) & 0xFEu));
    if (s != I2C_OK) { I2C_HW_Stop(); return s; }

    for (uint8_t i = 0u; i < len; i++) {
        s = I2C_HW_SendByte(data[i]);
        if (s != I2C_OK) { I2C_HW_Stop(); return s; }
    }

    return I2C_HW_Stop();
}

I2C_Status I2C_HW_Read(uint8_t addr, uint8_t *buf, uint8_t len)
{
    I2C_Status s;

    if (len == 0u) return I2C_OK;

    s = I2C_HW_Start();
    if (s != I2C_OK) return s;

    s = I2C_HW_SendByte((uint8_t)(((unsigned)addr << 1u) | 0x01u));
    if (s != I2C_OK) { I2C_HW_Stop(); return s; }

    for (uint8_t i = 0u; i < len; i++) {
        bool ack = (i < (uint8_t)(len - 1u));
        s = I2C_HW_ReadByte(&buf[i], ack);
        if (s != I2C_OK) { I2C_HW_Stop(); return s; }
    }

    return I2C_HW_Stop();
}

I2C_Status I2C_HW_WriteRead(uint8_t addr,
                             const uint8_t *tx, uint8_t tx_len,
                             uint8_t *rx,       uint8_t rx_len)
{
    I2C_Status s;

    s = I2C_HW_Start();
    if (s != I2C_OK) return s;

    s = I2C_HW_SendByte((uint8_t)(((unsigned)addr << 1u) & 0xFEu));
    if (s != I2C_OK) { I2C_HW_Stop(); return s; }

    for (uint8_t i = 0u; i < tx_len; i++) {
        s = I2C_HW_SendByte(tx[i]);
        if (s != I2C_OK) { I2C_HW_Stop(); return s; }
    }

    s = I2C_HW_RepeatedStart();
    if (s != I2C_OK) { I2C_HW_Stop(); return s; }

    s = I2C_HW_SendByte((uint8_t)(((unsigned)addr << 1u) | 0x01u));
    if (s != I2C_OK) { I2C_HW_Stop(); return s; }

    for (uint8_t i = 0u; i < rx_len; i++) {
        bool ack = (i < (uint8_t)(rx_len - 1u));
        s = I2C_HW_ReadByte(&rx[i], ack);
        if (s != I2C_OK) { I2C_HW_Stop(); return s; }
    }

    return I2C_HW_Stop();
}