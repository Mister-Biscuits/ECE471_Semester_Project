#include "oled.h"
#include "mcc_generated_files/system/clock.h"
//#include "mcc_generated_files/spi/spi_interface.h"
#include "mcc_generated_files/spi/mssp2.h"

#define OLED_CS_HIGH() LATCbits.LATC7 = 1
#define OLED_CS_LOW() LATCbits.LATC7 = 0

#define oled_cmd(cmd) oled_send (0, cmd)
#define oled_data(chr) oled_send(1, (uint8_t)(chr))

/*
 * SERIAL protocol for sending information to the OLED Model SOC1602A
 * Per Transfer: CS goes low, RS bit, RW bit (always 0), 8 data bits, CS high
 */

void oled_send(uint8_t rs, uint8_t data){
    OLED_CS_LOW();
    __delay_us(2);
    
    SPI2_ByteExchange(rs & 0x01);
    SPI2_ByteExchange(data);
    
    __delay_us(2);
    OLED_CS_LOW();
    __delay_us(50);
}

/*Set up OLED at the start of the program*/
void oled_init(){
    //Tell display sending data
    OLED_CS_HIGH();
    __delay_ms(1000); //set for a second for power stabilization
    
    oled_cmd(0x38); //Set 8 bit, 2 line, font table 0 (english)    
    oled_cmd(0x08); // Turn display off    
    oled_cmd(0x01); //Clear display
       
    __delay_ms(2000); //Stabilization/waiting
    
    oled_cmd(0x06); //Set Entry mode
    oled_cmd(0x02); //Move cursor to home position
    oled_cmd(0x0c); //Turn display on
    
    OLED_CS_LOW();
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