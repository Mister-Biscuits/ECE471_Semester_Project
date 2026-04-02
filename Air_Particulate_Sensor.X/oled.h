/* 
 * File:   oled.h
 * Author: skyler
 *
 * Created on April 1, 2026, 10:59 PM
 */

#ifndef OLED_H
#define	OLED_H

#ifdef	__cplusplus
extern "C" {
#endif

#include <xc.h>
#include <stdint.h>
#include <string.h>

void oled_init(void);
void oled_clear(void);
void oled_set_cursor(uint8_t line, uint8_t col);
void oled_print(const char *str);
void oled_display1(const char *str);
void oled_display2(const char *str);


#endif	/* OLED_H */

