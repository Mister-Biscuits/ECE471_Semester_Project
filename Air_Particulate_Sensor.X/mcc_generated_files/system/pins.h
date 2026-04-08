/**
 * Generated Pins header File
 * 
 * @file pins.h
 * 
 * @defgroup  pinsdriver Pins Driver
 * 
 * @brief This is generated driver header for pins. 
 *        This header file provides APIs for all pins selected in the GUI.
 *
 * @version Driver Version  3.0.0
*/
#ifndef PINS_H
#define PINS_H

#include <xc.h>

#define INPUT   1
#define OUTPUT  0

#define HIGH    1
#define LOW     0

#define ANALOG      1
#define DIGITAL     0

#define PULL_UP_ENABLED      1
#define PULL_UP_DISABLED     0

// get/set IO_RB0 aliases
#define SPI_SDO_TRIS                 TRISBbits.TRISB0
#define SPI_SDO_LAT                  LATBbits.LATB0
#define SPI_SDO_PORT                 PORTBbits.RB0
#define SPI_SDO_WPU                  WPUBbits.WPUB0
#define SPI_SDO_OD                   ODCONBbits.ODCB0
#define SPI_SDO_ANS                  ANSELBbits.ANSB0
#define SPI_SDO_SetHigh()            do { LATBbits.LATB0 = 1; } while(0)
#define SPI_SDO_SetLow()             do { LATBbits.LATB0 = 0; } while(0)
#define SPI_SDO_Toggle()             do { LATBbits.LATB0 = ~LATBbits.LATB0; } while(0)
#define SPI_SDO_GetValue()           PORTBbits.RB0
#define SPI_SDO_SetDigitalInput()    do { TRISBbits.TRISB0 = 1; } while(0)
#define SPI_SDO_SetDigitalOutput()   do { TRISBbits.TRISB0 = 0; } while(0)
#define SPI_SDO_SetPullup()          do { WPUBbits.WPUB0 = 1; } while(0)
#define SPI_SDO_ResetPullup()        do { WPUBbits.WPUB0 = 0; } while(0)
#define SPI_SDO_SetPushPull()        do { ODCONBbits.ODCB0 = 0; } while(0)
#define SPI_SDO_SetOpenDrain()       do { ODCONBbits.ODCB0 = 1; } while(0)
#define SPI_SDO_SetAnalogMode()      do { ANSELBbits.ANSB0 = 1; } while(0)
#define SPI_SDO_SetDigitalMode()     do { ANSELBbits.ANSB0 = 0; } while(0)
// get/set IO_RB1 aliases
#define SPI_SCL_TRIS                 TRISBbits.TRISB1
#define SPI_SCL_LAT                  LATBbits.LATB1
#define SPI_SCL_PORT                 PORTBbits.RB1
#define SPI_SCL_WPU                  WPUBbits.WPUB1
#define SPI_SCL_OD                   ODCONBbits.ODCB1
#define SPI_SCL_ANS                  ANSELBbits.ANSB1
#define SPI_SCL_SetHigh()            do { LATBbits.LATB1 = 1; } while(0)
#define SPI_SCL_SetLow()             do { LATBbits.LATB1 = 0; } while(0)
#define SPI_SCL_Toggle()             do { LATBbits.LATB1 = ~LATBbits.LATB1; } while(0)
#define SPI_SCL_GetValue()           PORTBbits.RB1
#define SPI_SCL_SetDigitalInput()    do { TRISBbits.TRISB1 = 1; } while(0)
#define SPI_SCL_SetDigitalOutput()   do { TRISBbits.TRISB1 = 0; } while(0)
#define SPI_SCL_SetPullup()          do { WPUBbits.WPUB1 = 1; } while(0)
#define SPI_SCL_ResetPullup()        do { WPUBbits.WPUB1 = 0; } while(0)
#define SPI_SCL_SetPushPull()        do { ODCONBbits.ODCB1 = 0; } while(0)
#define SPI_SCL_SetOpenDrain()       do { ODCONBbits.ODCB1 = 1; } while(0)
#define SPI_SCL_SetAnalogMode()      do { ANSELBbits.ANSB1 = 1; } while(0)
#define SPI_SCL_SetDigitalMode()     do { ANSELBbits.ANSB1 = 0; } while(0)
// get/set IO_RC4 aliases
#define I2C_SCL_TRIS                 TRISCbits.TRISC4
#define I2C_SCL_LAT                  LATCbits.LATC4
#define I2C_SCL_PORT                 PORTCbits.RC4
#define I2C_SCL_WPU                  WPUCbits.WPUC4
#define I2C_SCL_OD                   ODCONCbits.ODCC4
#define I2C_SCL_ANS                  ANSELCbits.ANSC4
#define I2C_SCL_SetHigh()            do { LATCbits.LATC4 = 1; } while(0)
#define I2C_SCL_SetLow()             do { LATCbits.LATC4 = 0; } while(0)
#define I2C_SCL_Toggle()             do { LATCbits.LATC4 = ~LATCbits.LATC4; } while(0)
#define I2C_SCL_GetValue()           PORTCbits.RC4
#define I2C_SCL_SetDigitalInput()    do { TRISCbits.TRISC4 = 1; } while(0)
#define I2C_SCL_SetDigitalOutput()   do { TRISCbits.TRISC4 = 0; } while(0)
#define I2C_SCL_SetPullup()          do { WPUCbits.WPUC4 = 1; } while(0)
#define I2C_SCL_ResetPullup()        do { WPUCbits.WPUC4 = 0; } while(0)
#define I2C_SCL_SetPushPull()        do { ODCONCbits.ODCC4 = 0; } while(0)
#define I2C_SCL_SetOpenDrain()       do { ODCONCbits.ODCC4 = 1; } while(0)
#define I2C_SCL_SetAnalogMode()      do { ANSELCbits.ANSC4 = 1; } while(0)
#define I2C_SCL_SetDigitalMode()     do { ANSELCbits.ANSC4 = 0; } while(0)
// get/set IO_RC5 aliases
#define I2C_SDA_TRIS                 TRISCbits.TRISC5
#define I2C_SDA_LAT                  LATCbits.LATC5
#define I2C_SDA_PORT                 PORTCbits.RC5
#define I2C_SDA_WPU                  WPUCbits.WPUC5
#define I2C_SDA_OD                   ODCONCbits.ODCC5
#define I2C_SDA_ANS                  ANSELCbits.ANSC5
#define I2C_SDA_SetHigh()            do { LATCbits.LATC5 = 1; } while(0)
#define I2C_SDA_SetLow()             do { LATCbits.LATC5 = 0; } while(0)
#define I2C_SDA_Toggle()             do { LATCbits.LATC5 = ~LATCbits.LATC5; } while(0)
#define I2C_SDA_GetValue()           PORTCbits.RC5
#define I2C_SDA_SetDigitalInput()    do { TRISCbits.TRISC5 = 1; } while(0)
#define I2C_SDA_SetDigitalOutput()   do { TRISCbits.TRISC5 = 0; } while(0)
#define I2C_SDA_SetPullup()          do { WPUCbits.WPUC5 = 1; } while(0)
#define I2C_SDA_ResetPullup()        do { WPUCbits.WPUC5 = 0; } while(0)
#define I2C_SDA_SetPushPull()        do { ODCONCbits.ODCC5 = 0; } while(0)
#define I2C_SDA_SetOpenDrain()       do { ODCONCbits.ODCC5 = 1; } while(0)
#define I2C_SDA_SetAnalogMode()      do { ANSELCbits.ANSC5 = 1; } while(0)
#define I2C_SDA_SetDigitalMode()     do { ANSELCbits.ANSC5 = 0; } while(0)
// get/set IO_RC7 aliases
#define SPI_CS_TRIS                 TRISCbits.TRISC7
#define SPI_CS_LAT                  LATCbits.LATC7
#define SPI_CS_PORT                 PORTCbits.RC7
#define SPI_CS_WPU                  WPUCbits.WPUC7
#define SPI_CS_OD                   ODCONCbits.ODCC7
#define SPI_CS_ANS                  ANSELCbits.ANSC7
#define SPI_CS_SetHigh()            do { LATCbits.LATC7 = 1; } while(0)
#define SPI_CS_SetLow()             do { LATCbits.LATC7 = 0; } while(0)
#define SPI_CS_Toggle()             do { LATCbits.LATC7 = ~LATCbits.LATC7; } while(0)
#define SPI_CS_GetValue()           PORTCbits.RC7
#define SPI_CS_SetDigitalInput()    do { TRISCbits.TRISC7 = 1; } while(0)
#define SPI_CS_SetDigitalOutput()   do { TRISCbits.TRISC7 = 0; } while(0)
#define SPI_CS_SetPullup()          do { WPUCbits.WPUC7 = 1; } while(0)
#define SPI_CS_ResetPullup()        do { WPUCbits.WPUC7 = 0; } while(0)
#define SPI_CS_SetPushPull()        do { ODCONCbits.ODCC7 = 0; } while(0)
#define SPI_CS_SetOpenDrain()       do { ODCONCbits.ODCC7 = 1; } while(0)
#define SPI_CS_SetAnalogMode()      do { ANSELCbits.ANSC7 = 1; } while(0)
#define SPI_CS_SetDigitalMode()     do { ANSELCbits.ANSC7 = 0; } while(0)
/**
 * @ingroup  pinsdriver
 * @brief GPIO and peripheral I/O initialization
 * @param none
 * @return none
 */
void PIN_MANAGER_Initialize (void);

/**
 * @ingroup  pinsdriver
 * @brief Interrupt on Change Handling routine
 * @param none
 * @return none
 */
void PIN_MANAGER_IOC(void);


#endif // PINS_H
/**
 End of File
*/