/*
 * File:   Main.c
 * Author: Skyler Choplin
 *
 * Created on March 18, 2026, 3:11 AM
 */

#include "mcc_generated_files/system/system.h"
#include "oled.h"
#include "sgp30_sensor.h"
#include "I2C.h"
#include <stdio.h>

void init_heartbeat_led(void){
    TRISDbits.TRISD0 = 0;
    ANSELDbits.ANSD0 = 0;
    LATDbits.LATD0 = 1;
}

int main(void){
    SYSTEM_Initialize();
    
    init_heartbeat_led();
    
    /* --- Initialise hardware I2C (MSSP1) on RC4(SDA) / RC5(SCL) --- *
     * PPS and pin configuration for I2C is done in PIN_MANAGER_Initialize().
     * BRG = (FOSC / (4 * FSCL)) - 1 = (32 MHz / (4 * 400 kHz)) - 1 = 19
     */
    I2C_HW_Init(I2C_HW_BRG(32000000UL, 400000UL));
    
    //--- Initialize OLED (bit-bang SPI on RB0/RB1/RC7) --- 
    __delay_ms(500);        //let OLED power rail stabilize
    oled_init();
    
    
    sgp30_init();
    
    __delay_ms(2000); //give sensor time to set up
    if (!sgp30_self_test()) {
        oled_display1("SGP30 SELF-TEST");
        oled_display2("FAILED!");
        // sensor not responding - blink fast error on heartbeat LED
        while(1) {
            LATDbits.LATD0 ^= 1;
            __delay_ms(100);
        }
    }
    
    
    oled_display1("SGP30 OK");
    oled_display2("Warming up...");
    
    //Main loop: read SGP30 every ~1 s and display on OLED
    sgp30_data_t air;
    char line1[17];
    char line2[17];
    
    while(1){
        LATDbits.LATD0 = 1;
        
        if (sgp30_measure(&air) && air.valid) {
            sprintf(line1, "CO2: %u ppm", air.co2eq);
            sprintf(line2, "TVOC: %u ppb", air.tvoc);
            oled_display1(line1);
            oled_display2(line2);
        }
        
        __delay_ms(500);
        LATDbits.LATD0 = 0;
        __delay_ms(500);
    }
    return 1;
}