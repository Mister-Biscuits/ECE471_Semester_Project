/*
 * File:   Main.c
 * Author: skyler
 *
 * Created on March 18, 2026, 3:11 AM
 */

#include "mcc_generated_files/system/system.h"
#include "oled.h"
#include "sgp30_sensor.h"
#include "I2C.h"
#include <stdio.h>

/* BRG values (compile-time constants, no 32-bit math on device) */
#define BRG_400K  I2C_HW_BRG(32000000UL, 400000UL)  /* = 19 */
#define BRG_100K  I2C_HW_BRG(32000000UL, 100000UL)  /* = 79 */
#define BRG_10K   I2C_HW_BRG(32000000UL, 10000UL)

void init_heartbeat_led(void){
    TRISDbits.TRISD0 = 0;
    ANSELDbits.ANSD0 = 0;
    LATDbits.LATD0 = 1;
}

/* Blink an error code on the heartbeat LED:
 * 'count' fast blinks, then a long pause. Repeats forever. */
static void blink_error(uint8_t count)
{
    while (1) {
        for (uint8_t i = 0u; i < count; i++) {
            LATDbits.LATD0 = 1;
            __delay_ms(100);
            LATDbits.LATD0 = 0;
            __delay_ms(100);
        }
        __delay_ms(800);
    }
}

/* Quick I2C probe: try to address the SGP30 and see if it ACKs.
 * Returns the raw I2C_Status so we can display it. */
static I2C_Status sgp30_probe(void)
{
    I2C_Status s;
    s = I2C_HW_Start();
    if (s != I2C_OK) { I2C_HW_Stop(); return s; }

    /* Send address byte with write bit */
    s = I2C_HW_SendByte((uint8_t)(((unsigned)SGP30_I2C_ADDR << 1u) & 0xFEu));
    I2C_HW_Stop();
    return s;
}

int main(void){
    SYSTEM_Initialize();
    
    init_heartbeat_led();
    
    /* --- OLED init (bit-bang SPI on RB0/RB1/RC7) --- */
    __delay_ms(500);
    oled_init();
    
    oled_display1("I2C init...");
    oled_display2("");
    
    /* --- Hardware I2C init --- */
    /* Try 100 kHz first for maximum noise immunity on noisy lines.
     * The SGP30 supports up to 400 kHz, but 100 kHz is more forgiving
     * of long wires, missing/weak pull-ups, and capacitive loading. */
    I2C_HW_Init(BRG_100K);
    __delay_ms(10);
    
    /* --- Bus recovery in case slave is holding SDA low from a
     *     previous incomplete transaction (e.g. after a PIC reset
     *     mid-transfer). --- */
    //I2C_HW_BusRecovery(BRG_100K);
    //__delay_ms(10);
    
    /* --- Probe: check if SGP30 ACKs its address --- */
    I2C_Status probe_result = sgp30_probe();
    
    if (probe_result != I2C_OK) {
        char line2[17];
        /* Show the specific error code:
         * 0=OK, 1=NACK, 2=BUS_COLL, 3=TIMEOUT */
        sprintf(line2, "Err: %u", (unsigned)probe_result);
        oled_display1("SGP30 no ACK!");
        oled_display2(line2);
        blink_error(2);  /* 2 blinks = address NACK / bus error */
    }
    
    oled_display1("SGP30 found!");
    oled_display2("Self-test...");
    __delay_ms(500);
    
    /* --- Self-test BEFORE Init_air_quality ---
     * The SGP30 datasheet says Measure_test must NOT be called after
     * Init_air_quality has been issued.  It should only be used for
     * production test, before the sensor enters measurement mode.
     * After self-test the sensor goes to sleep, so we MUST call
     * sgp30_init() afterwards to start the air quality algorithm.
     */
    bool test_ok = sgp30_self_test();
    
    if (!test_ok) {
        oled_display1("Self-test FAIL");
        oled_display2("Continuing...");
        __delay_ms(2000);
        /* Don't halt -- the sensor may still work for measurements.
         * Self-test failure on noisy lines could be a CRC mismatch
         * rather than a real sensor defect. */
    } else {
        oled_display1("Self-test PASS");
        oled_display2("");
        __delay_ms(1000);
    }
    
    /* --- Now issue Init_air_quality (required before measurements) --- */
    sgp30_init();
    
    oled_display1("Warming up...");
    oled_display2("15s init period");
    
    /* Main loop: read SGP30 every ~1 s and display on OLED */
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
        } else {
            oled_display1("Read error");
            oled_display2("Retrying...");
        }
        
        __delay_ms(500);
        LATDbits.LATD0 = 0;
        __delay_ms(500);
    }
    return 1;
}
