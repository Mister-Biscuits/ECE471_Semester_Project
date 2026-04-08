/**
 * Generated Driver File
 * 
 * @file pins.c
 * 
 * MODIFIED: PPS for MSSP1 I2C on RC4(SDA)/RC5(SCL),
 *           open-drain + WPU on I2C pins,
 *           slew rate limiting OFF on I2C pins for cleaner edges.
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
     * RB0,RB1 = output (OLED bit-bang SPI)
     * RC4,RC5 = input  (I2C - MSSP requires TRIS=1)
     * RC7     = output (OLED CS)
     */
    TRISA = 0xFF;
    TRISB = 0xFC;       /* RB0,RB1 output */
    TRISC = 0x3F;       /* RC7 output; RC4,RC5 input */
    TRISD = 0xFF;
    TRISE = 0xF;

    /**
     ANSELx registers  (0 = digital)
     * RC4,RC5 = digital for I2C
     * RC7     = digital for CS
     * RB0,RB1 = digital for SPI
     */
    ANSELA = 0xFF;
    ANSELB = 0xFC;
    ANSELC = 0x0F;      /* RC4,RC5,RC6,RC7 digital */
    ANSELD = 0xFF;
    ANSELE = 0x7;

    /**
     WPUx registers - weak pull-ups on I2C lines
     */
    WPUA = 0x0;
    WPUB = 0x0;
    WPUC = 0x30;        /* WPU on RC4(SDA) and RC5(SCL) */
    WPUD = 0x0;
    WPUE = 0x0;
  
    /**
     ODx registers - open-drain on I2C lines
     */
    ODCONA = 0x0;
    ODCONB = 0x0;
    ODCONC = 0x30;      /* Open-drain RC4,RC5 */
    ODCOND = 0x0;
    ODCONE = 0x0;

    /**
     SLRCONx registers
     * Disable slew rate limiting on RC4,RC5 for cleaner I2C edges.
     * SLRCON bit: 1 = limited slew rate, 0 = unlimited.
     * 0xFF with bits 4,5 cleared = 0xCF
     */
    SLRCONA = 0xFF;
    SLRCONB = 0xFF;
    SLRCONC = 0xCF;     /* Faster edges on RC4,RC5 */
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
     PPS registers - MSSP1 I2C on RC4(SDA) / RC5(SCL)
     *
     * Input:  RC4 = 0x14, RC5 = 0x15
     * Output: SCL1 = 0x18, SDA1 = 0x19
     */
    SSP1DATPPS = 0x14;  /* RC4 -> SDA1 input  */
    SSP1CLKPPS = 0x15;  /* RC5 -> SCL1 input  */
    RC4PPS     = 0x19;  /* SDA1 output -> RC4 */
    RC5PPS     = 0x18;  /* SCL1 output -> RC5 */

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