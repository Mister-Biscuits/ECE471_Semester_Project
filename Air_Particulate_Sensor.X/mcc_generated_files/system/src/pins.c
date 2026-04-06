/**
 * Generated Driver File
 * 
 * @file pins.c
 * 
 * @ingroup  pinsdriver
 * 
 * @brief This is generated driver implementation for pins. 
 *        This file provides implementations for pin APIs for all pins selected in the GUI.
 *
 * @version Driver Version 3.0.0
 * 
 * MODIFIED: Added PPS mappings for MSSP1 I2C on RC4 (SDA) / RC5 (SCL)
 *           and SPI bit-bang outputs on RB0 (SDO) / RB1 (SCK) / RC7 (CS).
*/

/*
Copyright [2026] Microchip Technology Inc. and its subsidiaries.
*/

#include "../pins.h"


void PIN_MANAGER_Initialize(void)
{
   /**
    LATx registers
    */
    LATA = 0x0;
    LATB = 0x0;
    LATC = 0x0;
    LATD = 0x0;
    LATE = 0x0;

    /**
    TRISx registers
    *
    * RB0 = output (OLED SDO bit-bang)    -> bit 0 = 0
    * RB1 = output (OLED SCK bit-bang)    -> bit 1 = 0
    * RC4 = input  (I2C SDA, MSSP drives) -> bit 4 = 1
    * RC5 = input  (I2C SCL, MSSP drives) -> bit 5 = 1
    * RC7 = output (OLED CS)              -> bit 7 = 0
    *
    * TRISB: 0xFC = 1111_1100  (RB0,RB1 output, rest input)
    * TRISC: 0x3F = 0011_1111  (RC4,RC5 input; RC6 input; RC7 output)
    *   Note: bits 4,5 MUST be 1 (input) for MSSP I2C to control them.
    */
    TRISA = 0xFF;
    TRISB = 0xFC;       /* RB0,RB1 = output for OLED bit-bang SPI */
    TRISC = 0x3F;       /* RC7 = output (CS); RC4,RC5 = input (I2C) */
    TRISD = 0xFF;
    TRISE = 0xF;

    /**
    ANSELx registers  -  0 = digital, 1 = analog
    *
    * RB0, RB1 must be digital for OLED bit-bang SPI
    * RC4, RC5 must be digital for I2C
    * RC7 must be digital for OLED CS
    *
    * ANSELB: clear bits 0,1 -> 0xFC
    * ANSELC: clear bits 4,5,7 -> 0x0F  (was 0x4F which left bit 6 set
    *         and bits 4,5 clear; now also clear bit 7 for CS)
    */
    ANSELA = 0xFF;
    ANSELB = 0xFC;      /* RB0,RB1 digital */
    ANSELC = 0x0F;      /* RC4,RC5,RC6,RC7 digital; RC0-RC3 analog */
    ANSELD = 0xFF;
    ANSELE = 0x7;

    /**
    WPUx registers  -  enable weak pull-ups on I2C lines
    *
    * RC4 (SDA) and RC5 (SCL) get internal weak pull-ups as a safety net.
    * External pull-ups (4.7k-10k) are still recommended for reliable
    * 400 kHz operation, but the internal WPU helps during init.
    */
    WPUA = 0x0;
    WPUB = 0x0;
    WPUC = 0x30;        /* bits 4,5 = WPU on RC4 and RC5 */
    WPUD = 0x0;
    WPUE = 0x0;
  
    /**
    ODx registers  -  enable open-drain on I2C lines
    *
    * I2C requires open-drain outputs so multiple devices can share
    * the bus.  The MSSP module handles this internally, but setting
    * ODCONCbits for RC4/RC5 ensures correct electrical behaviour.
    */
    ODCONA = 0x0;
    ODCONB = 0x0;
    ODCONC = 0x30;      /* Open-drain on RC4 (SDA) and RC5 (SCL) */
    ODCOND = 0x0;
    ODCONE = 0x0;

    /**
    SLRCONx registers
    */
    SLRCONA = 0xFF;
    SLRCONB = 0xFF;
    SLRCONC = 0xFF;
    SLRCOND = 0xFF;
    SLRCONE = 0x7;

    /**
    INLVLx registers
    */
    INLVLA = 0xFF;
    INLVLB = 0xFF;
    INLVLC = 0xFF;
    INLVLD = 0xFF;
    INLVLE = 0xF;

    /**
    PPS registers
    *
    * --- MSSP1 I2C on RC4 (SDA) / RC5 (SCL) ---
    *
    * PPS Input codes (5-bit: PPPPP where PPP=port, PP=pin):
    *   RA=000xx, RB=010xx, RC=100xx, RD=110xx
    *   RC4 = 10100 = 0x14
    *   RC5 = 10101 = 0x15
    *
    * PPS Output codes (from RxyPPS output function table, DS40001866E):
    *   SCL1 output = 0x18
    *   SDA1 output = 0x19
    *
    * For I2C, both input AND output PPS must be mapped to the same pin.
    */
    SSP1DATPPS = 0x14;  /* RC4 -> SDA1 input  */
    SSP1CLKPPS = 0x15;  /* RC5 -> SCL1 input  */
    RC4PPS     = 0x19;  /* SDA1 output -> RC4 */
    RC5PPS     = 0x18;  /* SCL1 output -> RC5 */

    /**
    APFCON registers
    */

   /**
    IOCx registers 
    */
    IOCAP = 0x0;
    IOCAN = 0x0;
    IOCAF = 0x0;
    IOCBP = 0x0;
    IOCBN = 0x0;
    IOCBF = 0x0;
    IOCCP = 0x0;
    IOCCN = 0x0;
    IOCCF = 0x0;
    IOCEP = 0x0;
    IOCEN = 0x0;
    IOCEF = 0x0;
}
  
void PIN_MANAGER_IOC(void)
{
}
/**
 End of File
*/