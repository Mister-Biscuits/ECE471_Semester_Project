/**
 * @file I2C.c
 *
 * Hardware (MSSP) I2C fast-mode driver for PIC16(L)F15356/75/76/85/86.
 */

#include "I2C.h"
#include "mcc_generated_files/system/system.h"
#include <xc.h>
#include <stdint.h>
#include <stdbool.h>

/* ------------------------------------------------------------------ */
/* Timeout tuning.                                                     */
/* At 32 MHz, one instruction cycle = 125 ns.  A full 9-bit I2C byte  */
/* at 400 kHz takes ~22.5 us = ~180 instruction cycles.               */
/* 5000 gives ample margin for clock-stretching and multi-byte xfers.  */
/* ------------------------------------------------------------------ */
#define I2C_HW_TIMEOUT_CNT  5000u

/* ------------------------------------------------------------------ */
/* Private helpers                                                     */
/* ------------------------------------------------------------------ */

static I2C_Status wait_for_if(void){
    uint16_t cnt = I2C_HW_TIMEOUT_CNT;
    while (!I2Cx_IF) {
        if (--cnt == 0u) return I2C_TIMEOUT;
    }
    I2Cx_IF = 0;
    return I2C_OK;
}

static I2C_Status wait_for_idle(volatile uint8_t *reg, uint8_t mask){
    uint16_t cnt = I2C_HW_TIMEOUT_CNT;
    while (*reg & mask) {
        if (--cnt == 0u) return I2C_TIMEOUT;
    }
    I2Cx_IF = 0;
    return I2C_OK;
}

static I2C_Status check_bus_collision(void){
    if (I2Cx_BCL_IF) {
        I2Cx_BCL_IF = 0;
        return I2C_BUS_COLL;
    }
    return I2C_OK;
}

/**
 * Wait until the MSSP is truly idle (no pending START/STOP/RCEN/ACKEN
 * and the transmit-in-progress bit R_nW is clear).
 * The lower 5 bits of SSPxCON2 are the condition-control bits; if any
 * are set the module is still busy.
 */
static I2C_Status wait_bus_idle(void){
    uint16_t cnt = I2C_HW_TIMEOUT_CNT;
    /* ACKEN | RCEN | PEN | RSEN | SEN  = bits 4:0 of CON2
     * Also check R_nW (bit 2 of SSPxSTAT) which is 1 while a
     * transmit is still in progress.                            */
    while ((I2Cx_CON2 & 0x1Fu) || (I2Cx_STAT & 0x04u)) {
        if (--cnt == 0u) return I2C_TIMEOUT;
    }
    return I2C_OK;
}

/* ------------------------------------------------------------------ */
/* Public API - init                                                   */
/* ------------------------------------------------------------------ */

void I2C_HW_Init(uint8_t brg)
{
    /* Disable the MSSP while reconfiguring */
    I2Cx_CON1 = 0x00;

    I2Cx_STAT = 0x00;   /* SMP=0 (slew-rate on for 400 kHz), CKE=0 */
    I2Cx_CON3 = 0x08;   /* SDAHT = 1 (300 ns SDA hold) */
    I2Cx_CON1 = 0x08;  //SSPM 1000 (I2C host)
    I2Cx_ADD  = brg;

    /* Clear any stale flags BEFORE enabling */
    I2Cx_IF     = 0;
    I2Cx_BCL_IF = 0;

    /* Enable in I2C host mode */
    I2Cx_CON1 |= 0x20;   /* SSPEN=1, SSPM=1000 (I2C host, BRG clock) */
}

/* ------------------------------------------------------------------ */
/* Bus recovery                                                        */
/* ------------------------------------------------------------------ */

/**
 * @brief  Attempt to recover a stuck I2C bus.
 *
 * If a slave is holding SDA low (e.g. it was mid-byte when the master
 * reset), we toggle SCL manually up to 9 times to clock the slave out,
 * then issue a STOP.  After recovery, re-init the MSSP module.
 *
 * @param brg  The same BRG value used in I2C_HW_Init().
 */
void I2C_HW_BusRecovery(uint8_t brg)
{
    /* Disable MSSP so we can bit-bang the pins */
    I2Cx_CON1 = 0x00;

    /* Temporarily take manual control of SCL (RC5) */
    /* SDA (RC4) stays as input so we can read it    */
    TRISCbits.TRISC5 = 0;          /* SCL = output */
    TRISCbits.TRISC4 = 1;          /* SDA = input  */

    for (uint8_t i = 0u; i < 9u; i++) {
        LATCbits.LATC5 = 0;        /* SCL low  */
        __delay_us(5);
        LATCbits.LATC5 = 1;        /* SCL high */
        __delay_us(5);
        if (PORTCbits.RC4 == 1)     /* SDA released? */
            break;
    }

    /* Generate a STOP condition manually: SDA low, then SCL high,
     * then SDA high.  */
    TRISCbits.TRISC4 = 0;          /* SDA = output */
    LATCbits.LATC4 = 0;            /* SDA low  */
    __delay_us(5);
    LATCbits.LATC5 = 1;            /* SCL high */
    __delay_us(5);
    LATCbits.LATC4 = 1;            /* SDA high -> STOP */
    __delay_us(5);

    /* Return pins to input (MSSP requires TRIS=1) */
    TRISCbits.TRISC4 = 1;
    TRISCbits.TRISC5 = 1;

    /* Re-initialize the MSSP */
    I2C_HW_Init(brg);
}

/* ------------------------------------------------------------------ */
/* Low-level primitives                                                */
/* ------------------------------------------------------------------ */

I2C_Status I2C_HW_Start(void){
    I2C_Status s;

    s = wait_bus_idle();
    if (s != I2C_OK) return s;

    SSP1CON2bits.SEN = 1;
    s = wait_for_idle((volatile uint8_t *)&I2Cx_CON2, 0x01u);
    if (s != I2C_OK) return s;
    return check_bus_collision();
}

I2C_Status I2C_HW_RepeatedStart(void){
    I2C_Status s;

    s = wait_bus_idle();
    if (s != I2C_OK) return s;

    SSP1CON2bits.RSEN = 1;
    s = wait_for_idle((volatile uint8_t *)&I2Cx_CON2, 0x02u);
    if (s != I2C_OK) return s;
    return check_bus_collision();
}

I2C_Status I2C_HW_Stop(void){
    I2C_Status s;

    s = wait_bus_idle();
    if (s != I2C_OK) return s;

    SSP1CON2bits.PEN = 1;
    s = wait_for_idle((volatile uint8_t *)&I2Cx_CON2, 0x04u);
    if (s != I2C_OK) return s;
    return check_bus_collision();
}

I2C_Status I2C_HW_SendByte(uint8_t byte)
{
    I2C_Status s;

    s = wait_bus_idle();
    if (s != I2C_OK) return s;

    I2Cx_BUF = byte;

    s = wait_for_if();
    if (s != I2C_OK) return s;

    s = check_bus_collision();
    if (s != I2C_OK) return s;

    if (SSP1CON2bits.ACKSTAT) return I2C_NACK;
    return I2C_OK;
}

I2C_Status I2C_HW_ReadByte(uint8_t *byte, bool send_ack)
{
    I2C_Status s;

    s = wait_bus_idle();
    if (s != I2C_OK) return s;

    /* Clear overflow flag - if SSPOV is set from a previous overrun
     * the module will refuse to receive another byte.              */
    SSP1CON1bits.SSPOV = 0;

    SSP1CON2bits.RCEN = 1;

    s = wait_for_if();
    if (s != I2C_OK) return s;

    *byte = I2Cx_BUF;

    /* Send ACK or NACK */
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