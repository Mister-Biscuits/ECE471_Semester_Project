#include "oled.h"
#include "mcc_generated_files/system/clock.h"

#define OLED_CS_HIGH() LATCbits.LATC7 = 1
#define OLED_CS_LOW() LATCbits.LATC7 = 0

#define oled_cmd(cmd) oled_send (0, cmd)
#define oled_data(chr) oled_send(1, (uint8_t)(chr))

/*
 * SERIAL protocol for sending information to the OLED Model SOC1602A
 * Per Transfer: CS goes low, RS bit, RW bit (always 0), 8 data bits, CS high
 */

// Bitbang pins
#define SCL_HIGH()  LATBbits.LATB1 = 1
#define SCL_LOW()   LATBbits.LATB1 = 0
#define SDI_HIGH()  LATBbits.LATB0 = 1
#define SDI_LOW()   LATBbits.LATB0 = 0
#define CS_HIGH()   LATCbits.LATC7 = 1
#define CS_LOW()    LATCbits.LATC7 = 0

void oled_send_bit(uint8_t bit) {
    if (bit)
        SDI_HIGH();
    else
        SDI_LOW();
    __delay_us(1);
    SCL_HIGH();
    __delay_us(1);
    SCL_LOW();
    __delay_us(1);
}

/*Currently Bitbanged version of SPI*/
void oled_send(uint8_t rs, uint8_t data) {
    CS_LOW();
    __delay_us(1);
    
    // Send RS (1 bit)
    oled_send_bit(rs & 0x01);
    // Send RW = 0 always (1 bit)
    oled_send_bit(0);
    // Send data byte MSB first (8 bits)
    for (int i = 7; i >= 0; i--) {
        oled_send_bit((data >> i) & 0x01);
    }
    
    __delay_us(1);
    CS_HIGH();
    __delay_us(100);
}

void oled_init(void) {
   OLED_CS_HIGH();
    __delay_ms(100);
    
    oled_cmd(0x38);         // Function set: 8-bit, 2-line, font 0
    __delay_ms(10);
    oled_cmd(0x08);         // Display OFF
    __delay_ms(10);
    oled_cmd(0x01);         // Clear display
    __delay_ms(20);          // Clear needs full 2ms
    oled_cmd(0x06);         // Entry mode: increment, no shift
    __delay_ms(10);
    oled_cmd(0x0C);
    __delay_ms(1);
    oled_cmd(0x02);         // Return home
    __delay_ms(2);
}

/*Clear the display*/
void oled_clear(){
    oled_cmd(0x01);
    __delay_ms(2);
}

/*Returns cursor to the beginning of whichever line it is on*/
void oled_set_cursor(uint8_t line, uint8_t col){
    uint8_t addr = (line == 0) ? 0x00 : 0x40;
    oled_cmd(0x80 | (addr + (col & 0x0F)));
    __delay_us(50);
}

/*Prints a string on the current line up to 16 characters long*/
void oled_print(const char *str){
    uint8_t count = 0;
    while (*str && count < 16){
        oled_data((uint8_t)*str++);
        __delay_us(50);
        count++;
    }
}

/*Writes to the first display line on the OLED*/
void oled_display1(const char *str){
    //Resets to home position
    oled_set_cursor(0,0);
    
    uint8_t len = (uint8_t)strlen(str);
    
    for(int i = 0; i < 16; i++){
        oled_data((i < len) ? (uint8_t)str[i] : ' ');
        __delay_us(50);
    }
}

/*Writes to second display line on the OLED*/
void oled_display2(const char *str){
    //Resets to home position
    oled_set_cursor(1,0);
    
    uint8_t len = (uint8_t)strlen(str);
    
    for(int i = 0; i < 16; i++){
        oled_data((i < len) ? (uint8_t)str[i] : ' ');
        __delay_us(50);
    }
}