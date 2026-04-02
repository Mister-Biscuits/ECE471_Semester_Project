/*
 * File:   Main.c
 * Author: skyler
 *
 * Created on March 18, 2026, 3:11 AM
 */

#include "mcc_generated_files/system/system.h"
#include "oled.h"

void init_heartbeat_led(){
    //Set output
    TRISDbits.TRISD0 = 0;
    //Set to 0
    //PORTDbits.RD0 = 1; //1 for debugging
    
    ANSELDbits.ANSD0 = 0;
    LATDbits.LATD0 = 1;
}



int main(void){
    SYSTEM_Initialize();
    
    init_heartbeat_led();
    
    oled_init();
    //oled_display1("ECE471 Air Proj");
    //oled_display2("OLED READY");
    while(1){
        __delay_ms(300);
        
        LATDbits.LATD0 = 1;
        __delay_ms(300);
        
        LATDbits.LATD0 = 0;
    }
    return 1;
}

/*
void init_heartbeat_led(){
    //Set output
    TRISCbits.TRISC3 = 1;
    //Set to 0
    PORTCbits.RC3 = 0;
}

void main(void) {
    init_heartbeat_led();
    
    //Heartbeat to see the pic is working
    while(1){
        __delay_ms(3);
        PORTCbits.RC3 = 1;
        __delay_ms(3);
        PORTCbits.RC3 = 0;
    }
    return;
}
 * // Enable the Global Interrupts 
    //INTERRUPT_GlobalInterruptEnable(); 
    
    // Disable the Global Interrupts 
    //INTERRUPT_GlobalInterruptDisable(); 

    // Enable the Peripheral Interrupts 
    //INTERRUPT_PeripheralInterruptEnable(); 

    // Disable the Peripheral Interrupts 
    //INTERRUPT_PeripheralInterruptDisable(); 
*/