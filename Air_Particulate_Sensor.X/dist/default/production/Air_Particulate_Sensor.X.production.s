subtitle "Microchip MPLAB XC8 C Compiler v3.10 (Free license) build 20250813170317 Og1 "

pagewidth 120

	opt flic

	processor	16LF15375
include "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc\16lf15375.cgen.inc"
getbyte	macro	val,pos
	(((val) >> (8 * pos)) and 0xff)
endm
byte0	macro	val
	(getbyte(val,0))
endm
byte1	macro	val
	(getbyte(val,1))
endm
byte2	macro	val
	(getbyte(val,2))
endm
byte3	macro	val
	(getbyte(val,3))
endm
byte4	macro	val
	(getbyte(val,4))
endm
byte5	macro	val
	(getbyte(val,5))
endm
byte6	macro	val
	(getbyte(val,6))
endm
byte7	macro	val
	(getbyte(val,7))
endm
getword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffff)
endm
word0	macro	val
	(getword(val,0))
endm
word1	macro	val
	(getword(val,2))
endm
word2	macro	val
	(getword(val,4))
endm
word3	macro	val
	(getword(val,6))
endm
gettword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffff)
endm
tword0	macro	val
	(gettword(val,0))
endm
tword1	macro	val
	(gettword(val,3))
endm
tword2	macro	val
	(gettword(val,6))
endm
getdword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffffff)
endm
dword0	macro	val
	(getdword(val,0))
endm
dword1	macro	val
	(getdword(val,4))
endm
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
pushw	macro
	movwi fsr1++
	endm
popw	macro
	moviw --fsr1
	endm
# 52 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
INDF0 equ 00h ;# 
# 72 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
INDF1 equ 01h ;# 
# 92 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PCL equ 02h ;# 
# 112 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
STATUS equ 03h ;# 
# 175 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
FSR0L equ 04h ;# 
# 195 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
FSR0H equ 05h ;# 
# 219 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
FSR1L equ 06h ;# 
# 239 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
FSR1H equ 07h ;# 
# 259 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
BSR equ 08h ;# 
# 317 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
WREG equ 09h ;# 
# 337 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PCLATH equ 0Ah ;# 
# 357 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
INTCON equ 0Bh ;# 
# 390 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PORTA equ 0Ch ;# 
# 452 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PORTB equ 0Dh ;# 
# 514 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PORTC equ 0Eh ;# 
# 576 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PORTD equ 0Fh ;# 
# 638 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PORTE equ 010h ;# 
# 676 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TRISA equ 012h ;# 
# 738 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TRISB equ 013h ;# 
# 800 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TRISC equ 014h ;# 
# 862 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TRISD equ 015h ;# 
# 924 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TRISE equ 016h ;# 
# 956 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
LATA equ 018h ;# 
# 1018 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
LATB equ 019h ;# 
# 1080 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
LATC equ 01Ah ;# 
# 1142 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
LATD equ 01Bh ;# 
# 1204 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
LATE equ 01Ch ;# 
# 1236 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ADRES equ 09Bh ;# 
# 1243 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ADRESL equ 09Bh ;# 
# 1313 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ADRESH equ 09Ch ;# 
# 1383 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ADCON0 equ 09Dh ;# 
# 1460 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ADCON1 equ 09Eh ;# 
# 1526 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ADACT equ 09Fh ;# 
# 1578 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RC1REG equ 0119h ;# 
# 1583 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RCREG equ 0119h ;# 
# 1587 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RCREG1 equ 0119h ;# 
# 1632 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TX1REG equ 011Ah ;# 
# 1637 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TXREG1 equ 011Ah ;# 
# 1641 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TXREG equ 011Ah ;# 
# 1686 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SP1BRG equ 011Bh ;# 
# 1691 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SPBRG equ 011Bh ;# 
# 1698 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SP1BRGL equ 011Bh ;# 
# 1703 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SPBRG1 equ 011Bh ;# 
# 1707 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SPBRGL equ 011Bh ;# 
# 1752 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SP1BRGH equ 011Ch ;# 
# 1757 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SPBRGH equ 011Ch ;# 
# 1761 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SPBRGH1 equ 011Ch ;# 
# 1806 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RC1STA equ 011Dh ;# 
# 1811 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RCSTA1 equ 011Dh ;# 
# 1815 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RCSTA equ 011Dh ;# 
# 1986 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TX1STA equ 011Eh ;# 
# 1991 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TXSTA1 equ 011Eh ;# 
# 1995 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TXSTA equ 011Eh ;# 
# 2166 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
BAUD1CON equ 011Fh ;# 
# 2171 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
BAUDCON1 equ 011Fh ;# 
# 2175 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
BAUDCTL1 equ 011Fh ;# 
# 2179 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
BAUDCON equ 011Fh ;# 
# 2183 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
BAUDCTL equ 011Fh ;# 
# 2412 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP1BUF equ 018Ch ;# 
# 2432 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP1ADD equ 018Dh ;# 
# 2552 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP1MSK equ 018Eh ;# 
# 2622 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP1STAT equ 018Fh ;# 
# 2986 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP1CON1 equ 0190h ;# 
# 3106 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP1CON2 equ 0191h ;# 
# 3293 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP1CON3 equ 0192h ;# 
# 3355 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP2BUF equ 0196h ;# 
# 3375 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP2ADD equ 0197h ;# 
# 3495 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP2MSK equ 0198h ;# 
# 3565 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP2STAT equ 0199h ;# 
# 3929 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP2CON1 equ 019Ah ;# 
# 4049 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP2CON2 equ 019Bh ;# 
# 4236 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP2CON3 equ 019Ch ;# 
# 4298 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TMR1 equ 020Ch ;# 
# 4305 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TMR1L equ 020Ch ;# 
# 4475 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TMR1H equ 020Dh ;# 
# 4595 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T1CON equ 020Eh ;# 
# 4691 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T1GCON equ 020Fh ;# 
# 4696 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PR1 equ 020Fh ;# 
# 4887 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T1GATE equ 0210h ;# 
# 4892 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TMR1GATE equ 0210h ;# 
# 5053 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T1CLK equ 0211h ;# 
# 5058 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TMR1CLK equ 0211h ;# 
# 5195 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T2TMR equ 028Ch ;# 
# 5200 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TMR2 equ 028Ch ;# 
# 5249 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T2PR equ 028Dh ;# 
# 5254 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PR2 equ 028Dh ;# 
# 5303 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T2CON equ 028Eh ;# 
# 5449 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T2HLT equ 028Fh ;# 
# 5577 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T2CLKCON equ 0290h ;# 
# 5657 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T2RST equ 0291h ;# 
# 5737 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CCPR1 equ 030Ch ;# 
# 5744 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CCPR1L equ 030Ch ;# 
# 5764 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CCPR1H equ 030Dh ;# 
# 5784 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CCP1CON equ 030Eh ;# 
# 5902 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CCP1CAP equ 030Fh ;# 
# 5970 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CCPR2 equ 0310h ;# 
# 5977 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CCPR2L equ 0310h ;# 
# 5997 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CCPR2H equ 0311h ;# 
# 6017 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CCP2CON equ 0312h ;# 
# 6135 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CCP2CAP equ 0313h ;# 
# 6203 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM3DC equ 0314h ;# 
# 6210 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM3DCL equ 0314h ;# 
# 6276 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM3DCH equ 0315h ;# 
# 6446 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM3CON equ 0316h ;# 
# 6502 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM4DC equ 0318h ;# 
# 6509 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM4DCL equ 0318h ;# 
# 6575 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM4DCH equ 0319h ;# 
# 6745 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM4CON equ 031Ah ;# 
# 6801 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM5DC equ 031Ch ;# 
# 6808 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM5DCL equ 031Ch ;# 
# 6874 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM5DCH equ 031Dh ;# 
# 7044 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM5CON equ 031Eh ;# 
# 7100 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM6DC equ 038Ch ;# 
# 7107 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM6DCL equ 038Ch ;# 
# 7173 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM6DCH equ 038Dh ;# 
# 7343 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM6CON equ 038Eh ;# 
# 7401 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NCO1ACC equ 058Ch ;# 
# 7408 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NCO1ACCL equ 058Ch ;# 
# 7478 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NCO1ACCH equ 058Dh ;# 
# 7548 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NCO1ACCU equ 058Eh ;# 
# 7596 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NCO1INC equ 058Fh ;# 
# 7603 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NCO1INCL equ 058Fh ;# 
# 7673 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NCO1INCH equ 0590h ;# 
# 7743 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NCO1INCU equ 0591h ;# 
# 7789 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NCO1CON equ 0592h ;# 
# 7829 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NCO1CLK equ 0593h ;# 
# 7901 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TMR0L equ 059Ch ;# 
# 7906 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TMR0 equ 059Ch ;# 
# 8039 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TMR0H equ 059Dh ;# 
# 8044 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PR0 equ 059Dh ;# 
# 8293 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T0CON0 equ 059Eh ;# 
# 8363 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T0CON1 equ 059Fh ;# 
# 8474 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CWG1CLKCON equ 060Ch ;# 
# 8502 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CWG1DAT equ 060Dh ;# 
# 8548 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CWG1DBR equ 060Eh ;# 
# 8652 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CWG1DBF equ 060Fh ;# 
# 8756 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CWG1CON0 equ 0610h ;# 
# 8857 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CWG1CON1 equ 0611h ;# 
# 8935 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CWG1AS0 equ 0612h ;# 
# 9055 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CWG1AS1 equ 0613h ;# 
# 9099 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CWG1STR equ 0614h ;# 
# 9211 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIR0 equ 070Ch ;# 
# 9244 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIR1 equ 070Dh ;# 
# 9283 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIR2 equ 070Eh ;# 
# 9316 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIR3 equ 070Fh ;# 
# 9378 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIR4 equ 0710h ;# 
# 9404 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIR5 equ 0711h ;# 
# 9449 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIR6 equ 0712h ;# 
# 9475 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIR7 equ 0713h ;# 
# 9517 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIE0 equ 0716h ;# 
# 9550 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIE1 equ 0717h ;# 
# 9589 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIE2 equ 0718h ;# 
# 9622 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIE3 equ 0719h ;# 
# 9684 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIE4 equ 071Ah ;# 
# 9710 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIE5 equ 071Bh ;# 
# 9755 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIE6 equ 071Ch ;# 
# 9781 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIE7 equ 071Dh ;# 
# 9823 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PMD0 equ 0796h ;# 
# 9868 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PMD1 equ 0797h ;# 
# 9916 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PMD2 equ 0798h ;# 
# 9961 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PMD3 equ 0799h ;# 
# 10011 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PMD4 equ 079Ah ;# 
# 10056 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PMD5 equ 079Bh ;# 
# 10095 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
WDTCON0 equ 080Ch ;# 
# 10170 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
WDTCON1 equ 080Dh ;# 
# 10264 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
WDTPSL equ 080Eh ;# 
# 10392 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
WDTPSH equ 080Fh ;# 
# 10520 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
WDTTMR equ 0810h ;# 
# 10602 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
BORCON equ 0811h ;# 
# 10629 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PCON0 equ 0813h ;# 
# 10691 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PCON1 equ 0814h ;# 
# 10712 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NVMADR equ 081Ah ;# 
# 10719 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NVMADRL equ 081Ah ;# 
# 10781 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NVMADRH equ 081Bh ;# 
# 10837 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NVMDAT equ 081Ch ;# 
# 10844 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NVMDATL equ 081Ch ;# 
# 10906 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NVMDATH equ 081Dh ;# 
# 10956 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NVMCON1 equ 081Eh ;# 
# 11012 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NVMCON2 equ 081Fh ;# 
# 11032 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CPUDOZE equ 088Ch ;# 
# 11097 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
OSCCON1 equ 088Dh ;# 
# 11167 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
OSCCON2 equ 088Eh ;# 
# 11237 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
OSCCON3 equ 088Fh ;# 
# 11277 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
OSCSTAT equ 0890h ;# 
# 11334 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
OSCEN equ 0891h ;# 
# 11385 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
OSCTUNE equ 0892h ;# 
# 11443 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
OSCFRQ equ 0893h ;# 
# 11483 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLKRCON equ 0895h ;# 
# 11548 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLKRCLK equ 0896h ;# 
# 11594 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
FVRCON equ 090Ch ;# 
# 11670 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
DAC1CON0 equ 090Eh ;# 
# 11771 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
DAC1CON1 equ 090Fh ;# 
# 11823 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ZCDCON equ 091Fh ;# 
# 11869 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CMOUT equ 098Fh ;# 
# 11874 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CMSTAT equ 098Fh ;# 
# 11947 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CM1CON0 equ 0990h ;# 
# 12027 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CM1CON1 equ 0991h ;# 
# 12067 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CM1NCH equ 0992h ;# 
# 12127 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CM1PCH equ 0993h ;# 
# 12187 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CM2CON0 equ 0994h ;# 
# 12267 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CM2CON1 equ 0995h ;# 
# 12307 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CM2NCH equ 0996h ;# 
# 12367 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CM2PCH equ 0997h ;# 
# 12427 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RC2REG equ 0A19h ;# 
# 12432 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RCREG2 equ 0A19h ;# 
# 12465 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TX2REG equ 0A1Ah ;# 
# 12470 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TXREG2 equ 0A1Ah ;# 
# 12503 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SP2BRG equ 0A1Bh ;# 
# 12510 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SP2BRGL equ 0A1Bh ;# 
# 12515 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SPBRG2 equ 0A1Bh ;# 
# 12548 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SP2BRGH equ 0A1Ch ;# 
# 12553 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SPBRGH2 equ 0A1Ch ;# 
# 12586 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RC2STA equ 0A1Dh ;# 
# 12591 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RCSTA2 equ 0A1Dh ;# 
# 12708 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TX2STA equ 0A1Eh ;# 
# 12713 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TXSTA2 equ 0A1Eh ;# 
# 12830 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
BAUD2CON equ 0A1Fh ;# 
# 12835 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
BAUDCON2 equ 0A1Fh ;# 
# 12839 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
BAUDCTL2 equ 0A1Fh ;# 
# 12980 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLCDATA equ 01E0Fh ;# 
# 13018 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC1CON equ 01E10h ;# 
# 13136 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC1POL equ 01E11h ;# 
# 13214 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC1SEL0 equ 01E12h ;# 
# 13318 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC1SEL1 equ 01E13h ;# 
# 13422 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC1SEL2 equ 01E14h ;# 
# 13526 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC1SEL3 equ 01E15h ;# 
# 13630 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC1GLS0 equ 01E16h ;# 
# 13742 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC1GLS1 equ 01E17h ;# 
# 13854 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC1GLS2 equ 01E18h ;# 
# 13966 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC1GLS3 equ 01E19h ;# 
# 14078 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC2CON equ 01E1Ah ;# 
# 14196 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC2POL equ 01E1Bh ;# 
# 14274 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC2SEL0 equ 01E1Ch ;# 
# 14378 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC2SEL1 equ 01E1Dh ;# 
# 14482 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC2SEL2 equ 01E1Eh ;# 
# 14586 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC2SEL3 equ 01E1Fh ;# 
# 14690 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC2GLS0 equ 01E20h ;# 
# 14802 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC2GLS1 equ 01E21h ;# 
# 14914 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC2GLS2 equ 01E22h ;# 
# 15026 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC2GLS3 equ 01E23h ;# 
# 15138 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC3CON equ 01E24h ;# 
# 15256 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC3POL equ 01E25h ;# 
# 15334 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC3SEL0 equ 01E26h ;# 
# 15438 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC3SEL1 equ 01E27h ;# 
# 15542 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC3SEL2 equ 01E28h ;# 
# 15646 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC3SEL3 equ 01E29h ;# 
# 15750 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC3GLS0 equ 01E2Ah ;# 
# 15862 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC3GLS1 equ 01E2Bh ;# 
# 15974 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC3GLS2 equ 01E2Ch ;# 
# 16086 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC3GLS3 equ 01E2Dh ;# 
# 16198 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC4CON equ 01E2Eh ;# 
# 16316 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC4POL equ 01E2Fh ;# 
# 16394 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC4SEL0 equ 01E30h ;# 
# 16498 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC4SEL1 equ 01E31h ;# 
# 16602 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC4SEL2 equ 01E32h ;# 
# 16706 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC4SEL3 equ 01E33h ;# 
# 16810 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC4GLS0 equ 01E34h ;# 
# 16922 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC4GLS1 equ 01E35h ;# 
# 17034 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC4GLS2 equ 01E36h ;# 
# 17146 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC4GLS3 equ 01E37h ;# 
# 17258 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PPSLOCK equ 01E8Fh ;# 
# 17278 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
INTPPS equ 01E90h ;# 
# 17336 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T0CKIPPS equ 01E91h ;# 
# 17394 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T1CKIPPS equ 01E92h ;# 
# 17452 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T1GPPS equ 01E93h ;# 
# 17510 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T2INPPS equ 01E9Ch ;# 
# 17568 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CCP1PPS equ 01EA1h ;# 
# 17626 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CCP2PPS equ 01EA2h ;# 
# 17684 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CWG1PPS equ 01EB1h ;# 
# 17742 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLCIN0PPS equ 01EBBh ;# 
# 17800 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLCIN1PPS equ 01EBCh ;# 
# 17858 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLCIN2PPS equ 01EBDh ;# 
# 17916 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLCIN3PPS equ 01EBEh ;# 
# 17974 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ADACTPPS equ 01EC3h ;# 
# 18032 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP1CLKPPS equ 01EC5h ;# 
# 18090 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP1DATPPS equ 01EC6h ;# 
# 18148 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP1SSPPS equ 01EC7h ;# 
# 18206 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP2CLKPPS equ 01EC8h ;# 
# 18264 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP2DATPPS equ 01EC9h ;# 
# 18322 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP2SSPPS equ 01ECAh ;# 
# 18380 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RX1DTPPS equ 01ECBh ;# 
# 18438 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TX1CKPPS equ 01ECCh ;# 
# 18496 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RX2DTPPS equ 01ECDh ;# 
# 18554 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TX2CKPPS equ 01ECEh ;# 
# 18612 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RA0PPS equ 01F10h ;# 
# 18656 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RA1PPS equ 01F11h ;# 
# 18700 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RA2PPS equ 01F12h ;# 
# 18744 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RA3PPS equ 01F13h ;# 
# 18788 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RA4PPS equ 01F14h ;# 
# 18832 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RA5PPS equ 01F15h ;# 
# 18876 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RA6PPS equ 01F16h ;# 
# 18920 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RA7PPS equ 01F17h ;# 
# 18964 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RB0PPS equ 01F18h ;# 
# 19008 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RB1PPS equ 01F19h ;# 
# 19052 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RB2PPS equ 01F1Ah ;# 
# 19096 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RB3PPS equ 01F1Bh ;# 
# 19140 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RB4PPS equ 01F1Ch ;# 
# 19184 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RB5PPS equ 01F1Dh ;# 
# 19228 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RB6PPS equ 01F1Eh ;# 
# 19272 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RB7PPS equ 01F1Fh ;# 
# 19316 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RC0PPS equ 01F20h ;# 
# 19360 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RC1PPS equ 01F21h ;# 
# 19404 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RC2PPS equ 01F22h ;# 
# 19448 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RC3PPS equ 01F23h ;# 
# 19492 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RC4PPS equ 01F24h ;# 
# 19536 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RC5PPS equ 01F25h ;# 
# 19580 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RC6PPS equ 01F26h ;# 
# 19624 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RC7PPS equ 01F27h ;# 
# 19668 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RD0PPS equ 01F28h ;# 
# 19712 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RD1PPS equ 01F29h ;# 
# 19756 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RD2PPS equ 01F2Ah ;# 
# 19800 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RD3PPS equ 01F2Bh ;# 
# 19844 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RD4PPS equ 01F2Ch ;# 
# 19888 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RD5PPS equ 01F2Dh ;# 
# 19932 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RD6PPS equ 01F2Eh ;# 
# 19976 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RD7PPS equ 01F2Fh ;# 
# 20020 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RE0PPS equ 01F30h ;# 
# 20064 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RE1PPS equ 01F31h ;# 
# 20108 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RE2PPS equ 01F32h ;# 
# 20152 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ANSELA equ 01F38h ;# 
# 20214 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
WPUA equ 01F39h ;# 
# 20276 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ODCONA equ 01F3Ah ;# 
# 20338 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SLRCONA equ 01F3Bh ;# 
# 20400 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
INLVLA equ 01F3Ch ;# 
# 20462 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
IOCAP equ 01F3Dh ;# 
# 20524 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
IOCAN equ 01F3Eh ;# 
# 20586 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
IOCAF equ 01F3Fh ;# 
# 20648 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ANSELB equ 01F43h ;# 
# 20710 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
WPUB equ 01F44h ;# 
# 20772 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ODCONB equ 01F45h ;# 
# 20834 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SLRCONB equ 01F46h ;# 
# 20896 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
INLVLB equ 01F47h ;# 
# 20958 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
IOCBP equ 01F48h ;# 
# 21020 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
IOCBN equ 01F49h ;# 
# 21082 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
IOCBF equ 01F4Ah ;# 
# 21144 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ANSELC equ 01F4Eh ;# 
# 21206 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
WPUC equ 01F4Fh ;# 
# 21268 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ODCONC equ 01F50h ;# 
# 21330 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SLRCONC equ 01F51h ;# 
# 21392 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
INLVLC equ 01F52h ;# 
# 21454 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
IOCCP equ 01F53h ;# 
# 21516 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
IOCCN equ 01F54h ;# 
# 21578 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
IOCCF equ 01F55h ;# 
# 21640 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ANSELD equ 01F59h ;# 
# 21702 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
WPUD equ 01F5Ah ;# 
# 21764 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ODCOND equ 01F5Bh ;# 
# 21826 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SLRCOND equ 01F5Ch ;# 
# 21888 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
INLVLD equ 01F5Dh ;# 
# 21950 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ANSELE equ 01F64h ;# 
# 21982 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
WPUE equ 01F65h ;# 
# 22020 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ODCONE equ 01F66h ;# 
# 22052 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SLRCONE equ 01F67h ;# 
# 22084 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
INLVLE equ 01F68h ;# 
# 22122 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
IOCEP equ 01F69h ;# 
# 22143 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
IOCEN equ 01F6Ah ;# 
# 22164 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
IOCEF equ 01F6Bh ;# 
# 22185 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
STATUS_SHAD equ 01FE4h ;# 
# 22205 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
WREG_SHAD equ 01FE5h ;# 
# 22225 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
BSR_SHAD equ 01FE6h ;# 
# 22245 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PCLATH_SHAD equ 01FE7h ;# 
# 22265 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
FSR0_SHAD equ 01FE8h ;# 
# 22272 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
FSR0L_SHAD equ 01FE8h ;# 
# 22292 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
FSR0H_SHAD equ 01FE9h ;# 
# 22312 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
FSR1L_SHAD equ 01FEAh ;# 
# 22332 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
FSR1H_SHAD equ 01FEBh ;# 
# 22352 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
STKPTR equ 01FEDh ;# 
# 22396 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TOSL equ 01FEEh ;# 
# 22466 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TOSH equ 01FEFh ;# 
# 52 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
INDF0 equ 00h ;# 
# 72 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
INDF1 equ 01h ;# 
# 92 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PCL equ 02h ;# 
# 112 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
STATUS equ 03h ;# 
# 175 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
FSR0L equ 04h ;# 
# 195 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
FSR0H equ 05h ;# 
# 219 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
FSR1L equ 06h ;# 
# 239 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
FSR1H equ 07h ;# 
# 259 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
BSR equ 08h ;# 
# 317 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
WREG equ 09h ;# 
# 337 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PCLATH equ 0Ah ;# 
# 357 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
INTCON equ 0Bh ;# 
# 390 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PORTA equ 0Ch ;# 
# 452 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PORTB equ 0Dh ;# 
# 514 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PORTC equ 0Eh ;# 
# 576 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PORTD equ 0Fh ;# 
# 638 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PORTE equ 010h ;# 
# 676 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TRISA equ 012h ;# 
# 738 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TRISB equ 013h ;# 
# 800 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TRISC equ 014h ;# 
# 862 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TRISD equ 015h ;# 
# 924 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TRISE equ 016h ;# 
# 956 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
LATA equ 018h ;# 
# 1018 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
LATB equ 019h ;# 
# 1080 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
LATC equ 01Ah ;# 
# 1142 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
LATD equ 01Bh ;# 
# 1204 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
LATE equ 01Ch ;# 
# 1236 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ADRES equ 09Bh ;# 
# 1243 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ADRESL equ 09Bh ;# 
# 1313 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ADRESH equ 09Ch ;# 
# 1383 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ADCON0 equ 09Dh ;# 
# 1460 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ADCON1 equ 09Eh ;# 
# 1526 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ADACT equ 09Fh ;# 
# 1578 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RC1REG equ 0119h ;# 
# 1583 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RCREG equ 0119h ;# 
# 1587 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RCREG1 equ 0119h ;# 
# 1632 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TX1REG equ 011Ah ;# 
# 1637 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TXREG1 equ 011Ah ;# 
# 1641 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TXREG equ 011Ah ;# 
# 1686 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SP1BRG equ 011Bh ;# 
# 1691 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SPBRG equ 011Bh ;# 
# 1698 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SP1BRGL equ 011Bh ;# 
# 1703 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SPBRG1 equ 011Bh ;# 
# 1707 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SPBRGL equ 011Bh ;# 
# 1752 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SP1BRGH equ 011Ch ;# 
# 1757 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SPBRGH equ 011Ch ;# 
# 1761 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SPBRGH1 equ 011Ch ;# 
# 1806 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RC1STA equ 011Dh ;# 
# 1811 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RCSTA1 equ 011Dh ;# 
# 1815 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RCSTA equ 011Dh ;# 
# 1986 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TX1STA equ 011Eh ;# 
# 1991 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TXSTA1 equ 011Eh ;# 
# 1995 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TXSTA equ 011Eh ;# 
# 2166 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
BAUD1CON equ 011Fh ;# 
# 2171 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
BAUDCON1 equ 011Fh ;# 
# 2175 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
BAUDCTL1 equ 011Fh ;# 
# 2179 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
BAUDCON equ 011Fh ;# 
# 2183 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
BAUDCTL equ 011Fh ;# 
# 2412 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP1BUF equ 018Ch ;# 
# 2432 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP1ADD equ 018Dh ;# 
# 2552 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP1MSK equ 018Eh ;# 
# 2622 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP1STAT equ 018Fh ;# 
# 2986 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP1CON1 equ 0190h ;# 
# 3106 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP1CON2 equ 0191h ;# 
# 3293 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP1CON3 equ 0192h ;# 
# 3355 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP2BUF equ 0196h ;# 
# 3375 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP2ADD equ 0197h ;# 
# 3495 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP2MSK equ 0198h ;# 
# 3565 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP2STAT equ 0199h ;# 
# 3929 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP2CON1 equ 019Ah ;# 
# 4049 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP2CON2 equ 019Bh ;# 
# 4236 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP2CON3 equ 019Ch ;# 
# 4298 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TMR1 equ 020Ch ;# 
# 4305 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TMR1L equ 020Ch ;# 
# 4475 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TMR1H equ 020Dh ;# 
# 4595 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T1CON equ 020Eh ;# 
# 4691 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T1GCON equ 020Fh ;# 
# 4696 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PR1 equ 020Fh ;# 
# 4887 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T1GATE equ 0210h ;# 
# 4892 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TMR1GATE equ 0210h ;# 
# 5053 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T1CLK equ 0211h ;# 
# 5058 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TMR1CLK equ 0211h ;# 
# 5195 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T2TMR equ 028Ch ;# 
# 5200 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TMR2 equ 028Ch ;# 
# 5249 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T2PR equ 028Dh ;# 
# 5254 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PR2 equ 028Dh ;# 
# 5303 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T2CON equ 028Eh ;# 
# 5449 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T2HLT equ 028Fh ;# 
# 5577 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T2CLKCON equ 0290h ;# 
# 5657 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T2RST equ 0291h ;# 
# 5737 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CCPR1 equ 030Ch ;# 
# 5744 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CCPR1L equ 030Ch ;# 
# 5764 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CCPR1H equ 030Dh ;# 
# 5784 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CCP1CON equ 030Eh ;# 
# 5902 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CCP1CAP equ 030Fh ;# 
# 5970 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CCPR2 equ 0310h ;# 
# 5977 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CCPR2L equ 0310h ;# 
# 5997 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CCPR2H equ 0311h ;# 
# 6017 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CCP2CON equ 0312h ;# 
# 6135 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CCP2CAP equ 0313h ;# 
# 6203 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM3DC equ 0314h ;# 
# 6210 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM3DCL equ 0314h ;# 
# 6276 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM3DCH equ 0315h ;# 
# 6446 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM3CON equ 0316h ;# 
# 6502 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM4DC equ 0318h ;# 
# 6509 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM4DCL equ 0318h ;# 
# 6575 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM4DCH equ 0319h ;# 
# 6745 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM4CON equ 031Ah ;# 
# 6801 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM5DC equ 031Ch ;# 
# 6808 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM5DCL equ 031Ch ;# 
# 6874 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM5DCH equ 031Dh ;# 
# 7044 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM5CON equ 031Eh ;# 
# 7100 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM6DC equ 038Ch ;# 
# 7107 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM6DCL equ 038Ch ;# 
# 7173 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM6DCH equ 038Dh ;# 
# 7343 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM6CON equ 038Eh ;# 
# 7401 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NCO1ACC equ 058Ch ;# 
# 7408 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NCO1ACCL equ 058Ch ;# 
# 7478 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NCO1ACCH equ 058Dh ;# 
# 7548 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NCO1ACCU equ 058Eh ;# 
# 7596 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NCO1INC equ 058Fh ;# 
# 7603 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NCO1INCL equ 058Fh ;# 
# 7673 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NCO1INCH equ 0590h ;# 
# 7743 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NCO1INCU equ 0591h ;# 
# 7789 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NCO1CON equ 0592h ;# 
# 7829 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NCO1CLK equ 0593h ;# 
# 7901 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TMR0L equ 059Ch ;# 
# 7906 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TMR0 equ 059Ch ;# 
# 8039 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TMR0H equ 059Dh ;# 
# 8044 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PR0 equ 059Dh ;# 
# 8293 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T0CON0 equ 059Eh ;# 
# 8363 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T0CON1 equ 059Fh ;# 
# 8474 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CWG1CLKCON equ 060Ch ;# 
# 8502 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CWG1DAT equ 060Dh ;# 
# 8548 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CWG1DBR equ 060Eh ;# 
# 8652 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CWG1DBF equ 060Fh ;# 
# 8756 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CWG1CON0 equ 0610h ;# 
# 8857 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CWG1CON1 equ 0611h ;# 
# 8935 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CWG1AS0 equ 0612h ;# 
# 9055 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CWG1AS1 equ 0613h ;# 
# 9099 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CWG1STR equ 0614h ;# 
# 9211 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIR0 equ 070Ch ;# 
# 9244 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIR1 equ 070Dh ;# 
# 9283 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIR2 equ 070Eh ;# 
# 9316 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIR3 equ 070Fh ;# 
# 9378 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIR4 equ 0710h ;# 
# 9404 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIR5 equ 0711h ;# 
# 9449 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIR6 equ 0712h ;# 
# 9475 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIR7 equ 0713h ;# 
# 9517 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIE0 equ 0716h ;# 
# 9550 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIE1 equ 0717h ;# 
# 9589 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIE2 equ 0718h ;# 
# 9622 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIE3 equ 0719h ;# 
# 9684 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIE4 equ 071Ah ;# 
# 9710 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIE5 equ 071Bh ;# 
# 9755 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIE6 equ 071Ch ;# 
# 9781 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIE7 equ 071Dh ;# 
# 9823 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PMD0 equ 0796h ;# 
# 9868 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PMD1 equ 0797h ;# 
# 9916 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PMD2 equ 0798h ;# 
# 9961 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PMD3 equ 0799h ;# 
# 10011 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PMD4 equ 079Ah ;# 
# 10056 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PMD5 equ 079Bh ;# 
# 10095 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
WDTCON0 equ 080Ch ;# 
# 10170 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
WDTCON1 equ 080Dh ;# 
# 10264 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
WDTPSL equ 080Eh ;# 
# 10392 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
WDTPSH equ 080Fh ;# 
# 10520 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
WDTTMR equ 0810h ;# 
# 10602 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
BORCON equ 0811h ;# 
# 10629 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PCON0 equ 0813h ;# 
# 10691 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PCON1 equ 0814h ;# 
# 10712 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NVMADR equ 081Ah ;# 
# 10719 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NVMADRL equ 081Ah ;# 
# 10781 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NVMADRH equ 081Bh ;# 
# 10837 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NVMDAT equ 081Ch ;# 
# 10844 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NVMDATL equ 081Ch ;# 
# 10906 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NVMDATH equ 081Dh ;# 
# 10956 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NVMCON1 equ 081Eh ;# 
# 11012 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NVMCON2 equ 081Fh ;# 
# 11032 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CPUDOZE equ 088Ch ;# 
# 11097 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
OSCCON1 equ 088Dh ;# 
# 11167 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
OSCCON2 equ 088Eh ;# 
# 11237 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
OSCCON3 equ 088Fh ;# 
# 11277 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
OSCSTAT equ 0890h ;# 
# 11334 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
OSCEN equ 0891h ;# 
# 11385 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
OSCTUNE equ 0892h ;# 
# 11443 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
OSCFRQ equ 0893h ;# 
# 11483 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLKRCON equ 0895h ;# 
# 11548 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLKRCLK equ 0896h ;# 
# 11594 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
FVRCON equ 090Ch ;# 
# 11670 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
DAC1CON0 equ 090Eh ;# 
# 11771 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
DAC1CON1 equ 090Fh ;# 
# 11823 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ZCDCON equ 091Fh ;# 
# 11869 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CMOUT equ 098Fh ;# 
# 11874 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CMSTAT equ 098Fh ;# 
# 11947 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CM1CON0 equ 0990h ;# 
# 12027 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CM1CON1 equ 0991h ;# 
# 12067 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CM1NCH equ 0992h ;# 
# 12127 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CM1PCH equ 0993h ;# 
# 12187 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CM2CON0 equ 0994h ;# 
# 12267 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CM2CON1 equ 0995h ;# 
# 12307 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CM2NCH equ 0996h ;# 
# 12367 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CM2PCH equ 0997h ;# 
# 12427 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RC2REG equ 0A19h ;# 
# 12432 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RCREG2 equ 0A19h ;# 
# 12465 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TX2REG equ 0A1Ah ;# 
# 12470 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TXREG2 equ 0A1Ah ;# 
# 12503 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SP2BRG equ 0A1Bh ;# 
# 12510 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SP2BRGL equ 0A1Bh ;# 
# 12515 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SPBRG2 equ 0A1Bh ;# 
# 12548 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SP2BRGH equ 0A1Ch ;# 
# 12553 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SPBRGH2 equ 0A1Ch ;# 
# 12586 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RC2STA equ 0A1Dh ;# 
# 12591 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RCSTA2 equ 0A1Dh ;# 
# 12708 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TX2STA equ 0A1Eh ;# 
# 12713 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TXSTA2 equ 0A1Eh ;# 
# 12830 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
BAUD2CON equ 0A1Fh ;# 
# 12835 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
BAUDCON2 equ 0A1Fh ;# 
# 12839 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
BAUDCTL2 equ 0A1Fh ;# 
# 12980 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLCDATA equ 01E0Fh ;# 
# 13018 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC1CON equ 01E10h ;# 
# 13136 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC1POL equ 01E11h ;# 
# 13214 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC1SEL0 equ 01E12h ;# 
# 13318 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC1SEL1 equ 01E13h ;# 
# 13422 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC1SEL2 equ 01E14h ;# 
# 13526 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC1SEL3 equ 01E15h ;# 
# 13630 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC1GLS0 equ 01E16h ;# 
# 13742 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC1GLS1 equ 01E17h ;# 
# 13854 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC1GLS2 equ 01E18h ;# 
# 13966 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC1GLS3 equ 01E19h ;# 
# 14078 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC2CON equ 01E1Ah ;# 
# 14196 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC2POL equ 01E1Bh ;# 
# 14274 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC2SEL0 equ 01E1Ch ;# 
# 14378 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC2SEL1 equ 01E1Dh ;# 
# 14482 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC2SEL2 equ 01E1Eh ;# 
# 14586 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC2SEL3 equ 01E1Fh ;# 
# 14690 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC2GLS0 equ 01E20h ;# 
# 14802 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC2GLS1 equ 01E21h ;# 
# 14914 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC2GLS2 equ 01E22h ;# 
# 15026 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC2GLS3 equ 01E23h ;# 
# 15138 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC3CON equ 01E24h ;# 
# 15256 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC3POL equ 01E25h ;# 
# 15334 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC3SEL0 equ 01E26h ;# 
# 15438 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC3SEL1 equ 01E27h ;# 
# 15542 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC3SEL2 equ 01E28h ;# 
# 15646 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC3SEL3 equ 01E29h ;# 
# 15750 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC3GLS0 equ 01E2Ah ;# 
# 15862 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC3GLS1 equ 01E2Bh ;# 
# 15974 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC3GLS2 equ 01E2Ch ;# 
# 16086 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC3GLS3 equ 01E2Dh ;# 
# 16198 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC4CON equ 01E2Eh ;# 
# 16316 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC4POL equ 01E2Fh ;# 
# 16394 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC4SEL0 equ 01E30h ;# 
# 16498 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC4SEL1 equ 01E31h ;# 
# 16602 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC4SEL2 equ 01E32h ;# 
# 16706 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC4SEL3 equ 01E33h ;# 
# 16810 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC4GLS0 equ 01E34h ;# 
# 16922 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC4GLS1 equ 01E35h ;# 
# 17034 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC4GLS2 equ 01E36h ;# 
# 17146 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC4GLS3 equ 01E37h ;# 
# 17258 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PPSLOCK equ 01E8Fh ;# 
# 17278 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
INTPPS equ 01E90h ;# 
# 17336 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T0CKIPPS equ 01E91h ;# 
# 17394 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T1CKIPPS equ 01E92h ;# 
# 17452 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T1GPPS equ 01E93h ;# 
# 17510 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T2INPPS equ 01E9Ch ;# 
# 17568 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CCP1PPS equ 01EA1h ;# 
# 17626 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CCP2PPS equ 01EA2h ;# 
# 17684 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CWG1PPS equ 01EB1h ;# 
# 17742 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLCIN0PPS equ 01EBBh ;# 
# 17800 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLCIN1PPS equ 01EBCh ;# 
# 17858 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLCIN2PPS equ 01EBDh ;# 
# 17916 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLCIN3PPS equ 01EBEh ;# 
# 17974 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ADACTPPS equ 01EC3h ;# 
# 18032 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP1CLKPPS equ 01EC5h ;# 
# 18090 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP1DATPPS equ 01EC6h ;# 
# 18148 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP1SSPPS equ 01EC7h ;# 
# 18206 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP2CLKPPS equ 01EC8h ;# 
# 18264 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP2DATPPS equ 01EC9h ;# 
# 18322 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP2SSPPS equ 01ECAh ;# 
# 18380 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RX1DTPPS equ 01ECBh ;# 
# 18438 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TX1CKPPS equ 01ECCh ;# 
# 18496 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RX2DTPPS equ 01ECDh ;# 
# 18554 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TX2CKPPS equ 01ECEh ;# 
# 18612 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RA0PPS equ 01F10h ;# 
# 18656 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RA1PPS equ 01F11h ;# 
# 18700 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RA2PPS equ 01F12h ;# 
# 18744 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RA3PPS equ 01F13h ;# 
# 18788 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RA4PPS equ 01F14h ;# 
# 18832 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RA5PPS equ 01F15h ;# 
# 18876 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RA6PPS equ 01F16h ;# 
# 18920 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RA7PPS equ 01F17h ;# 
# 18964 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RB0PPS equ 01F18h ;# 
# 19008 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RB1PPS equ 01F19h ;# 
# 19052 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RB2PPS equ 01F1Ah ;# 
# 19096 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RB3PPS equ 01F1Bh ;# 
# 19140 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RB4PPS equ 01F1Ch ;# 
# 19184 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RB5PPS equ 01F1Dh ;# 
# 19228 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RB6PPS equ 01F1Eh ;# 
# 19272 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RB7PPS equ 01F1Fh ;# 
# 19316 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RC0PPS equ 01F20h ;# 
# 19360 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RC1PPS equ 01F21h ;# 
# 19404 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RC2PPS equ 01F22h ;# 
# 19448 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RC3PPS equ 01F23h ;# 
# 19492 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RC4PPS equ 01F24h ;# 
# 19536 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RC5PPS equ 01F25h ;# 
# 19580 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RC6PPS equ 01F26h ;# 
# 19624 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RC7PPS equ 01F27h ;# 
# 19668 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RD0PPS equ 01F28h ;# 
# 19712 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RD1PPS equ 01F29h ;# 
# 19756 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RD2PPS equ 01F2Ah ;# 
# 19800 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RD3PPS equ 01F2Bh ;# 
# 19844 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RD4PPS equ 01F2Ch ;# 
# 19888 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RD5PPS equ 01F2Dh ;# 
# 19932 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RD6PPS equ 01F2Eh ;# 
# 19976 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RD7PPS equ 01F2Fh ;# 
# 20020 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RE0PPS equ 01F30h ;# 
# 20064 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RE1PPS equ 01F31h ;# 
# 20108 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RE2PPS equ 01F32h ;# 
# 20152 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ANSELA equ 01F38h ;# 
# 20214 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
WPUA equ 01F39h ;# 
# 20276 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ODCONA equ 01F3Ah ;# 
# 20338 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SLRCONA equ 01F3Bh ;# 
# 20400 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
INLVLA equ 01F3Ch ;# 
# 20462 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
IOCAP equ 01F3Dh ;# 
# 20524 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
IOCAN equ 01F3Eh ;# 
# 20586 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
IOCAF equ 01F3Fh ;# 
# 20648 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ANSELB equ 01F43h ;# 
# 20710 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
WPUB equ 01F44h ;# 
# 20772 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ODCONB equ 01F45h ;# 
# 20834 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SLRCONB equ 01F46h ;# 
# 20896 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
INLVLB equ 01F47h ;# 
# 20958 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
IOCBP equ 01F48h ;# 
# 21020 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
IOCBN equ 01F49h ;# 
# 21082 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
IOCBF equ 01F4Ah ;# 
# 21144 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ANSELC equ 01F4Eh ;# 
# 21206 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
WPUC equ 01F4Fh ;# 
# 21268 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ODCONC equ 01F50h ;# 
# 21330 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SLRCONC equ 01F51h ;# 
# 21392 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
INLVLC equ 01F52h ;# 
# 21454 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
IOCCP equ 01F53h ;# 
# 21516 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
IOCCN equ 01F54h ;# 
# 21578 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
IOCCF equ 01F55h ;# 
# 21640 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ANSELD equ 01F59h ;# 
# 21702 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
WPUD equ 01F5Ah ;# 
# 21764 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ODCOND equ 01F5Bh ;# 
# 21826 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SLRCOND equ 01F5Ch ;# 
# 21888 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
INLVLD equ 01F5Dh ;# 
# 21950 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ANSELE equ 01F64h ;# 
# 21982 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
WPUE equ 01F65h ;# 
# 22020 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ODCONE equ 01F66h ;# 
# 22052 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SLRCONE equ 01F67h ;# 
# 22084 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
INLVLE equ 01F68h ;# 
# 22122 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
IOCEP equ 01F69h ;# 
# 22143 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
IOCEN equ 01F6Ah ;# 
# 22164 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
IOCEF equ 01F6Bh ;# 
# 22185 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
STATUS_SHAD equ 01FE4h ;# 
# 22205 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
WREG_SHAD equ 01FE5h ;# 
# 22225 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
BSR_SHAD equ 01FE6h ;# 
# 22245 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PCLATH_SHAD equ 01FE7h ;# 
# 22265 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
FSR0_SHAD equ 01FE8h ;# 
# 22272 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
FSR0L_SHAD equ 01FE8h ;# 
# 22292 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
FSR0H_SHAD equ 01FE9h ;# 
# 22312 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
FSR1L_SHAD equ 01FEAh ;# 
# 22332 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
FSR1H_SHAD equ 01FEBh ;# 
# 22352 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
STKPTR equ 01FEDh ;# 
# 22396 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TOSL equ 01FEEh ;# 
# 22466 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TOSH equ 01FEFh ;# 
# 52 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
INDF0 equ 00h ;# 
# 72 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
INDF1 equ 01h ;# 
# 92 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PCL equ 02h ;# 
# 112 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
STATUS equ 03h ;# 
# 175 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
FSR0L equ 04h ;# 
# 195 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
FSR0H equ 05h ;# 
# 219 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
FSR1L equ 06h ;# 
# 239 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
FSR1H equ 07h ;# 
# 259 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
BSR equ 08h ;# 
# 317 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
WREG equ 09h ;# 
# 337 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PCLATH equ 0Ah ;# 
# 357 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
INTCON equ 0Bh ;# 
# 390 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PORTA equ 0Ch ;# 
# 452 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PORTB equ 0Dh ;# 
# 514 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PORTC equ 0Eh ;# 
# 576 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PORTD equ 0Fh ;# 
# 638 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PORTE equ 010h ;# 
# 676 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TRISA equ 012h ;# 
# 738 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TRISB equ 013h ;# 
# 800 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TRISC equ 014h ;# 
# 862 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TRISD equ 015h ;# 
# 924 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TRISE equ 016h ;# 
# 956 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
LATA equ 018h ;# 
# 1018 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
LATB equ 019h ;# 
# 1080 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
LATC equ 01Ah ;# 
# 1142 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
LATD equ 01Bh ;# 
# 1204 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
LATE equ 01Ch ;# 
# 1236 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ADRES equ 09Bh ;# 
# 1243 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ADRESL equ 09Bh ;# 
# 1313 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ADRESH equ 09Ch ;# 
# 1383 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ADCON0 equ 09Dh ;# 
# 1460 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ADCON1 equ 09Eh ;# 
# 1526 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ADACT equ 09Fh ;# 
# 1578 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RC1REG equ 0119h ;# 
# 1583 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RCREG equ 0119h ;# 
# 1587 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RCREG1 equ 0119h ;# 
# 1632 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TX1REG equ 011Ah ;# 
# 1637 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TXREG1 equ 011Ah ;# 
# 1641 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TXREG equ 011Ah ;# 
# 1686 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SP1BRG equ 011Bh ;# 
# 1691 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SPBRG equ 011Bh ;# 
# 1698 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SP1BRGL equ 011Bh ;# 
# 1703 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SPBRG1 equ 011Bh ;# 
# 1707 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SPBRGL equ 011Bh ;# 
# 1752 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SP1BRGH equ 011Ch ;# 
# 1757 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SPBRGH equ 011Ch ;# 
# 1761 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SPBRGH1 equ 011Ch ;# 
# 1806 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RC1STA equ 011Dh ;# 
# 1811 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RCSTA1 equ 011Dh ;# 
# 1815 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RCSTA equ 011Dh ;# 
# 1986 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TX1STA equ 011Eh ;# 
# 1991 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TXSTA1 equ 011Eh ;# 
# 1995 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TXSTA equ 011Eh ;# 
# 2166 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
BAUD1CON equ 011Fh ;# 
# 2171 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
BAUDCON1 equ 011Fh ;# 
# 2175 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
BAUDCTL1 equ 011Fh ;# 
# 2179 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
BAUDCON equ 011Fh ;# 
# 2183 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
BAUDCTL equ 011Fh ;# 
# 2412 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP1BUF equ 018Ch ;# 
# 2432 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP1ADD equ 018Dh ;# 
# 2552 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP1MSK equ 018Eh ;# 
# 2622 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP1STAT equ 018Fh ;# 
# 2986 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP1CON1 equ 0190h ;# 
# 3106 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP1CON2 equ 0191h ;# 
# 3293 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP1CON3 equ 0192h ;# 
# 3355 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP2BUF equ 0196h ;# 
# 3375 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP2ADD equ 0197h ;# 
# 3495 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP2MSK equ 0198h ;# 
# 3565 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP2STAT equ 0199h ;# 
# 3929 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP2CON1 equ 019Ah ;# 
# 4049 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP2CON2 equ 019Bh ;# 
# 4236 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP2CON3 equ 019Ch ;# 
# 4298 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TMR1 equ 020Ch ;# 
# 4305 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TMR1L equ 020Ch ;# 
# 4475 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TMR1H equ 020Dh ;# 
# 4595 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T1CON equ 020Eh ;# 
# 4691 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T1GCON equ 020Fh ;# 
# 4696 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PR1 equ 020Fh ;# 
# 4887 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T1GATE equ 0210h ;# 
# 4892 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TMR1GATE equ 0210h ;# 
# 5053 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T1CLK equ 0211h ;# 
# 5058 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TMR1CLK equ 0211h ;# 
# 5195 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T2TMR equ 028Ch ;# 
# 5200 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TMR2 equ 028Ch ;# 
# 5249 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T2PR equ 028Dh ;# 
# 5254 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PR2 equ 028Dh ;# 
# 5303 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T2CON equ 028Eh ;# 
# 5449 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T2HLT equ 028Fh ;# 
# 5577 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T2CLKCON equ 0290h ;# 
# 5657 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T2RST equ 0291h ;# 
# 5737 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CCPR1 equ 030Ch ;# 
# 5744 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CCPR1L equ 030Ch ;# 
# 5764 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CCPR1H equ 030Dh ;# 
# 5784 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CCP1CON equ 030Eh ;# 
# 5902 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CCP1CAP equ 030Fh ;# 
# 5970 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CCPR2 equ 0310h ;# 
# 5977 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CCPR2L equ 0310h ;# 
# 5997 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CCPR2H equ 0311h ;# 
# 6017 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CCP2CON equ 0312h ;# 
# 6135 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CCP2CAP equ 0313h ;# 
# 6203 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM3DC equ 0314h ;# 
# 6210 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM3DCL equ 0314h ;# 
# 6276 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM3DCH equ 0315h ;# 
# 6446 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM3CON equ 0316h ;# 
# 6502 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM4DC equ 0318h ;# 
# 6509 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM4DCL equ 0318h ;# 
# 6575 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM4DCH equ 0319h ;# 
# 6745 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM4CON equ 031Ah ;# 
# 6801 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM5DC equ 031Ch ;# 
# 6808 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM5DCL equ 031Ch ;# 
# 6874 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM5DCH equ 031Dh ;# 
# 7044 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM5CON equ 031Eh ;# 
# 7100 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM6DC equ 038Ch ;# 
# 7107 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM6DCL equ 038Ch ;# 
# 7173 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM6DCH equ 038Dh ;# 
# 7343 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM6CON equ 038Eh ;# 
# 7401 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NCO1ACC equ 058Ch ;# 
# 7408 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NCO1ACCL equ 058Ch ;# 
# 7478 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NCO1ACCH equ 058Dh ;# 
# 7548 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NCO1ACCU equ 058Eh ;# 
# 7596 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NCO1INC equ 058Fh ;# 
# 7603 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NCO1INCL equ 058Fh ;# 
# 7673 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NCO1INCH equ 0590h ;# 
# 7743 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NCO1INCU equ 0591h ;# 
# 7789 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NCO1CON equ 0592h ;# 
# 7829 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NCO1CLK equ 0593h ;# 
# 7901 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TMR0L equ 059Ch ;# 
# 7906 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TMR0 equ 059Ch ;# 
# 8039 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TMR0H equ 059Dh ;# 
# 8044 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PR0 equ 059Dh ;# 
# 8293 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T0CON0 equ 059Eh ;# 
# 8363 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T0CON1 equ 059Fh ;# 
# 8474 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CWG1CLKCON equ 060Ch ;# 
# 8502 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CWG1DAT equ 060Dh ;# 
# 8548 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CWG1DBR equ 060Eh ;# 
# 8652 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CWG1DBF equ 060Fh ;# 
# 8756 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CWG1CON0 equ 0610h ;# 
# 8857 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CWG1CON1 equ 0611h ;# 
# 8935 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CWG1AS0 equ 0612h ;# 
# 9055 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CWG1AS1 equ 0613h ;# 
# 9099 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CWG1STR equ 0614h ;# 
# 9211 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIR0 equ 070Ch ;# 
# 9244 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIR1 equ 070Dh ;# 
# 9283 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIR2 equ 070Eh ;# 
# 9316 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIR3 equ 070Fh ;# 
# 9378 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIR4 equ 0710h ;# 
# 9404 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIR5 equ 0711h ;# 
# 9449 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIR6 equ 0712h ;# 
# 9475 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIR7 equ 0713h ;# 
# 9517 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIE0 equ 0716h ;# 
# 9550 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIE1 equ 0717h ;# 
# 9589 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIE2 equ 0718h ;# 
# 9622 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIE3 equ 0719h ;# 
# 9684 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIE4 equ 071Ah ;# 
# 9710 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIE5 equ 071Bh ;# 
# 9755 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIE6 equ 071Ch ;# 
# 9781 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIE7 equ 071Dh ;# 
# 9823 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PMD0 equ 0796h ;# 
# 9868 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PMD1 equ 0797h ;# 
# 9916 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PMD2 equ 0798h ;# 
# 9961 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PMD3 equ 0799h ;# 
# 10011 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PMD4 equ 079Ah ;# 
# 10056 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PMD5 equ 079Bh ;# 
# 10095 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
WDTCON0 equ 080Ch ;# 
# 10170 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
WDTCON1 equ 080Dh ;# 
# 10264 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
WDTPSL equ 080Eh ;# 
# 10392 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
WDTPSH equ 080Fh ;# 
# 10520 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
WDTTMR equ 0810h ;# 
# 10602 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
BORCON equ 0811h ;# 
# 10629 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PCON0 equ 0813h ;# 
# 10691 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PCON1 equ 0814h ;# 
# 10712 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NVMADR equ 081Ah ;# 
# 10719 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NVMADRL equ 081Ah ;# 
# 10781 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NVMADRH equ 081Bh ;# 
# 10837 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NVMDAT equ 081Ch ;# 
# 10844 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NVMDATL equ 081Ch ;# 
# 10906 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NVMDATH equ 081Dh ;# 
# 10956 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NVMCON1 equ 081Eh ;# 
# 11012 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NVMCON2 equ 081Fh ;# 
# 11032 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CPUDOZE equ 088Ch ;# 
# 11097 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
OSCCON1 equ 088Dh ;# 
# 11167 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
OSCCON2 equ 088Eh ;# 
# 11237 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
OSCCON3 equ 088Fh ;# 
# 11277 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
OSCSTAT equ 0890h ;# 
# 11334 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
OSCEN equ 0891h ;# 
# 11385 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
OSCTUNE equ 0892h ;# 
# 11443 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
OSCFRQ equ 0893h ;# 
# 11483 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLKRCON equ 0895h ;# 
# 11548 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLKRCLK equ 0896h ;# 
# 11594 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
FVRCON equ 090Ch ;# 
# 11670 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
DAC1CON0 equ 090Eh ;# 
# 11771 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
DAC1CON1 equ 090Fh ;# 
# 11823 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ZCDCON equ 091Fh ;# 
# 11869 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CMOUT equ 098Fh ;# 
# 11874 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CMSTAT equ 098Fh ;# 
# 11947 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CM1CON0 equ 0990h ;# 
# 12027 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CM1CON1 equ 0991h ;# 
# 12067 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CM1NCH equ 0992h ;# 
# 12127 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CM1PCH equ 0993h ;# 
# 12187 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CM2CON0 equ 0994h ;# 
# 12267 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CM2CON1 equ 0995h ;# 
# 12307 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CM2NCH equ 0996h ;# 
# 12367 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CM2PCH equ 0997h ;# 
# 12427 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RC2REG equ 0A19h ;# 
# 12432 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RCREG2 equ 0A19h ;# 
# 12465 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TX2REG equ 0A1Ah ;# 
# 12470 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TXREG2 equ 0A1Ah ;# 
# 12503 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SP2BRG equ 0A1Bh ;# 
# 12510 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SP2BRGL equ 0A1Bh ;# 
# 12515 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SPBRG2 equ 0A1Bh ;# 
# 12548 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SP2BRGH equ 0A1Ch ;# 
# 12553 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SPBRGH2 equ 0A1Ch ;# 
# 12586 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RC2STA equ 0A1Dh ;# 
# 12591 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RCSTA2 equ 0A1Dh ;# 
# 12708 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TX2STA equ 0A1Eh ;# 
# 12713 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TXSTA2 equ 0A1Eh ;# 
# 12830 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
BAUD2CON equ 0A1Fh ;# 
# 12835 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
BAUDCON2 equ 0A1Fh ;# 
# 12839 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
BAUDCTL2 equ 0A1Fh ;# 
# 12980 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLCDATA equ 01E0Fh ;# 
# 13018 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC1CON equ 01E10h ;# 
# 13136 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC1POL equ 01E11h ;# 
# 13214 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC1SEL0 equ 01E12h ;# 
# 13318 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC1SEL1 equ 01E13h ;# 
# 13422 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC1SEL2 equ 01E14h ;# 
# 13526 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC1SEL3 equ 01E15h ;# 
# 13630 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC1GLS0 equ 01E16h ;# 
# 13742 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC1GLS1 equ 01E17h ;# 
# 13854 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC1GLS2 equ 01E18h ;# 
# 13966 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC1GLS3 equ 01E19h ;# 
# 14078 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC2CON equ 01E1Ah ;# 
# 14196 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC2POL equ 01E1Bh ;# 
# 14274 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC2SEL0 equ 01E1Ch ;# 
# 14378 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC2SEL1 equ 01E1Dh ;# 
# 14482 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC2SEL2 equ 01E1Eh ;# 
# 14586 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC2SEL3 equ 01E1Fh ;# 
# 14690 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC2GLS0 equ 01E20h ;# 
# 14802 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC2GLS1 equ 01E21h ;# 
# 14914 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC2GLS2 equ 01E22h ;# 
# 15026 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC2GLS3 equ 01E23h ;# 
# 15138 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC3CON equ 01E24h ;# 
# 15256 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC3POL equ 01E25h ;# 
# 15334 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC3SEL0 equ 01E26h ;# 
# 15438 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC3SEL1 equ 01E27h ;# 
# 15542 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC3SEL2 equ 01E28h ;# 
# 15646 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC3SEL3 equ 01E29h ;# 
# 15750 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC3GLS0 equ 01E2Ah ;# 
# 15862 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC3GLS1 equ 01E2Bh ;# 
# 15974 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC3GLS2 equ 01E2Ch ;# 
# 16086 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC3GLS3 equ 01E2Dh ;# 
# 16198 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC4CON equ 01E2Eh ;# 
# 16316 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC4POL equ 01E2Fh ;# 
# 16394 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC4SEL0 equ 01E30h ;# 
# 16498 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC4SEL1 equ 01E31h ;# 
# 16602 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC4SEL2 equ 01E32h ;# 
# 16706 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC4SEL3 equ 01E33h ;# 
# 16810 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC4GLS0 equ 01E34h ;# 
# 16922 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC4GLS1 equ 01E35h ;# 
# 17034 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC4GLS2 equ 01E36h ;# 
# 17146 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC4GLS3 equ 01E37h ;# 
# 17258 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PPSLOCK equ 01E8Fh ;# 
# 17278 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
INTPPS equ 01E90h ;# 
# 17336 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T0CKIPPS equ 01E91h ;# 
# 17394 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T1CKIPPS equ 01E92h ;# 
# 17452 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T1GPPS equ 01E93h ;# 
# 17510 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T2INPPS equ 01E9Ch ;# 
# 17568 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CCP1PPS equ 01EA1h ;# 
# 17626 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CCP2PPS equ 01EA2h ;# 
# 17684 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CWG1PPS equ 01EB1h ;# 
# 17742 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLCIN0PPS equ 01EBBh ;# 
# 17800 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLCIN1PPS equ 01EBCh ;# 
# 17858 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLCIN2PPS equ 01EBDh ;# 
# 17916 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLCIN3PPS equ 01EBEh ;# 
# 17974 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ADACTPPS equ 01EC3h ;# 
# 18032 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP1CLKPPS equ 01EC5h ;# 
# 18090 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP1DATPPS equ 01EC6h ;# 
# 18148 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP1SSPPS equ 01EC7h ;# 
# 18206 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP2CLKPPS equ 01EC8h ;# 
# 18264 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP2DATPPS equ 01EC9h ;# 
# 18322 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP2SSPPS equ 01ECAh ;# 
# 18380 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RX1DTPPS equ 01ECBh ;# 
# 18438 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TX1CKPPS equ 01ECCh ;# 
# 18496 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RX2DTPPS equ 01ECDh ;# 
# 18554 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TX2CKPPS equ 01ECEh ;# 
# 18612 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RA0PPS equ 01F10h ;# 
# 18656 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RA1PPS equ 01F11h ;# 
# 18700 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RA2PPS equ 01F12h ;# 
# 18744 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RA3PPS equ 01F13h ;# 
# 18788 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RA4PPS equ 01F14h ;# 
# 18832 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RA5PPS equ 01F15h ;# 
# 18876 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RA6PPS equ 01F16h ;# 
# 18920 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RA7PPS equ 01F17h ;# 
# 18964 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RB0PPS equ 01F18h ;# 
# 19008 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RB1PPS equ 01F19h ;# 
# 19052 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RB2PPS equ 01F1Ah ;# 
# 19096 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RB3PPS equ 01F1Bh ;# 
# 19140 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RB4PPS equ 01F1Ch ;# 
# 19184 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RB5PPS equ 01F1Dh ;# 
# 19228 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RB6PPS equ 01F1Eh ;# 
# 19272 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RB7PPS equ 01F1Fh ;# 
# 19316 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RC0PPS equ 01F20h ;# 
# 19360 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RC1PPS equ 01F21h ;# 
# 19404 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RC2PPS equ 01F22h ;# 
# 19448 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RC3PPS equ 01F23h ;# 
# 19492 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RC4PPS equ 01F24h ;# 
# 19536 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RC5PPS equ 01F25h ;# 
# 19580 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RC6PPS equ 01F26h ;# 
# 19624 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RC7PPS equ 01F27h ;# 
# 19668 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RD0PPS equ 01F28h ;# 
# 19712 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RD1PPS equ 01F29h ;# 
# 19756 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RD2PPS equ 01F2Ah ;# 
# 19800 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RD3PPS equ 01F2Bh ;# 
# 19844 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RD4PPS equ 01F2Ch ;# 
# 19888 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RD5PPS equ 01F2Dh ;# 
# 19932 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RD6PPS equ 01F2Eh ;# 
# 19976 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RD7PPS equ 01F2Fh ;# 
# 20020 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RE0PPS equ 01F30h ;# 
# 20064 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RE1PPS equ 01F31h ;# 
# 20108 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RE2PPS equ 01F32h ;# 
# 20152 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ANSELA equ 01F38h ;# 
# 20214 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
WPUA equ 01F39h ;# 
# 20276 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ODCONA equ 01F3Ah ;# 
# 20338 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SLRCONA equ 01F3Bh ;# 
# 20400 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
INLVLA equ 01F3Ch ;# 
# 20462 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
IOCAP equ 01F3Dh ;# 
# 20524 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
IOCAN equ 01F3Eh ;# 
# 20586 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
IOCAF equ 01F3Fh ;# 
# 20648 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ANSELB equ 01F43h ;# 
# 20710 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
WPUB equ 01F44h ;# 
# 20772 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ODCONB equ 01F45h ;# 
# 20834 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SLRCONB equ 01F46h ;# 
# 20896 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
INLVLB equ 01F47h ;# 
# 20958 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
IOCBP equ 01F48h ;# 
# 21020 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
IOCBN equ 01F49h ;# 
# 21082 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
IOCBF equ 01F4Ah ;# 
# 21144 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ANSELC equ 01F4Eh ;# 
# 21206 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
WPUC equ 01F4Fh ;# 
# 21268 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ODCONC equ 01F50h ;# 
# 21330 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SLRCONC equ 01F51h ;# 
# 21392 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
INLVLC equ 01F52h ;# 
# 21454 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
IOCCP equ 01F53h ;# 
# 21516 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
IOCCN equ 01F54h ;# 
# 21578 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
IOCCF equ 01F55h ;# 
# 21640 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ANSELD equ 01F59h ;# 
# 21702 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
WPUD equ 01F5Ah ;# 
# 21764 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ODCOND equ 01F5Bh ;# 
# 21826 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SLRCOND equ 01F5Ch ;# 
# 21888 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
INLVLD equ 01F5Dh ;# 
# 21950 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ANSELE equ 01F64h ;# 
# 21982 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
WPUE equ 01F65h ;# 
# 22020 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ODCONE equ 01F66h ;# 
# 22052 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SLRCONE equ 01F67h ;# 
# 22084 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
INLVLE equ 01F68h ;# 
# 22122 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
IOCEP equ 01F69h ;# 
# 22143 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
IOCEN equ 01F6Ah ;# 
# 22164 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
IOCEF equ 01F6Bh ;# 
# 22185 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
STATUS_SHAD equ 01FE4h ;# 
# 22205 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
WREG_SHAD equ 01FE5h ;# 
# 22225 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
BSR_SHAD equ 01FE6h ;# 
# 22245 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PCLATH_SHAD equ 01FE7h ;# 
# 22265 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
FSR0_SHAD equ 01FE8h ;# 
# 22272 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
FSR0L_SHAD equ 01FE8h ;# 
# 22292 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
FSR0H_SHAD equ 01FE9h ;# 
# 22312 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
FSR1L_SHAD equ 01FEAh ;# 
# 22332 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
FSR1H_SHAD equ 01FEBh ;# 
# 22352 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
STKPTR equ 01FEDh ;# 
# 22396 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TOSL equ 01FEEh ;# 
# 22466 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TOSH equ 01FEFh ;# 
# 52 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
INDF0 equ 00h ;# 
# 72 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
INDF1 equ 01h ;# 
# 92 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PCL equ 02h ;# 
# 112 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
STATUS equ 03h ;# 
# 175 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
FSR0L equ 04h ;# 
# 195 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
FSR0H equ 05h ;# 
# 219 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
FSR1L equ 06h ;# 
# 239 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
FSR1H equ 07h ;# 
# 259 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
BSR equ 08h ;# 
# 317 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
WREG equ 09h ;# 
# 337 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PCLATH equ 0Ah ;# 
# 357 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
INTCON equ 0Bh ;# 
# 390 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PORTA equ 0Ch ;# 
# 452 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PORTB equ 0Dh ;# 
# 514 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PORTC equ 0Eh ;# 
# 576 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PORTD equ 0Fh ;# 
# 638 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PORTE equ 010h ;# 
# 676 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TRISA equ 012h ;# 
# 738 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TRISB equ 013h ;# 
# 800 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TRISC equ 014h ;# 
# 862 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TRISD equ 015h ;# 
# 924 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TRISE equ 016h ;# 
# 956 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
LATA equ 018h ;# 
# 1018 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
LATB equ 019h ;# 
# 1080 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
LATC equ 01Ah ;# 
# 1142 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
LATD equ 01Bh ;# 
# 1204 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
LATE equ 01Ch ;# 
# 1236 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ADRES equ 09Bh ;# 
# 1243 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ADRESL equ 09Bh ;# 
# 1313 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ADRESH equ 09Ch ;# 
# 1383 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ADCON0 equ 09Dh ;# 
# 1460 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ADCON1 equ 09Eh ;# 
# 1526 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ADACT equ 09Fh ;# 
# 1578 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RC1REG equ 0119h ;# 
# 1583 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RCREG equ 0119h ;# 
# 1587 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RCREG1 equ 0119h ;# 
# 1632 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TX1REG equ 011Ah ;# 
# 1637 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TXREG1 equ 011Ah ;# 
# 1641 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TXREG equ 011Ah ;# 
# 1686 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SP1BRG equ 011Bh ;# 
# 1691 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SPBRG equ 011Bh ;# 
# 1698 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SP1BRGL equ 011Bh ;# 
# 1703 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SPBRG1 equ 011Bh ;# 
# 1707 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SPBRGL equ 011Bh ;# 
# 1752 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SP1BRGH equ 011Ch ;# 
# 1757 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SPBRGH equ 011Ch ;# 
# 1761 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SPBRGH1 equ 011Ch ;# 
# 1806 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RC1STA equ 011Dh ;# 
# 1811 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RCSTA1 equ 011Dh ;# 
# 1815 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RCSTA equ 011Dh ;# 
# 1986 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TX1STA equ 011Eh ;# 
# 1991 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TXSTA1 equ 011Eh ;# 
# 1995 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TXSTA equ 011Eh ;# 
# 2166 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
BAUD1CON equ 011Fh ;# 
# 2171 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
BAUDCON1 equ 011Fh ;# 
# 2175 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
BAUDCTL1 equ 011Fh ;# 
# 2179 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
BAUDCON equ 011Fh ;# 
# 2183 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
BAUDCTL equ 011Fh ;# 
# 2412 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP1BUF equ 018Ch ;# 
# 2432 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP1ADD equ 018Dh ;# 
# 2552 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP1MSK equ 018Eh ;# 
# 2622 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP1STAT equ 018Fh ;# 
# 2986 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP1CON1 equ 0190h ;# 
# 3106 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP1CON2 equ 0191h ;# 
# 3293 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP1CON3 equ 0192h ;# 
# 3355 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP2BUF equ 0196h ;# 
# 3375 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP2ADD equ 0197h ;# 
# 3495 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP2MSK equ 0198h ;# 
# 3565 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP2STAT equ 0199h ;# 
# 3929 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP2CON1 equ 019Ah ;# 
# 4049 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP2CON2 equ 019Bh ;# 
# 4236 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP2CON3 equ 019Ch ;# 
# 4298 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TMR1 equ 020Ch ;# 
# 4305 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TMR1L equ 020Ch ;# 
# 4475 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TMR1H equ 020Dh ;# 
# 4595 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T1CON equ 020Eh ;# 
# 4691 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T1GCON equ 020Fh ;# 
# 4696 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PR1 equ 020Fh ;# 
# 4887 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T1GATE equ 0210h ;# 
# 4892 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TMR1GATE equ 0210h ;# 
# 5053 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T1CLK equ 0211h ;# 
# 5058 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TMR1CLK equ 0211h ;# 
# 5195 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T2TMR equ 028Ch ;# 
# 5200 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TMR2 equ 028Ch ;# 
# 5249 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T2PR equ 028Dh ;# 
# 5254 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PR2 equ 028Dh ;# 
# 5303 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T2CON equ 028Eh ;# 
# 5449 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T2HLT equ 028Fh ;# 
# 5577 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T2CLKCON equ 0290h ;# 
# 5657 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T2RST equ 0291h ;# 
# 5737 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CCPR1 equ 030Ch ;# 
# 5744 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CCPR1L equ 030Ch ;# 
# 5764 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CCPR1H equ 030Dh ;# 
# 5784 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CCP1CON equ 030Eh ;# 
# 5902 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CCP1CAP equ 030Fh ;# 
# 5970 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CCPR2 equ 0310h ;# 
# 5977 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CCPR2L equ 0310h ;# 
# 5997 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CCPR2H equ 0311h ;# 
# 6017 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CCP2CON equ 0312h ;# 
# 6135 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CCP2CAP equ 0313h ;# 
# 6203 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM3DC equ 0314h ;# 
# 6210 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM3DCL equ 0314h ;# 
# 6276 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM3DCH equ 0315h ;# 
# 6446 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM3CON equ 0316h ;# 
# 6502 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM4DC equ 0318h ;# 
# 6509 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM4DCL equ 0318h ;# 
# 6575 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM4DCH equ 0319h ;# 
# 6745 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM4CON equ 031Ah ;# 
# 6801 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM5DC equ 031Ch ;# 
# 6808 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM5DCL equ 031Ch ;# 
# 6874 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM5DCH equ 031Dh ;# 
# 7044 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM5CON equ 031Eh ;# 
# 7100 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM6DC equ 038Ch ;# 
# 7107 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM6DCL equ 038Ch ;# 
# 7173 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM6DCH equ 038Dh ;# 
# 7343 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM6CON equ 038Eh ;# 
# 7401 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NCO1ACC equ 058Ch ;# 
# 7408 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NCO1ACCL equ 058Ch ;# 
# 7478 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NCO1ACCH equ 058Dh ;# 
# 7548 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NCO1ACCU equ 058Eh ;# 
# 7596 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NCO1INC equ 058Fh ;# 
# 7603 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NCO1INCL equ 058Fh ;# 
# 7673 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NCO1INCH equ 0590h ;# 
# 7743 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NCO1INCU equ 0591h ;# 
# 7789 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NCO1CON equ 0592h ;# 
# 7829 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NCO1CLK equ 0593h ;# 
# 7901 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TMR0L equ 059Ch ;# 
# 7906 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TMR0 equ 059Ch ;# 
# 8039 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TMR0H equ 059Dh ;# 
# 8044 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PR0 equ 059Dh ;# 
# 8293 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T0CON0 equ 059Eh ;# 
# 8363 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T0CON1 equ 059Fh ;# 
# 8474 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CWG1CLKCON equ 060Ch ;# 
# 8502 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CWG1DAT equ 060Dh ;# 
# 8548 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CWG1DBR equ 060Eh ;# 
# 8652 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CWG1DBF equ 060Fh ;# 
# 8756 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CWG1CON0 equ 0610h ;# 
# 8857 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CWG1CON1 equ 0611h ;# 
# 8935 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CWG1AS0 equ 0612h ;# 
# 9055 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CWG1AS1 equ 0613h ;# 
# 9099 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CWG1STR equ 0614h ;# 
# 9211 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIR0 equ 070Ch ;# 
# 9244 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIR1 equ 070Dh ;# 
# 9283 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIR2 equ 070Eh ;# 
# 9316 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIR3 equ 070Fh ;# 
# 9378 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIR4 equ 0710h ;# 
# 9404 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIR5 equ 0711h ;# 
# 9449 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIR6 equ 0712h ;# 
# 9475 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIR7 equ 0713h ;# 
# 9517 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIE0 equ 0716h ;# 
# 9550 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIE1 equ 0717h ;# 
# 9589 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIE2 equ 0718h ;# 
# 9622 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIE3 equ 0719h ;# 
# 9684 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIE4 equ 071Ah ;# 
# 9710 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIE5 equ 071Bh ;# 
# 9755 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIE6 equ 071Ch ;# 
# 9781 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIE7 equ 071Dh ;# 
# 9823 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PMD0 equ 0796h ;# 
# 9868 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PMD1 equ 0797h ;# 
# 9916 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PMD2 equ 0798h ;# 
# 9961 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PMD3 equ 0799h ;# 
# 10011 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PMD4 equ 079Ah ;# 
# 10056 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PMD5 equ 079Bh ;# 
# 10095 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
WDTCON0 equ 080Ch ;# 
# 10170 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
WDTCON1 equ 080Dh ;# 
# 10264 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
WDTPSL equ 080Eh ;# 
# 10392 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
WDTPSH equ 080Fh ;# 
# 10520 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
WDTTMR equ 0810h ;# 
# 10602 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
BORCON equ 0811h ;# 
# 10629 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PCON0 equ 0813h ;# 
# 10691 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PCON1 equ 0814h ;# 
# 10712 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NVMADR equ 081Ah ;# 
# 10719 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NVMADRL equ 081Ah ;# 
# 10781 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NVMADRH equ 081Bh ;# 
# 10837 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NVMDAT equ 081Ch ;# 
# 10844 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NVMDATL equ 081Ch ;# 
# 10906 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NVMDATH equ 081Dh ;# 
# 10956 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NVMCON1 equ 081Eh ;# 
# 11012 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NVMCON2 equ 081Fh ;# 
# 11032 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CPUDOZE equ 088Ch ;# 
# 11097 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
OSCCON1 equ 088Dh ;# 
# 11167 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
OSCCON2 equ 088Eh ;# 
# 11237 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
OSCCON3 equ 088Fh ;# 
# 11277 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
OSCSTAT equ 0890h ;# 
# 11334 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
OSCEN equ 0891h ;# 
# 11385 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
OSCTUNE equ 0892h ;# 
# 11443 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
OSCFRQ equ 0893h ;# 
# 11483 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLKRCON equ 0895h ;# 
# 11548 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLKRCLK equ 0896h ;# 
# 11594 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
FVRCON equ 090Ch ;# 
# 11670 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
DAC1CON0 equ 090Eh ;# 
# 11771 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
DAC1CON1 equ 090Fh ;# 
# 11823 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ZCDCON equ 091Fh ;# 
# 11869 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CMOUT equ 098Fh ;# 
# 11874 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CMSTAT equ 098Fh ;# 
# 11947 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CM1CON0 equ 0990h ;# 
# 12027 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CM1CON1 equ 0991h ;# 
# 12067 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CM1NCH equ 0992h ;# 
# 12127 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CM1PCH equ 0993h ;# 
# 12187 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CM2CON0 equ 0994h ;# 
# 12267 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CM2CON1 equ 0995h ;# 
# 12307 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CM2NCH equ 0996h ;# 
# 12367 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CM2PCH equ 0997h ;# 
# 12427 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RC2REG equ 0A19h ;# 
# 12432 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RCREG2 equ 0A19h ;# 
# 12465 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TX2REG equ 0A1Ah ;# 
# 12470 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TXREG2 equ 0A1Ah ;# 
# 12503 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SP2BRG equ 0A1Bh ;# 
# 12510 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SP2BRGL equ 0A1Bh ;# 
# 12515 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SPBRG2 equ 0A1Bh ;# 
# 12548 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SP2BRGH equ 0A1Ch ;# 
# 12553 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SPBRGH2 equ 0A1Ch ;# 
# 12586 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RC2STA equ 0A1Dh ;# 
# 12591 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RCSTA2 equ 0A1Dh ;# 
# 12708 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TX2STA equ 0A1Eh ;# 
# 12713 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TXSTA2 equ 0A1Eh ;# 
# 12830 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
BAUD2CON equ 0A1Fh ;# 
# 12835 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
BAUDCON2 equ 0A1Fh ;# 
# 12839 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
BAUDCTL2 equ 0A1Fh ;# 
# 12980 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLCDATA equ 01E0Fh ;# 
# 13018 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC1CON equ 01E10h ;# 
# 13136 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC1POL equ 01E11h ;# 
# 13214 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC1SEL0 equ 01E12h ;# 
# 13318 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC1SEL1 equ 01E13h ;# 
# 13422 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC1SEL2 equ 01E14h ;# 
# 13526 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC1SEL3 equ 01E15h ;# 
# 13630 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC1GLS0 equ 01E16h ;# 
# 13742 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC1GLS1 equ 01E17h ;# 
# 13854 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC1GLS2 equ 01E18h ;# 
# 13966 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC1GLS3 equ 01E19h ;# 
# 14078 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC2CON equ 01E1Ah ;# 
# 14196 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC2POL equ 01E1Bh ;# 
# 14274 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC2SEL0 equ 01E1Ch ;# 
# 14378 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC2SEL1 equ 01E1Dh ;# 
# 14482 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC2SEL2 equ 01E1Eh ;# 
# 14586 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC2SEL3 equ 01E1Fh ;# 
# 14690 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC2GLS0 equ 01E20h ;# 
# 14802 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC2GLS1 equ 01E21h ;# 
# 14914 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC2GLS2 equ 01E22h ;# 
# 15026 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC2GLS3 equ 01E23h ;# 
# 15138 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC3CON equ 01E24h ;# 
# 15256 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC3POL equ 01E25h ;# 
# 15334 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC3SEL0 equ 01E26h ;# 
# 15438 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC3SEL1 equ 01E27h ;# 
# 15542 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC3SEL2 equ 01E28h ;# 
# 15646 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC3SEL3 equ 01E29h ;# 
# 15750 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC3GLS0 equ 01E2Ah ;# 
# 15862 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC3GLS1 equ 01E2Bh ;# 
# 15974 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC3GLS2 equ 01E2Ch ;# 
# 16086 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC3GLS3 equ 01E2Dh ;# 
# 16198 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC4CON equ 01E2Eh ;# 
# 16316 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC4POL equ 01E2Fh ;# 
# 16394 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC4SEL0 equ 01E30h ;# 
# 16498 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC4SEL1 equ 01E31h ;# 
# 16602 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC4SEL2 equ 01E32h ;# 
# 16706 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC4SEL3 equ 01E33h ;# 
# 16810 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC4GLS0 equ 01E34h ;# 
# 16922 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC4GLS1 equ 01E35h ;# 
# 17034 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC4GLS2 equ 01E36h ;# 
# 17146 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC4GLS3 equ 01E37h ;# 
# 17258 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PPSLOCK equ 01E8Fh ;# 
# 17278 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
INTPPS equ 01E90h ;# 
# 17336 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T0CKIPPS equ 01E91h ;# 
# 17394 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T1CKIPPS equ 01E92h ;# 
# 17452 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T1GPPS equ 01E93h ;# 
# 17510 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T2INPPS equ 01E9Ch ;# 
# 17568 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CCP1PPS equ 01EA1h ;# 
# 17626 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CCP2PPS equ 01EA2h ;# 
# 17684 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CWG1PPS equ 01EB1h ;# 
# 17742 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLCIN0PPS equ 01EBBh ;# 
# 17800 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLCIN1PPS equ 01EBCh ;# 
# 17858 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLCIN2PPS equ 01EBDh ;# 
# 17916 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLCIN3PPS equ 01EBEh ;# 
# 17974 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ADACTPPS equ 01EC3h ;# 
# 18032 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP1CLKPPS equ 01EC5h ;# 
# 18090 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP1DATPPS equ 01EC6h ;# 
# 18148 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP1SSPPS equ 01EC7h ;# 
# 18206 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP2CLKPPS equ 01EC8h ;# 
# 18264 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP2DATPPS equ 01EC9h ;# 
# 18322 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP2SSPPS equ 01ECAh ;# 
# 18380 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RX1DTPPS equ 01ECBh ;# 
# 18438 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TX1CKPPS equ 01ECCh ;# 
# 18496 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RX2DTPPS equ 01ECDh ;# 
# 18554 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TX2CKPPS equ 01ECEh ;# 
# 18612 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RA0PPS equ 01F10h ;# 
# 18656 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RA1PPS equ 01F11h ;# 
# 18700 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RA2PPS equ 01F12h ;# 
# 18744 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RA3PPS equ 01F13h ;# 
# 18788 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RA4PPS equ 01F14h ;# 
# 18832 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RA5PPS equ 01F15h ;# 
# 18876 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RA6PPS equ 01F16h ;# 
# 18920 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RA7PPS equ 01F17h ;# 
# 18964 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RB0PPS equ 01F18h ;# 
# 19008 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RB1PPS equ 01F19h ;# 
# 19052 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RB2PPS equ 01F1Ah ;# 
# 19096 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RB3PPS equ 01F1Bh ;# 
# 19140 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RB4PPS equ 01F1Ch ;# 
# 19184 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RB5PPS equ 01F1Dh ;# 
# 19228 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RB6PPS equ 01F1Eh ;# 
# 19272 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RB7PPS equ 01F1Fh ;# 
# 19316 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RC0PPS equ 01F20h ;# 
# 19360 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RC1PPS equ 01F21h ;# 
# 19404 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RC2PPS equ 01F22h ;# 
# 19448 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RC3PPS equ 01F23h ;# 
# 19492 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RC4PPS equ 01F24h ;# 
# 19536 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RC5PPS equ 01F25h ;# 
# 19580 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RC6PPS equ 01F26h ;# 
# 19624 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RC7PPS equ 01F27h ;# 
# 19668 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RD0PPS equ 01F28h ;# 
# 19712 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RD1PPS equ 01F29h ;# 
# 19756 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RD2PPS equ 01F2Ah ;# 
# 19800 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RD3PPS equ 01F2Bh ;# 
# 19844 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RD4PPS equ 01F2Ch ;# 
# 19888 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RD5PPS equ 01F2Dh ;# 
# 19932 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RD6PPS equ 01F2Eh ;# 
# 19976 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RD7PPS equ 01F2Fh ;# 
# 20020 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RE0PPS equ 01F30h ;# 
# 20064 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RE1PPS equ 01F31h ;# 
# 20108 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RE2PPS equ 01F32h ;# 
# 20152 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ANSELA equ 01F38h ;# 
# 20214 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
WPUA equ 01F39h ;# 
# 20276 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ODCONA equ 01F3Ah ;# 
# 20338 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SLRCONA equ 01F3Bh ;# 
# 20400 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
INLVLA equ 01F3Ch ;# 
# 20462 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
IOCAP equ 01F3Dh ;# 
# 20524 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
IOCAN equ 01F3Eh ;# 
# 20586 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
IOCAF equ 01F3Fh ;# 
# 20648 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ANSELB equ 01F43h ;# 
# 20710 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
WPUB equ 01F44h ;# 
# 20772 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ODCONB equ 01F45h ;# 
# 20834 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SLRCONB equ 01F46h ;# 
# 20896 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
INLVLB equ 01F47h ;# 
# 20958 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
IOCBP equ 01F48h ;# 
# 21020 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
IOCBN equ 01F49h ;# 
# 21082 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
IOCBF equ 01F4Ah ;# 
# 21144 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ANSELC equ 01F4Eh ;# 
# 21206 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
WPUC equ 01F4Fh ;# 
# 21268 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ODCONC equ 01F50h ;# 
# 21330 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SLRCONC equ 01F51h ;# 
# 21392 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
INLVLC equ 01F52h ;# 
# 21454 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
IOCCP equ 01F53h ;# 
# 21516 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
IOCCN equ 01F54h ;# 
# 21578 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
IOCCF equ 01F55h ;# 
# 21640 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ANSELD equ 01F59h ;# 
# 21702 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
WPUD equ 01F5Ah ;# 
# 21764 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ODCOND equ 01F5Bh ;# 
# 21826 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SLRCOND equ 01F5Ch ;# 
# 21888 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
INLVLD equ 01F5Dh ;# 
# 21950 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ANSELE equ 01F64h ;# 
# 21982 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
WPUE equ 01F65h ;# 
# 22020 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ODCONE equ 01F66h ;# 
# 22052 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SLRCONE equ 01F67h ;# 
# 22084 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
INLVLE equ 01F68h ;# 
# 22122 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
IOCEP equ 01F69h ;# 
# 22143 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
IOCEN equ 01F6Ah ;# 
# 22164 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
IOCEF equ 01F6Bh ;# 
# 22185 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
STATUS_SHAD equ 01FE4h ;# 
# 22205 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
WREG_SHAD equ 01FE5h ;# 
# 22225 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
BSR_SHAD equ 01FE6h ;# 
# 22245 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PCLATH_SHAD equ 01FE7h ;# 
# 22265 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
FSR0_SHAD equ 01FE8h ;# 
# 22272 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
FSR0L_SHAD equ 01FE8h ;# 
# 22292 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
FSR0H_SHAD equ 01FE9h ;# 
# 22312 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
FSR1L_SHAD equ 01FEAh ;# 
# 22332 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
FSR1H_SHAD equ 01FEBh ;# 
# 22352 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
STKPTR equ 01FEDh ;# 
# 22396 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TOSL equ 01FEEh ;# 
# 22466 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TOSH equ 01FEFh ;# 
# 52 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
INDF0 equ 00h ;# 
# 72 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
INDF1 equ 01h ;# 
# 92 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PCL equ 02h ;# 
# 112 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
STATUS equ 03h ;# 
# 175 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
FSR0L equ 04h ;# 
# 195 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
FSR0H equ 05h ;# 
# 219 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
FSR1L equ 06h ;# 
# 239 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
FSR1H equ 07h ;# 
# 259 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
BSR equ 08h ;# 
# 317 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
WREG equ 09h ;# 
# 337 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PCLATH equ 0Ah ;# 
# 357 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
INTCON equ 0Bh ;# 
# 390 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PORTA equ 0Ch ;# 
# 452 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PORTB equ 0Dh ;# 
# 514 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PORTC equ 0Eh ;# 
# 576 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PORTD equ 0Fh ;# 
# 638 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PORTE equ 010h ;# 
# 676 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TRISA equ 012h ;# 
# 738 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TRISB equ 013h ;# 
# 800 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TRISC equ 014h ;# 
# 862 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TRISD equ 015h ;# 
# 924 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TRISE equ 016h ;# 
# 956 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
LATA equ 018h ;# 
# 1018 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
LATB equ 019h ;# 
# 1080 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
LATC equ 01Ah ;# 
# 1142 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
LATD equ 01Bh ;# 
# 1204 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
LATE equ 01Ch ;# 
# 1236 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ADRES equ 09Bh ;# 
# 1243 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ADRESL equ 09Bh ;# 
# 1313 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ADRESH equ 09Ch ;# 
# 1383 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ADCON0 equ 09Dh ;# 
# 1460 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ADCON1 equ 09Eh ;# 
# 1526 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ADACT equ 09Fh ;# 
# 1578 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RC1REG equ 0119h ;# 
# 1583 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RCREG equ 0119h ;# 
# 1587 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RCREG1 equ 0119h ;# 
# 1632 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TX1REG equ 011Ah ;# 
# 1637 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TXREG1 equ 011Ah ;# 
# 1641 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TXREG equ 011Ah ;# 
# 1686 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SP1BRG equ 011Bh ;# 
# 1691 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SPBRG equ 011Bh ;# 
# 1698 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SP1BRGL equ 011Bh ;# 
# 1703 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SPBRG1 equ 011Bh ;# 
# 1707 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SPBRGL equ 011Bh ;# 
# 1752 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SP1BRGH equ 011Ch ;# 
# 1757 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SPBRGH equ 011Ch ;# 
# 1761 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SPBRGH1 equ 011Ch ;# 
# 1806 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RC1STA equ 011Dh ;# 
# 1811 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RCSTA1 equ 011Dh ;# 
# 1815 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RCSTA equ 011Dh ;# 
# 1986 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TX1STA equ 011Eh ;# 
# 1991 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TXSTA1 equ 011Eh ;# 
# 1995 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TXSTA equ 011Eh ;# 
# 2166 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
BAUD1CON equ 011Fh ;# 
# 2171 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
BAUDCON1 equ 011Fh ;# 
# 2175 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
BAUDCTL1 equ 011Fh ;# 
# 2179 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
BAUDCON equ 011Fh ;# 
# 2183 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
BAUDCTL equ 011Fh ;# 
# 2412 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP1BUF equ 018Ch ;# 
# 2432 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP1ADD equ 018Dh ;# 
# 2552 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP1MSK equ 018Eh ;# 
# 2622 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP1STAT equ 018Fh ;# 
# 2986 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP1CON1 equ 0190h ;# 
# 3106 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP1CON2 equ 0191h ;# 
# 3293 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP1CON3 equ 0192h ;# 
# 3355 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP2BUF equ 0196h ;# 
# 3375 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP2ADD equ 0197h ;# 
# 3495 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP2MSK equ 0198h ;# 
# 3565 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP2STAT equ 0199h ;# 
# 3929 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP2CON1 equ 019Ah ;# 
# 4049 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP2CON2 equ 019Bh ;# 
# 4236 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP2CON3 equ 019Ch ;# 
# 4298 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TMR1 equ 020Ch ;# 
# 4305 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TMR1L equ 020Ch ;# 
# 4475 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TMR1H equ 020Dh ;# 
# 4595 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T1CON equ 020Eh ;# 
# 4691 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T1GCON equ 020Fh ;# 
# 4696 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PR1 equ 020Fh ;# 
# 4887 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T1GATE equ 0210h ;# 
# 4892 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TMR1GATE equ 0210h ;# 
# 5053 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T1CLK equ 0211h ;# 
# 5058 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TMR1CLK equ 0211h ;# 
# 5195 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T2TMR equ 028Ch ;# 
# 5200 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TMR2 equ 028Ch ;# 
# 5249 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T2PR equ 028Dh ;# 
# 5254 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PR2 equ 028Dh ;# 
# 5303 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T2CON equ 028Eh ;# 
# 5449 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T2HLT equ 028Fh ;# 
# 5577 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T2CLKCON equ 0290h ;# 
# 5657 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T2RST equ 0291h ;# 
# 5737 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CCPR1 equ 030Ch ;# 
# 5744 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CCPR1L equ 030Ch ;# 
# 5764 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CCPR1H equ 030Dh ;# 
# 5784 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CCP1CON equ 030Eh ;# 
# 5902 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CCP1CAP equ 030Fh ;# 
# 5970 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CCPR2 equ 0310h ;# 
# 5977 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CCPR2L equ 0310h ;# 
# 5997 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CCPR2H equ 0311h ;# 
# 6017 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CCP2CON equ 0312h ;# 
# 6135 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CCP2CAP equ 0313h ;# 
# 6203 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM3DC equ 0314h ;# 
# 6210 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM3DCL equ 0314h ;# 
# 6276 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM3DCH equ 0315h ;# 
# 6446 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM3CON equ 0316h ;# 
# 6502 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM4DC equ 0318h ;# 
# 6509 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM4DCL equ 0318h ;# 
# 6575 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM4DCH equ 0319h ;# 
# 6745 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM4CON equ 031Ah ;# 
# 6801 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM5DC equ 031Ch ;# 
# 6808 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM5DCL equ 031Ch ;# 
# 6874 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM5DCH equ 031Dh ;# 
# 7044 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM5CON equ 031Eh ;# 
# 7100 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM6DC equ 038Ch ;# 
# 7107 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM6DCL equ 038Ch ;# 
# 7173 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM6DCH equ 038Dh ;# 
# 7343 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM6CON equ 038Eh ;# 
# 7401 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NCO1ACC equ 058Ch ;# 
# 7408 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NCO1ACCL equ 058Ch ;# 
# 7478 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NCO1ACCH equ 058Dh ;# 
# 7548 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NCO1ACCU equ 058Eh ;# 
# 7596 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NCO1INC equ 058Fh ;# 
# 7603 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NCO1INCL equ 058Fh ;# 
# 7673 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NCO1INCH equ 0590h ;# 
# 7743 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NCO1INCU equ 0591h ;# 
# 7789 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NCO1CON equ 0592h ;# 
# 7829 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NCO1CLK equ 0593h ;# 
# 7901 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TMR0L equ 059Ch ;# 
# 7906 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TMR0 equ 059Ch ;# 
# 8039 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TMR0H equ 059Dh ;# 
# 8044 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PR0 equ 059Dh ;# 
# 8293 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T0CON0 equ 059Eh ;# 
# 8363 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T0CON1 equ 059Fh ;# 
# 8474 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CWG1CLKCON equ 060Ch ;# 
# 8502 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CWG1DAT equ 060Dh ;# 
# 8548 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CWG1DBR equ 060Eh ;# 
# 8652 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CWG1DBF equ 060Fh ;# 
# 8756 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CWG1CON0 equ 0610h ;# 
# 8857 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CWG1CON1 equ 0611h ;# 
# 8935 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CWG1AS0 equ 0612h ;# 
# 9055 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CWG1AS1 equ 0613h ;# 
# 9099 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CWG1STR equ 0614h ;# 
# 9211 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIR0 equ 070Ch ;# 
# 9244 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIR1 equ 070Dh ;# 
# 9283 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIR2 equ 070Eh ;# 
# 9316 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIR3 equ 070Fh ;# 
# 9378 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIR4 equ 0710h ;# 
# 9404 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIR5 equ 0711h ;# 
# 9449 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIR6 equ 0712h ;# 
# 9475 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIR7 equ 0713h ;# 
# 9517 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIE0 equ 0716h ;# 
# 9550 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIE1 equ 0717h ;# 
# 9589 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIE2 equ 0718h ;# 
# 9622 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIE3 equ 0719h ;# 
# 9684 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIE4 equ 071Ah ;# 
# 9710 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIE5 equ 071Bh ;# 
# 9755 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIE6 equ 071Ch ;# 
# 9781 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIE7 equ 071Dh ;# 
# 9823 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PMD0 equ 0796h ;# 
# 9868 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PMD1 equ 0797h ;# 
# 9916 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PMD2 equ 0798h ;# 
# 9961 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PMD3 equ 0799h ;# 
# 10011 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PMD4 equ 079Ah ;# 
# 10056 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PMD5 equ 079Bh ;# 
# 10095 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
WDTCON0 equ 080Ch ;# 
# 10170 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
WDTCON1 equ 080Dh ;# 
# 10264 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
WDTPSL equ 080Eh ;# 
# 10392 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
WDTPSH equ 080Fh ;# 
# 10520 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
WDTTMR equ 0810h ;# 
# 10602 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
BORCON equ 0811h ;# 
# 10629 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PCON0 equ 0813h ;# 
# 10691 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PCON1 equ 0814h ;# 
# 10712 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NVMADR equ 081Ah ;# 
# 10719 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NVMADRL equ 081Ah ;# 
# 10781 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NVMADRH equ 081Bh ;# 
# 10837 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NVMDAT equ 081Ch ;# 
# 10844 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NVMDATL equ 081Ch ;# 
# 10906 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NVMDATH equ 081Dh ;# 
# 10956 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NVMCON1 equ 081Eh ;# 
# 11012 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NVMCON2 equ 081Fh ;# 
# 11032 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CPUDOZE equ 088Ch ;# 
# 11097 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
OSCCON1 equ 088Dh ;# 
# 11167 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
OSCCON2 equ 088Eh ;# 
# 11237 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
OSCCON3 equ 088Fh ;# 
# 11277 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
OSCSTAT equ 0890h ;# 
# 11334 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
OSCEN equ 0891h ;# 
# 11385 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
OSCTUNE equ 0892h ;# 
# 11443 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
OSCFRQ equ 0893h ;# 
# 11483 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLKRCON equ 0895h ;# 
# 11548 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLKRCLK equ 0896h ;# 
# 11594 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
FVRCON equ 090Ch ;# 
# 11670 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
DAC1CON0 equ 090Eh ;# 
# 11771 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
DAC1CON1 equ 090Fh ;# 
# 11823 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ZCDCON equ 091Fh ;# 
# 11869 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CMOUT equ 098Fh ;# 
# 11874 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CMSTAT equ 098Fh ;# 
# 11947 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CM1CON0 equ 0990h ;# 
# 12027 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CM1CON1 equ 0991h ;# 
# 12067 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CM1NCH equ 0992h ;# 
# 12127 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CM1PCH equ 0993h ;# 
# 12187 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CM2CON0 equ 0994h ;# 
# 12267 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CM2CON1 equ 0995h ;# 
# 12307 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CM2NCH equ 0996h ;# 
# 12367 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CM2PCH equ 0997h ;# 
# 12427 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RC2REG equ 0A19h ;# 
# 12432 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RCREG2 equ 0A19h ;# 
# 12465 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TX2REG equ 0A1Ah ;# 
# 12470 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TXREG2 equ 0A1Ah ;# 
# 12503 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SP2BRG equ 0A1Bh ;# 
# 12510 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SP2BRGL equ 0A1Bh ;# 
# 12515 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SPBRG2 equ 0A1Bh ;# 
# 12548 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SP2BRGH equ 0A1Ch ;# 
# 12553 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SPBRGH2 equ 0A1Ch ;# 
# 12586 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RC2STA equ 0A1Dh ;# 
# 12591 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RCSTA2 equ 0A1Dh ;# 
# 12708 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TX2STA equ 0A1Eh ;# 
# 12713 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TXSTA2 equ 0A1Eh ;# 
# 12830 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
BAUD2CON equ 0A1Fh ;# 
# 12835 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
BAUDCON2 equ 0A1Fh ;# 
# 12839 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
BAUDCTL2 equ 0A1Fh ;# 
# 12980 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLCDATA equ 01E0Fh ;# 
# 13018 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC1CON equ 01E10h ;# 
# 13136 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC1POL equ 01E11h ;# 
# 13214 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC1SEL0 equ 01E12h ;# 
# 13318 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC1SEL1 equ 01E13h ;# 
# 13422 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC1SEL2 equ 01E14h ;# 
# 13526 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC1SEL3 equ 01E15h ;# 
# 13630 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC1GLS0 equ 01E16h ;# 
# 13742 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC1GLS1 equ 01E17h ;# 
# 13854 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC1GLS2 equ 01E18h ;# 
# 13966 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC1GLS3 equ 01E19h ;# 
# 14078 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC2CON equ 01E1Ah ;# 
# 14196 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC2POL equ 01E1Bh ;# 
# 14274 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC2SEL0 equ 01E1Ch ;# 
# 14378 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC2SEL1 equ 01E1Dh ;# 
# 14482 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC2SEL2 equ 01E1Eh ;# 
# 14586 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC2SEL3 equ 01E1Fh ;# 
# 14690 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC2GLS0 equ 01E20h ;# 
# 14802 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC2GLS1 equ 01E21h ;# 
# 14914 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC2GLS2 equ 01E22h ;# 
# 15026 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC2GLS3 equ 01E23h ;# 
# 15138 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC3CON equ 01E24h ;# 
# 15256 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC3POL equ 01E25h ;# 
# 15334 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC3SEL0 equ 01E26h ;# 
# 15438 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC3SEL1 equ 01E27h ;# 
# 15542 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC3SEL2 equ 01E28h ;# 
# 15646 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC3SEL3 equ 01E29h ;# 
# 15750 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC3GLS0 equ 01E2Ah ;# 
# 15862 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC3GLS1 equ 01E2Bh ;# 
# 15974 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC3GLS2 equ 01E2Ch ;# 
# 16086 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC3GLS3 equ 01E2Dh ;# 
# 16198 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC4CON equ 01E2Eh ;# 
# 16316 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC4POL equ 01E2Fh ;# 
# 16394 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC4SEL0 equ 01E30h ;# 
# 16498 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC4SEL1 equ 01E31h ;# 
# 16602 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC4SEL2 equ 01E32h ;# 
# 16706 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC4SEL3 equ 01E33h ;# 
# 16810 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC4GLS0 equ 01E34h ;# 
# 16922 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC4GLS1 equ 01E35h ;# 
# 17034 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC4GLS2 equ 01E36h ;# 
# 17146 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC4GLS3 equ 01E37h ;# 
# 17258 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PPSLOCK equ 01E8Fh ;# 
# 17278 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
INTPPS equ 01E90h ;# 
# 17336 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T0CKIPPS equ 01E91h ;# 
# 17394 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T1CKIPPS equ 01E92h ;# 
# 17452 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T1GPPS equ 01E93h ;# 
# 17510 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T2INPPS equ 01E9Ch ;# 
# 17568 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CCP1PPS equ 01EA1h ;# 
# 17626 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CCP2PPS equ 01EA2h ;# 
# 17684 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CWG1PPS equ 01EB1h ;# 
# 17742 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLCIN0PPS equ 01EBBh ;# 
# 17800 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLCIN1PPS equ 01EBCh ;# 
# 17858 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLCIN2PPS equ 01EBDh ;# 
# 17916 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLCIN3PPS equ 01EBEh ;# 
# 17974 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ADACTPPS equ 01EC3h ;# 
# 18032 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP1CLKPPS equ 01EC5h ;# 
# 18090 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP1DATPPS equ 01EC6h ;# 
# 18148 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP1SSPPS equ 01EC7h ;# 
# 18206 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP2CLKPPS equ 01EC8h ;# 
# 18264 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP2DATPPS equ 01EC9h ;# 
# 18322 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP2SSPPS equ 01ECAh ;# 
# 18380 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RX1DTPPS equ 01ECBh ;# 
# 18438 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TX1CKPPS equ 01ECCh ;# 
# 18496 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RX2DTPPS equ 01ECDh ;# 
# 18554 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TX2CKPPS equ 01ECEh ;# 
# 18612 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RA0PPS equ 01F10h ;# 
# 18656 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RA1PPS equ 01F11h ;# 
# 18700 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RA2PPS equ 01F12h ;# 
# 18744 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RA3PPS equ 01F13h ;# 
# 18788 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RA4PPS equ 01F14h ;# 
# 18832 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RA5PPS equ 01F15h ;# 
# 18876 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RA6PPS equ 01F16h ;# 
# 18920 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RA7PPS equ 01F17h ;# 
# 18964 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RB0PPS equ 01F18h ;# 
# 19008 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RB1PPS equ 01F19h ;# 
# 19052 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RB2PPS equ 01F1Ah ;# 
# 19096 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RB3PPS equ 01F1Bh ;# 
# 19140 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RB4PPS equ 01F1Ch ;# 
# 19184 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RB5PPS equ 01F1Dh ;# 
# 19228 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RB6PPS equ 01F1Eh ;# 
# 19272 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RB7PPS equ 01F1Fh ;# 
# 19316 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RC0PPS equ 01F20h ;# 
# 19360 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RC1PPS equ 01F21h ;# 
# 19404 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RC2PPS equ 01F22h ;# 
# 19448 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RC3PPS equ 01F23h ;# 
# 19492 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RC4PPS equ 01F24h ;# 
# 19536 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RC5PPS equ 01F25h ;# 
# 19580 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RC6PPS equ 01F26h ;# 
# 19624 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RC7PPS equ 01F27h ;# 
# 19668 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RD0PPS equ 01F28h ;# 
# 19712 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RD1PPS equ 01F29h ;# 
# 19756 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RD2PPS equ 01F2Ah ;# 
# 19800 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RD3PPS equ 01F2Bh ;# 
# 19844 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RD4PPS equ 01F2Ch ;# 
# 19888 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RD5PPS equ 01F2Dh ;# 
# 19932 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RD6PPS equ 01F2Eh ;# 
# 19976 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RD7PPS equ 01F2Fh ;# 
# 20020 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RE0PPS equ 01F30h ;# 
# 20064 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RE1PPS equ 01F31h ;# 
# 20108 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RE2PPS equ 01F32h ;# 
# 20152 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ANSELA equ 01F38h ;# 
# 20214 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
WPUA equ 01F39h ;# 
# 20276 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ODCONA equ 01F3Ah ;# 
# 20338 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SLRCONA equ 01F3Bh ;# 
# 20400 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
INLVLA equ 01F3Ch ;# 
# 20462 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
IOCAP equ 01F3Dh ;# 
# 20524 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
IOCAN equ 01F3Eh ;# 
# 20586 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
IOCAF equ 01F3Fh ;# 
# 20648 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ANSELB equ 01F43h ;# 
# 20710 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
WPUB equ 01F44h ;# 
# 20772 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ODCONB equ 01F45h ;# 
# 20834 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SLRCONB equ 01F46h ;# 
# 20896 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
INLVLB equ 01F47h ;# 
# 20958 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
IOCBP equ 01F48h ;# 
# 21020 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
IOCBN equ 01F49h ;# 
# 21082 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
IOCBF equ 01F4Ah ;# 
# 21144 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ANSELC equ 01F4Eh ;# 
# 21206 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
WPUC equ 01F4Fh ;# 
# 21268 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ODCONC equ 01F50h ;# 
# 21330 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SLRCONC equ 01F51h ;# 
# 21392 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
INLVLC equ 01F52h ;# 
# 21454 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
IOCCP equ 01F53h ;# 
# 21516 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
IOCCN equ 01F54h ;# 
# 21578 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
IOCCF equ 01F55h ;# 
# 21640 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ANSELD equ 01F59h ;# 
# 21702 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
WPUD equ 01F5Ah ;# 
# 21764 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ODCOND equ 01F5Bh ;# 
# 21826 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SLRCOND equ 01F5Ch ;# 
# 21888 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
INLVLD equ 01F5Dh ;# 
# 21950 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ANSELE equ 01F64h ;# 
# 21982 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
WPUE equ 01F65h ;# 
# 22020 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ODCONE equ 01F66h ;# 
# 22052 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SLRCONE equ 01F67h ;# 
# 22084 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
INLVLE equ 01F68h ;# 
# 22122 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
IOCEP equ 01F69h ;# 
# 22143 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
IOCEN equ 01F6Ah ;# 
# 22164 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
IOCEF equ 01F6Bh ;# 
# 22185 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
STATUS_SHAD equ 01FE4h ;# 
# 22205 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
WREG_SHAD equ 01FE5h ;# 
# 22225 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
BSR_SHAD equ 01FE6h ;# 
# 22245 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PCLATH_SHAD equ 01FE7h ;# 
# 22265 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
FSR0_SHAD equ 01FE8h ;# 
# 22272 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
FSR0L_SHAD equ 01FE8h ;# 
# 22292 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
FSR0H_SHAD equ 01FE9h ;# 
# 22312 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
FSR1L_SHAD equ 01FEAh ;# 
# 22332 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
FSR1H_SHAD equ 01FEBh ;# 
# 22352 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
STKPTR equ 01FEDh ;# 
# 22396 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TOSL equ 01FEEh ;# 
# 22466 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TOSH equ 01FEFh ;# 
# 52 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
INDF0 equ 00h ;# 
# 72 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
INDF1 equ 01h ;# 
# 92 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PCL equ 02h ;# 
# 112 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
STATUS equ 03h ;# 
# 175 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
FSR0L equ 04h ;# 
# 195 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
FSR0H equ 05h ;# 
# 219 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
FSR1L equ 06h ;# 
# 239 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
FSR1H equ 07h ;# 
# 259 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
BSR equ 08h ;# 
# 317 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
WREG equ 09h ;# 
# 337 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PCLATH equ 0Ah ;# 
# 357 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
INTCON equ 0Bh ;# 
# 390 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PORTA equ 0Ch ;# 
# 452 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PORTB equ 0Dh ;# 
# 514 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PORTC equ 0Eh ;# 
# 576 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PORTD equ 0Fh ;# 
# 638 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PORTE equ 010h ;# 
# 676 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TRISA equ 012h ;# 
# 738 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TRISB equ 013h ;# 
# 800 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TRISC equ 014h ;# 
# 862 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TRISD equ 015h ;# 
# 924 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TRISE equ 016h ;# 
# 956 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
LATA equ 018h ;# 
# 1018 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
LATB equ 019h ;# 
# 1080 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
LATC equ 01Ah ;# 
# 1142 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
LATD equ 01Bh ;# 
# 1204 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
LATE equ 01Ch ;# 
# 1236 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ADRES equ 09Bh ;# 
# 1243 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ADRESL equ 09Bh ;# 
# 1313 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ADRESH equ 09Ch ;# 
# 1383 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ADCON0 equ 09Dh ;# 
# 1460 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ADCON1 equ 09Eh ;# 
# 1526 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ADACT equ 09Fh ;# 
# 1578 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RC1REG equ 0119h ;# 
# 1583 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RCREG equ 0119h ;# 
# 1587 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RCREG1 equ 0119h ;# 
# 1632 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TX1REG equ 011Ah ;# 
# 1637 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TXREG1 equ 011Ah ;# 
# 1641 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TXREG equ 011Ah ;# 
# 1686 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SP1BRG equ 011Bh ;# 
# 1691 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SPBRG equ 011Bh ;# 
# 1698 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SP1BRGL equ 011Bh ;# 
# 1703 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SPBRG1 equ 011Bh ;# 
# 1707 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SPBRGL equ 011Bh ;# 
# 1752 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SP1BRGH equ 011Ch ;# 
# 1757 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SPBRGH equ 011Ch ;# 
# 1761 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SPBRGH1 equ 011Ch ;# 
# 1806 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RC1STA equ 011Dh ;# 
# 1811 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RCSTA1 equ 011Dh ;# 
# 1815 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RCSTA equ 011Dh ;# 
# 1986 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TX1STA equ 011Eh ;# 
# 1991 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TXSTA1 equ 011Eh ;# 
# 1995 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TXSTA equ 011Eh ;# 
# 2166 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
BAUD1CON equ 011Fh ;# 
# 2171 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
BAUDCON1 equ 011Fh ;# 
# 2175 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
BAUDCTL1 equ 011Fh ;# 
# 2179 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
BAUDCON equ 011Fh ;# 
# 2183 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
BAUDCTL equ 011Fh ;# 
# 2412 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP1BUF equ 018Ch ;# 
# 2432 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP1ADD equ 018Dh ;# 
# 2552 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP1MSK equ 018Eh ;# 
# 2622 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP1STAT equ 018Fh ;# 
# 2986 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP1CON1 equ 0190h ;# 
# 3106 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP1CON2 equ 0191h ;# 
# 3293 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP1CON3 equ 0192h ;# 
# 3355 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP2BUF equ 0196h ;# 
# 3375 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP2ADD equ 0197h ;# 
# 3495 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP2MSK equ 0198h ;# 
# 3565 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP2STAT equ 0199h ;# 
# 3929 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP2CON1 equ 019Ah ;# 
# 4049 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP2CON2 equ 019Bh ;# 
# 4236 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP2CON3 equ 019Ch ;# 
# 4298 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TMR1 equ 020Ch ;# 
# 4305 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TMR1L equ 020Ch ;# 
# 4475 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TMR1H equ 020Dh ;# 
# 4595 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T1CON equ 020Eh ;# 
# 4691 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T1GCON equ 020Fh ;# 
# 4696 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PR1 equ 020Fh ;# 
# 4887 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T1GATE equ 0210h ;# 
# 4892 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TMR1GATE equ 0210h ;# 
# 5053 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T1CLK equ 0211h ;# 
# 5058 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TMR1CLK equ 0211h ;# 
# 5195 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T2TMR equ 028Ch ;# 
# 5200 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TMR2 equ 028Ch ;# 
# 5249 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T2PR equ 028Dh ;# 
# 5254 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PR2 equ 028Dh ;# 
# 5303 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T2CON equ 028Eh ;# 
# 5449 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T2HLT equ 028Fh ;# 
# 5577 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T2CLKCON equ 0290h ;# 
# 5657 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T2RST equ 0291h ;# 
# 5737 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CCPR1 equ 030Ch ;# 
# 5744 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CCPR1L equ 030Ch ;# 
# 5764 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CCPR1H equ 030Dh ;# 
# 5784 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CCP1CON equ 030Eh ;# 
# 5902 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CCP1CAP equ 030Fh ;# 
# 5970 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CCPR2 equ 0310h ;# 
# 5977 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CCPR2L equ 0310h ;# 
# 5997 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CCPR2H equ 0311h ;# 
# 6017 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CCP2CON equ 0312h ;# 
# 6135 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CCP2CAP equ 0313h ;# 
# 6203 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM3DC equ 0314h ;# 
# 6210 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM3DCL equ 0314h ;# 
# 6276 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM3DCH equ 0315h ;# 
# 6446 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM3CON equ 0316h ;# 
# 6502 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM4DC equ 0318h ;# 
# 6509 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM4DCL equ 0318h ;# 
# 6575 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM4DCH equ 0319h ;# 
# 6745 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM4CON equ 031Ah ;# 
# 6801 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM5DC equ 031Ch ;# 
# 6808 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM5DCL equ 031Ch ;# 
# 6874 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM5DCH equ 031Dh ;# 
# 7044 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM5CON equ 031Eh ;# 
# 7100 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM6DC equ 038Ch ;# 
# 7107 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM6DCL equ 038Ch ;# 
# 7173 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM6DCH equ 038Dh ;# 
# 7343 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM6CON equ 038Eh ;# 
# 7401 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NCO1ACC equ 058Ch ;# 
# 7408 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NCO1ACCL equ 058Ch ;# 
# 7478 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NCO1ACCH equ 058Dh ;# 
# 7548 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NCO1ACCU equ 058Eh ;# 
# 7596 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NCO1INC equ 058Fh ;# 
# 7603 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NCO1INCL equ 058Fh ;# 
# 7673 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NCO1INCH equ 0590h ;# 
# 7743 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NCO1INCU equ 0591h ;# 
# 7789 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NCO1CON equ 0592h ;# 
# 7829 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NCO1CLK equ 0593h ;# 
# 7901 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TMR0L equ 059Ch ;# 
# 7906 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TMR0 equ 059Ch ;# 
# 8039 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TMR0H equ 059Dh ;# 
# 8044 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PR0 equ 059Dh ;# 
# 8293 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T0CON0 equ 059Eh ;# 
# 8363 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T0CON1 equ 059Fh ;# 
# 8474 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CWG1CLKCON equ 060Ch ;# 
# 8502 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CWG1DAT equ 060Dh ;# 
# 8548 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CWG1DBR equ 060Eh ;# 
# 8652 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CWG1DBF equ 060Fh ;# 
# 8756 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CWG1CON0 equ 0610h ;# 
# 8857 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CWG1CON1 equ 0611h ;# 
# 8935 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CWG1AS0 equ 0612h ;# 
# 9055 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CWG1AS1 equ 0613h ;# 
# 9099 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CWG1STR equ 0614h ;# 
# 9211 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIR0 equ 070Ch ;# 
# 9244 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIR1 equ 070Dh ;# 
# 9283 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIR2 equ 070Eh ;# 
# 9316 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIR3 equ 070Fh ;# 
# 9378 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIR4 equ 0710h ;# 
# 9404 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIR5 equ 0711h ;# 
# 9449 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIR6 equ 0712h ;# 
# 9475 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIR7 equ 0713h ;# 
# 9517 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIE0 equ 0716h ;# 
# 9550 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIE1 equ 0717h ;# 
# 9589 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIE2 equ 0718h ;# 
# 9622 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIE3 equ 0719h ;# 
# 9684 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIE4 equ 071Ah ;# 
# 9710 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIE5 equ 071Bh ;# 
# 9755 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIE6 equ 071Ch ;# 
# 9781 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIE7 equ 071Dh ;# 
# 9823 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PMD0 equ 0796h ;# 
# 9868 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PMD1 equ 0797h ;# 
# 9916 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PMD2 equ 0798h ;# 
# 9961 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PMD3 equ 0799h ;# 
# 10011 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PMD4 equ 079Ah ;# 
# 10056 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PMD5 equ 079Bh ;# 
# 10095 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
WDTCON0 equ 080Ch ;# 
# 10170 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
WDTCON1 equ 080Dh ;# 
# 10264 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
WDTPSL equ 080Eh ;# 
# 10392 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
WDTPSH equ 080Fh ;# 
# 10520 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
WDTTMR equ 0810h ;# 
# 10602 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
BORCON equ 0811h ;# 
# 10629 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PCON0 equ 0813h ;# 
# 10691 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PCON1 equ 0814h ;# 
# 10712 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NVMADR equ 081Ah ;# 
# 10719 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NVMADRL equ 081Ah ;# 
# 10781 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NVMADRH equ 081Bh ;# 
# 10837 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NVMDAT equ 081Ch ;# 
# 10844 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NVMDATL equ 081Ch ;# 
# 10906 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NVMDATH equ 081Dh ;# 
# 10956 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NVMCON1 equ 081Eh ;# 
# 11012 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NVMCON2 equ 081Fh ;# 
# 11032 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CPUDOZE equ 088Ch ;# 
# 11097 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
OSCCON1 equ 088Dh ;# 
# 11167 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
OSCCON2 equ 088Eh ;# 
# 11237 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
OSCCON3 equ 088Fh ;# 
# 11277 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
OSCSTAT equ 0890h ;# 
# 11334 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
OSCEN equ 0891h ;# 
# 11385 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
OSCTUNE equ 0892h ;# 
# 11443 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
OSCFRQ equ 0893h ;# 
# 11483 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLKRCON equ 0895h ;# 
# 11548 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLKRCLK equ 0896h ;# 
# 11594 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
FVRCON equ 090Ch ;# 
# 11670 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
DAC1CON0 equ 090Eh ;# 
# 11771 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
DAC1CON1 equ 090Fh ;# 
# 11823 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ZCDCON equ 091Fh ;# 
# 11869 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CMOUT equ 098Fh ;# 
# 11874 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CMSTAT equ 098Fh ;# 
# 11947 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CM1CON0 equ 0990h ;# 
# 12027 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CM1CON1 equ 0991h ;# 
# 12067 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CM1NCH equ 0992h ;# 
# 12127 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CM1PCH equ 0993h ;# 
# 12187 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CM2CON0 equ 0994h ;# 
# 12267 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CM2CON1 equ 0995h ;# 
# 12307 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CM2NCH equ 0996h ;# 
# 12367 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CM2PCH equ 0997h ;# 
# 12427 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RC2REG equ 0A19h ;# 
# 12432 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RCREG2 equ 0A19h ;# 
# 12465 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TX2REG equ 0A1Ah ;# 
# 12470 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TXREG2 equ 0A1Ah ;# 
# 12503 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SP2BRG equ 0A1Bh ;# 
# 12510 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SP2BRGL equ 0A1Bh ;# 
# 12515 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SPBRG2 equ 0A1Bh ;# 
# 12548 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SP2BRGH equ 0A1Ch ;# 
# 12553 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SPBRGH2 equ 0A1Ch ;# 
# 12586 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RC2STA equ 0A1Dh ;# 
# 12591 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RCSTA2 equ 0A1Dh ;# 
# 12708 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TX2STA equ 0A1Eh ;# 
# 12713 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TXSTA2 equ 0A1Eh ;# 
# 12830 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
BAUD2CON equ 0A1Fh ;# 
# 12835 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
BAUDCON2 equ 0A1Fh ;# 
# 12839 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
BAUDCTL2 equ 0A1Fh ;# 
# 12980 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLCDATA equ 01E0Fh ;# 
# 13018 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC1CON equ 01E10h ;# 
# 13136 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC1POL equ 01E11h ;# 
# 13214 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC1SEL0 equ 01E12h ;# 
# 13318 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC1SEL1 equ 01E13h ;# 
# 13422 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC1SEL2 equ 01E14h ;# 
# 13526 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC1SEL3 equ 01E15h ;# 
# 13630 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC1GLS0 equ 01E16h ;# 
# 13742 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC1GLS1 equ 01E17h ;# 
# 13854 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC1GLS2 equ 01E18h ;# 
# 13966 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC1GLS3 equ 01E19h ;# 
# 14078 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC2CON equ 01E1Ah ;# 
# 14196 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC2POL equ 01E1Bh ;# 
# 14274 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC2SEL0 equ 01E1Ch ;# 
# 14378 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC2SEL1 equ 01E1Dh ;# 
# 14482 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC2SEL2 equ 01E1Eh ;# 
# 14586 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC2SEL3 equ 01E1Fh ;# 
# 14690 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC2GLS0 equ 01E20h ;# 
# 14802 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC2GLS1 equ 01E21h ;# 
# 14914 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC2GLS2 equ 01E22h ;# 
# 15026 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC2GLS3 equ 01E23h ;# 
# 15138 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC3CON equ 01E24h ;# 
# 15256 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC3POL equ 01E25h ;# 
# 15334 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC3SEL0 equ 01E26h ;# 
# 15438 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC3SEL1 equ 01E27h ;# 
# 15542 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC3SEL2 equ 01E28h ;# 
# 15646 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC3SEL3 equ 01E29h ;# 
# 15750 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC3GLS0 equ 01E2Ah ;# 
# 15862 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC3GLS1 equ 01E2Bh ;# 
# 15974 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC3GLS2 equ 01E2Ch ;# 
# 16086 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC3GLS3 equ 01E2Dh ;# 
# 16198 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC4CON equ 01E2Eh ;# 
# 16316 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC4POL equ 01E2Fh ;# 
# 16394 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC4SEL0 equ 01E30h ;# 
# 16498 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC4SEL1 equ 01E31h ;# 
# 16602 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC4SEL2 equ 01E32h ;# 
# 16706 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC4SEL3 equ 01E33h ;# 
# 16810 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC4GLS0 equ 01E34h ;# 
# 16922 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC4GLS1 equ 01E35h ;# 
# 17034 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC4GLS2 equ 01E36h ;# 
# 17146 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC4GLS3 equ 01E37h ;# 
# 17258 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PPSLOCK equ 01E8Fh ;# 
# 17278 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
INTPPS equ 01E90h ;# 
# 17336 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T0CKIPPS equ 01E91h ;# 
# 17394 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T1CKIPPS equ 01E92h ;# 
# 17452 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T1GPPS equ 01E93h ;# 
# 17510 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T2INPPS equ 01E9Ch ;# 
# 17568 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CCP1PPS equ 01EA1h ;# 
# 17626 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CCP2PPS equ 01EA2h ;# 
# 17684 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CWG1PPS equ 01EB1h ;# 
# 17742 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLCIN0PPS equ 01EBBh ;# 
# 17800 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLCIN1PPS equ 01EBCh ;# 
# 17858 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLCIN2PPS equ 01EBDh ;# 
# 17916 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLCIN3PPS equ 01EBEh ;# 
# 17974 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ADACTPPS equ 01EC3h ;# 
# 18032 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP1CLKPPS equ 01EC5h ;# 
# 18090 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP1DATPPS equ 01EC6h ;# 
# 18148 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP1SSPPS equ 01EC7h ;# 
# 18206 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP2CLKPPS equ 01EC8h ;# 
# 18264 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP2DATPPS equ 01EC9h ;# 
# 18322 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP2SSPPS equ 01ECAh ;# 
# 18380 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RX1DTPPS equ 01ECBh ;# 
# 18438 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TX1CKPPS equ 01ECCh ;# 
# 18496 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RX2DTPPS equ 01ECDh ;# 
# 18554 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TX2CKPPS equ 01ECEh ;# 
# 18612 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RA0PPS equ 01F10h ;# 
# 18656 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RA1PPS equ 01F11h ;# 
# 18700 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RA2PPS equ 01F12h ;# 
# 18744 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RA3PPS equ 01F13h ;# 
# 18788 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RA4PPS equ 01F14h ;# 
# 18832 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RA5PPS equ 01F15h ;# 
# 18876 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RA6PPS equ 01F16h ;# 
# 18920 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RA7PPS equ 01F17h ;# 
# 18964 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RB0PPS equ 01F18h ;# 
# 19008 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RB1PPS equ 01F19h ;# 
# 19052 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RB2PPS equ 01F1Ah ;# 
# 19096 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RB3PPS equ 01F1Bh ;# 
# 19140 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RB4PPS equ 01F1Ch ;# 
# 19184 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RB5PPS equ 01F1Dh ;# 
# 19228 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RB6PPS equ 01F1Eh ;# 
# 19272 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RB7PPS equ 01F1Fh ;# 
# 19316 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RC0PPS equ 01F20h ;# 
# 19360 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RC1PPS equ 01F21h ;# 
# 19404 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RC2PPS equ 01F22h ;# 
# 19448 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RC3PPS equ 01F23h ;# 
# 19492 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RC4PPS equ 01F24h ;# 
# 19536 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RC5PPS equ 01F25h ;# 
# 19580 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RC6PPS equ 01F26h ;# 
# 19624 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RC7PPS equ 01F27h ;# 
# 19668 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RD0PPS equ 01F28h ;# 
# 19712 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RD1PPS equ 01F29h ;# 
# 19756 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RD2PPS equ 01F2Ah ;# 
# 19800 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RD3PPS equ 01F2Bh ;# 
# 19844 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RD4PPS equ 01F2Ch ;# 
# 19888 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RD5PPS equ 01F2Dh ;# 
# 19932 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RD6PPS equ 01F2Eh ;# 
# 19976 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RD7PPS equ 01F2Fh ;# 
# 20020 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RE0PPS equ 01F30h ;# 
# 20064 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RE1PPS equ 01F31h ;# 
# 20108 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RE2PPS equ 01F32h ;# 
# 20152 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ANSELA equ 01F38h ;# 
# 20214 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
WPUA equ 01F39h ;# 
# 20276 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ODCONA equ 01F3Ah ;# 
# 20338 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SLRCONA equ 01F3Bh ;# 
# 20400 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
INLVLA equ 01F3Ch ;# 
# 20462 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
IOCAP equ 01F3Dh ;# 
# 20524 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
IOCAN equ 01F3Eh ;# 
# 20586 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
IOCAF equ 01F3Fh ;# 
# 20648 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ANSELB equ 01F43h ;# 
# 20710 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
WPUB equ 01F44h ;# 
# 20772 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ODCONB equ 01F45h ;# 
# 20834 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SLRCONB equ 01F46h ;# 
# 20896 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
INLVLB equ 01F47h ;# 
# 20958 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
IOCBP equ 01F48h ;# 
# 21020 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
IOCBN equ 01F49h ;# 
# 21082 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
IOCBF equ 01F4Ah ;# 
# 21144 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ANSELC equ 01F4Eh ;# 
# 21206 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
WPUC equ 01F4Fh ;# 
# 21268 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ODCONC equ 01F50h ;# 
# 21330 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SLRCONC equ 01F51h ;# 
# 21392 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
INLVLC equ 01F52h ;# 
# 21454 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
IOCCP equ 01F53h ;# 
# 21516 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
IOCCN equ 01F54h ;# 
# 21578 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
IOCCF equ 01F55h ;# 
# 21640 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ANSELD equ 01F59h ;# 
# 21702 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
WPUD equ 01F5Ah ;# 
# 21764 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ODCOND equ 01F5Bh ;# 
# 21826 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SLRCOND equ 01F5Ch ;# 
# 21888 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
INLVLD equ 01F5Dh ;# 
# 21950 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ANSELE equ 01F64h ;# 
# 21982 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
WPUE equ 01F65h ;# 
# 22020 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ODCONE equ 01F66h ;# 
# 22052 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SLRCONE equ 01F67h ;# 
# 22084 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
INLVLE equ 01F68h ;# 
# 22122 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
IOCEP equ 01F69h ;# 
# 22143 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
IOCEN equ 01F6Ah ;# 
# 22164 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
IOCEF equ 01F6Bh ;# 
# 22185 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
STATUS_SHAD equ 01FE4h ;# 
# 22205 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
WREG_SHAD equ 01FE5h ;# 
# 22225 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
BSR_SHAD equ 01FE6h ;# 
# 22245 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PCLATH_SHAD equ 01FE7h ;# 
# 22265 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
FSR0_SHAD equ 01FE8h ;# 
# 22272 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
FSR0L_SHAD equ 01FE8h ;# 
# 22292 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
FSR0H_SHAD equ 01FE9h ;# 
# 22312 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
FSR1L_SHAD equ 01FEAh ;# 
# 22332 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
FSR1H_SHAD equ 01FEBh ;# 
# 22352 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
STKPTR equ 01FEDh ;# 
# 22396 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TOSL equ 01FEEh ;# 
# 22466 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TOSH equ 01FEFh ;# 
# 52 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
INDF0 equ 00h ;# 
# 72 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
INDF1 equ 01h ;# 
# 92 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PCL equ 02h ;# 
# 112 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
STATUS equ 03h ;# 
# 175 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
FSR0L equ 04h ;# 
# 195 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
FSR0H equ 05h ;# 
# 219 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
FSR1L equ 06h ;# 
# 239 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
FSR1H equ 07h ;# 
# 259 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
BSR equ 08h ;# 
# 317 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
WREG equ 09h ;# 
# 337 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PCLATH equ 0Ah ;# 
# 357 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
INTCON equ 0Bh ;# 
# 390 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PORTA equ 0Ch ;# 
# 452 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PORTB equ 0Dh ;# 
# 514 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PORTC equ 0Eh ;# 
# 576 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PORTD equ 0Fh ;# 
# 638 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PORTE equ 010h ;# 
# 676 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TRISA equ 012h ;# 
# 738 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TRISB equ 013h ;# 
# 800 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TRISC equ 014h ;# 
# 862 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TRISD equ 015h ;# 
# 924 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TRISE equ 016h ;# 
# 956 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
LATA equ 018h ;# 
# 1018 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
LATB equ 019h ;# 
# 1080 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
LATC equ 01Ah ;# 
# 1142 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
LATD equ 01Bh ;# 
# 1204 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
LATE equ 01Ch ;# 
# 1236 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ADRES equ 09Bh ;# 
# 1243 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ADRESL equ 09Bh ;# 
# 1313 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ADRESH equ 09Ch ;# 
# 1383 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ADCON0 equ 09Dh ;# 
# 1460 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ADCON1 equ 09Eh ;# 
# 1526 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ADACT equ 09Fh ;# 
# 1578 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RC1REG equ 0119h ;# 
# 1583 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RCREG equ 0119h ;# 
# 1587 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RCREG1 equ 0119h ;# 
# 1632 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TX1REG equ 011Ah ;# 
# 1637 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TXREG1 equ 011Ah ;# 
# 1641 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TXREG equ 011Ah ;# 
# 1686 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SP1BRG equ 011Bh ;# 
# 1691 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SPBRG equ 011Bh ;# 
# 1698 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SP1BRGL equ 011Bh ;# 
# 1703 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SPBRG1 equ 011Bh ;# 
# 1707 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SPBRGL equ 011Bh ;# 
# 1752 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SP1BRGH equ 011Ch ;# 
# 1757 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SPBRGH equ 011Ch ;# 
# 1761 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SPBRGH1 equ 011Ch ;# 
# 1806 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RC1STA equ 011Dh ;# 
# 1811 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RCSTA1 equ 011Dh ;# 
# 1815 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RCSTA equ 011Dh ;# 
# 1986 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TX1STA equ 011Eh ;# 
# 1991 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TXSTA1 equ 011Eh ;# 
# 1995 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TXSTA equ 011Eh ;# 
# 2166 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
BAUD1CON equ 011Fh ;# 
# 2171 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
BAUDCON1 equ 011Fh ;# 
# 2175 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
BAUDCTL1 equ 011Fh ;# 
# 2179 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
BAUDCON equ 011Fh ;# 
# 2183 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
BAUDCTL equ 011Fh ;# 
# 2412 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP1BUF equ 018Ch ;# 
# 2432 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP1ADD equ 018Dh ;# 
# 2552 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP1MSK equ 018Eh ;# 
# 2622 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP1STAT equ 018Fh ;# 
# 2986 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP1CON1 equ 0190h ;# 
# 3106 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP1CON2 equ 0191h ;# 
# 3293 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP1CON3 equ 0192h ;# 
# 3355 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP2BUF equ 0196h ;# 
# 3375 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP2ADD equ 0197h ;# 
# 3495 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP2MSK equ 0198h ;# 
# 3565 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP2STAT equ 0199h ;# 
# 3929 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP2CON1 equ 019Ah ;# 
# 4049 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP2CON2 equ 019Bh ;# 
# 4236 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP2CON3 equ 019Ch ;# 
# 4298 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TMR1 equ 020Ch ;# 
# 4305 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TMR1L equ 020Ch ;# 
# 4475 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TMR1H equ 020Dh ;# 
# 4595 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T1CON equ 020Eh ;# 
# 4691 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T1GCON equ 020Fh ;# 
# 4696 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PR1 equ 020Fh ;# 
# 4887 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T1GATE equ 0210h ;# 
# 4892 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TMR1GATE equ 0210h ;# 
# 5053 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T1CLK equ 0211h ;# 
# 5058 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TMR1CLK equ 0211h ;# 
# 5195 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T2TMR equ 028Ch ;# 
# 5200 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TMR2 equ 028Ch ;# 
# 5249 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T2PR equ 028Dh ;# 
# 5254 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PR2 equ 028Dh ;# 
# 5303 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T2CON equ 028Eh ;# 
# 5449 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T2HLT equ 028Fh ;# 
# 5577 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T2CLKCON equ 0290h ;# 
# 5657 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T2RST equ 0291h ;# 
# 5737 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CCPR1 equ 030Ch ;# 
# 5744 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CCPR1L equ 030Ch ;# 
# 5764 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CCPR1H equ 030Dh ;# 
# 5784 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CCP1CON equ 030Eh ;# 
# 5902 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CCP1CAP equ 030Fh ;# 
# 5970 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CCPR2 equ 0310h ;# 
# 5977 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CCPR2L equ 0310h ;# 
# 5997 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CCPR2H equ 0311h ;# 
# 6017 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CCP2CON equ 0312h ;# 
# 6135 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CCP2CAP equ 0313h ;# 
# 6203 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM3DC equ 0314h ;# 
# 6210 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM3DCL equ 0314h ;# 
# 6276 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM3DCH equ 0315h ;# 
# 6446 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM3CON equ 0316h ;# 
# 6502 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM4DC equ 0318h ;# 
# 6509 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM4DCL equ 0318h ;# 
# 6575 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM4DCH equ 0319h ;# 
# 6745 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM4CON equ 031Ah ;# 
# 6801 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM5DC equ 031Ch ;# 
# 6808 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM5DCL equ 031Ch ;# 
# 6874 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM5DCH equ 031Dh ;# 
# 7044 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM5CON equ 031Eh ;# 
# 7100 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM6DC equ 038Ch ;# 
# 7107 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM6DCL equ 038Ch ;# 
# 7173 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM6DCH equ 038Dh ;# 
# 7343 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM6CON equ 038Eh ;# 
# 7401 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NCO1ACC equ 058Ch ;# 
# 7408 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NCO1ACCL equ 058Ch ;# 
# 7478 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NCO1ACCH equ 058Dh ;# 
# 7548 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NCO1ACCU equ 058Eh ;# 
# 7596 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NCO1INC equ 058Fh ;# 
# 7603 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NCO1INCL equ 058Fh ;# 
# 7673 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NCO1INCH equ 0590h ;# 
# 7743 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NCO1INCU equ 0591h ;# 
# 7789 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NCO1CON equ 0592h ;# 
# 7829 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NCO1CLK equ 0593h ;# 
# 7901 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TMR0L equ 059Ch ;# 
# 7906 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TMR0 equ 059Ch ;# 
# 8039 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TMR0H equ 059Dh ;# 
# 8044 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PR0 equ 059Dh ;# 
# 8293 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T0CON0 equ 059Eh ;# 
# 8363 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T0CON1 equ 059Fh ;# 
# 8474 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CWG1CLKCON equ 060Ch ;# 
# 8502 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CWG1DAT equ 060Dh ;# 
# 8548 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CWG1DBR equ 060Eh ;# 
# 8652 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CWG1DBF equ 060Fh ;# 
# 8756 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CWG1CON0 equ 0610h ;# 
# 8857 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CWG1CON1 equ 0611h ;# 
# 8935 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CWG1AS0 equ 0612h ;# 
# 9055 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CWG1AS1 equ 0613h ;# 
# 9099 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CWG1STR equ 0614h ;# 
# 9211 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIR0 equ 070Ch ;# 
# 9244 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIR1 equ 070Dh ;# 
# 9283 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIR2 equ 070Eh ;# 
# 9316 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIR3 equ 070Fh ;# 
# 9378 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIR4 equ 0710h ;# 
# 9404 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIR5 equ 0711h ;# 
# 9449 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIR6 equ 0712h ;# 
# 9475 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIR7 equ 0713h ;# 
# 9517 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIE0 equ 0716h ;# 
# 9550 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIE1 equ 0717h ;# 
# 9589 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIE2 equ 0718h ;# 
# 9622 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIE3 equ 0719h ;# 
# 9684 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIE4 equ 071Ah ;# 
# 9710 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIE5 equ 071Bh ;# 
# 9755 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIE6 equ 071Ch ;# 
# 9781 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIE7 equ 071Dh ;# 
# 9823 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PMD0 equ 0796h ;# 
# 9868 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PMD1 equ 0797h ;# 
# 9916 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PMD2 equ 0798h ;# 
# 9961 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PMD3 equ 0799h ;# 
# 10011 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PMD4 equ 079Ah ;# 
# 10056 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PMD5 equ 079Bh ;# 
# 10095 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
WDTCON0 equ 080Ch ;# 
# 10170 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
WDTCON1 equ 080Dh ;# 
# 10264 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
WDTPSL equ 080Eh ;# 
# 10392 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
WDTPSH equ 080Fh ;# 
# 10520 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
WDTTMR equ 0810h ;# 
# 10602 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
BORCON equ 0811h ;# 
# 10629 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PCON0 equ 0813h ;# 
# 10691 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PCON1 equ 0814h ;# 
# 10712 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NVMADR equ 081Ah ;# 
# 10719 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NVMADRL equ 081Ah ;# 
# 10781 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NVMADRH equ 081Bh ;# 
# 10837 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NVMDAT equ 081Ch ;# 
# 10844 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NVMDATL equ 081Ch ;# 
# 10906 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NVMDATH equ 081Dh ;# 
# 10956 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NVMCON1 equ 081Eh ;# 
# 11012 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NVMCON2 equ 081Fh ;# 
# 11032 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CPUDOZE equ 088Ch ;# 
# 11097 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
OSCCON1 equ 088Dh ;# 
# 11167 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
OSCCON2 equ 088Eh ;# 
# 11237 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
OSCCON3 equ 088Fh ;# 
# 11277 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
OSCSTAT equ 0890h ;# 
# 11334 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
OSCEN equ 0891h ;# 
# 11385 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
OSCTUNE equ 0892h ;# 
# 11443 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
OSCFRQ equ 0893h ;# 
# 11483 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLKRCON equ 0895h ;# 
# 11548 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLKRCLK equ 0896h ;# 
# 11594 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
FVRCON equ 090Ch ;# 
# 11670 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
DAC1CON0 equ 090Eh ;# 
# 11771 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
DAC1CON1 equ 090Fh ;# 
# 11823 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ZCDCON equ 091Fh ;# 
# 11869 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CMOUT equ 098Fh ;# 
# 11874 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CMSTAT equ 098Fh ;# 
# 11947 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CM1CON0 equ 0990h ;# 
# 12027 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CM1CON1 equ 0991h ;# 
# 12067 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CM1NCH equ 0992h ;# 
# 12127 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CM1PCH equ 0993h ;# 
# 12187 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CM2CON0 equ 0994h ;# 
# 12267 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CM2CON1 equ 0995h ;# 
# 12307 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CM2NCH equ 0996h ;# 
# 12367 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CM2PCH equ 0997h ;# 
# 12427 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RC2REG equ 0A19h ;# 
# 12432 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RCREG2 equ 0A19h ;# 
# 12465 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TX2REG equ 0A1Ah ;# 
# 12470 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TXREG2 equ 0A1Ah ;# 
# 12503 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SP2BRG equ 0A1Bh ;# 
# 12510 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SP2BRGL equ 0A1Bh ;# 
# 12515 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SPBRG2 equ 0A1Bh ;# 
# 12548 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SP2BRGH equ 0A1Ch ;# 
# 12553 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SPBRGH2 equ 0A1Ch ;# 
# 12586 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RC2STA equ 0A1Dh ;# 
# 12591 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RCSTA2 equ 0A1Dh ;# 
# 12708 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TX2STA equ 0A1Eh ;# 
# 12713 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TXSTA2 equ 0A1Eh ;# 
# 12830 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
BAUD2CON equ 0A1Fh ;# 
# 12835 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
BAUDCON2 equ 0A1Fh ;# 
# 12839 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
BAUDCTL2 equ 0A1Fh ;# 
# 12980 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLCDATA equ 01E0Fh ;# 
# 13018 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC1CON equ 01E10h ;# 
# 13136 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC1POL equ 01E11h ;# 
# 13214 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC1SEL0 equ 01E12h ;# 
# 13318 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC1SEL1 equ 01E13h ;# 
# 13422 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC1SEL2 equ 01E14h ;# 
# 13526 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC1SEL3 equ 01E15h ;# 
# 13630 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC1GLS0 equ 01E16h ;# 
# 13742 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC1GLS1 equ 01E17h ;# 
# 13854 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC1GLS2 equ 01E18h ;# 
# 13966 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC1GLS3 equ 01E19h ;# 
# 14078 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC2CON equ 01E1Ah ;# 
# 14196 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC2POL equ 01E1Bh ;# 
# 14274 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC2SEL0 equ 01E1Ch ;# 
# 14378 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC2SEL1 equ 01E1Dh ;# 
# 14482 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC2SEL2 equ 01E1Eh ;# 
# 14586 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC2SEL3 equ 01E1Fh ;# 
# 14690 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC2GLS0 equ 01E20h ;# 
# 14802 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC2GLS1 equ 01E21h ;# 
# 14914 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC2GLS2 equ 01E22h ;# 
# 15026 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC2GLS3 equ 01E23h ;# 
# 15138 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC3CON equ 01E24h ;# 
# 15256 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC3POL equ 01E25h ;# 
# 15334 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC3SEL0 equ 01E26h ;# 
# 15438 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC3SEL1 equ 01E27h ;# 
# 15542 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC3SEL2 equ 01E28h ;# 
# 15646 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC3SEL3 equ 01E29h ;# 
# 15750 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC3GLS0 equ 01E2Ah ;# 
# 15862 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC3GLS1 equ 01E2Bh ;# 
# 15974 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC3GLS2 equ 01E2Ch ;# 
# 16086 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC3GLS3 equ 01E2Dh ;# 
# 16198 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC4CON equ 01E2Eh ;# 
# 16316 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC4POL equ 01E2Fh ;# 
# 16394 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC4SEL0 equ 01E30h ;# 
# 16498 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC4SEL1 equ 01E31h ;# 
# 16602 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC4SEL2 equ 01E32h ;# 
# 16706 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC4SEL3 equ 01E33h ;# 
# 16810 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC4GLS0 equ 01E34h ;# 
# 16922 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC4GLS1 equ 01E35h ;# 
# 17034 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC4GLS2 equ 01E36h ;# 
# 17146 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC4GLS3 equ 01E37h ;# 
# 17258 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PPSLOCK equ 01E8Fh ;# 
# 17278 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
INTPPS equ 01E90h ;# 
# 17336 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T0CKIPPS equ 01E91h ;# 
# 17394 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T1CKIPPS equ 01E92h ;# 
# 17452 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T1GPPS equ 01E93h ;# 
# 17510 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T2INPPS equ 01E9Ch ;# 
# 17568 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CCP1PPS equ 01EA1h ;# 
# 17626 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CCP2PPS equ 01EA2h ;# 
# 17684 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CWG1PPS equ 01EB1h ;# 
# 17742 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLCIN0PPS equ 01EBBh ;# 
# 17800 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLCIN1PPS equ 01EBCh ;# 
# 17858 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLCIN2PPS equ 01EBDh ;# 
# 17916 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLCIN3PPS equ 01EBEh ;# 
# 17974 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ADACTPPS equ 01EC3h ;# 
# 18032 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP1CLKPPS equ 01EC5h ;# 
# 18090 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP1DATPPS equ 01EC6h ;# 
# 18148 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP1SSPPS equ 01EC7h ;# 
# 18206 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP2CLKPPS equ 01EC8h ;# 
# 18264 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP2DATPPS equ 01EC9h ;# 
# 18322 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP2SSPPS equ 01ECAh ;# 
# 18380 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RX1DTPPS equ 01ECBh ;# 
# 18438 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TX1CKPPS equ 01ECCh ;# 
# 18496 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RX2DTPPS equ 01ECDh ;# 
# 18554 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TX2CKPPS equ 01ECEh ;# 
# 18612 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RA0PPS equ 01F10h ;# 
# 18656 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RA1PPS equ 01F11h ;# 
# 18700 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RA2PPS equ 01F12h ;# 
# 18744 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RA3PPS equ 01F13h ;# 
# 18788 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RA4PPS equ 01F14h ;# 
# 18832 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RA5PPS equ 01F15h ;# 
# 18876 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RA6PPS equ 01F16h ;# 
# 18920 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RA7PPS equ 01F17h ;# 
# 18964 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RB0PPS equ 01F18h ;# 
# 19008 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RB1PPS equ 01F19h ;# 
# 19052 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RB2PPS equ 01F1Ah ;# 
# 19096 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RB3PPS equ 01F1Bh ;# 
# 19140 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RB4PPS equ 01F1Ch ;# 
# 19184 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RB5PPS equ 01F1Dh ;# 
# 19228 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RB6PPS equ 01F1Eh ;# 
# 19272 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RB7PPS equ 01F1Fh ;# 
# 19316 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RC0PPS equ 01F20h ;# 
# 19360 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RC1PPS equ 01F21h ;# 
# 19404 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RC2PPS equ 01F22h ;# 
# 19448 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RC3PPS equ 01F23h ;# 
# 19492 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RC4PPS equ 01F24h ;# 
# 19536 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RC5PPS equ 01F25h ;# 
# 19580 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RC6PPS equ 01F26h ;# 
# 19624 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RC7PPS equ 01F27h ;# 
# 19668 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RD0PPS equ 01F28h ;# 
# 19712 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RD1PPS equ 01F29h ;# 
# 19756 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RD2PPS equ 01F2Ah ;# 
# 19800 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RD3PPS equ 01F2Bh ;# 
# 19844 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RD4PPS equ 01F2Ch ;# 
# 19888 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RD5PPS equ 01F2Dh ;# 
# 19932 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RD6PPS equ 01F2Eh ;# 
# 19976 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RD7PPS equ 01F2Fh ;# 
# 20020 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RE0PPS equ 01F30h ;# 
# 20064 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RE1PPS equ 01F31h ;# 
# 20108 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RE2PPS equ 01F32h ;# 
# 20152 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ANSELA equ 01F38h ;# 
# 20214 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
WPUA equ 01F39h ;# 
# 20276 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ODCONA equ 01F3Ah ;# 
# 20338 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SLRCONA equ 01F3Bh ;# 
# 20400 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
INLVLA equ 01F3Ch ;# 
# 20462 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
IOCAP equ 01F3Dh ;# 
# 20524 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
IOCAN equ 01F3Eh ;# 
# 20586 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
IOCAF equ 01F3Fh ;# 
# 20648 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ANSELB equ 01F43h ;# 
# 20710 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
WPUB equ 01F44h ;# 
# 20772 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ODCONB equ 01F45h ;# 
# 20834 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SLRCONB equ 01F46h ;# 
# 20896 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
INLVLB equ 01F47h ;# 
# 20958 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
IOCBP equ 01F48h ;# 
# 21020 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
IOCBN equ 01F49h ;# 
# 21082 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
IOCBF equ 01F4Ah ;# 
# 21144 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ANSELC equ 01F4Eh ;# 
# 21206 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
WPUC equ 01F4Fh ;# 
# 21268 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ODCONC equ 01F50h ;# 
# 21330 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SLRCONC equ 01F51h ;# 
# 21392 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
INLVLC equ 01F52h ;# 
# 21454 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
IOCCP equ 01F53h ;# 
# 21516 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
IOCCN equ 01F54h ;# 
# 21578 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
IOCCF equ 01F55h ;# 
# 21640 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ANSELD equ 01F59h ;# 
# 21702 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
WPUD equ 01F5Ah ;# 
# 21764 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ODCOND equ 01F5Bh ;# 
# 21826 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SLRCOND equ 01F5Ch ;# 
# 21888 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
INLVLD equ 01F5Dh ;# 
# 21950 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ANSELE equ 01F64h ;# 
# 21982 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
WPUE equ 01F65h ;# 
# 22020 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ODCONE equ 01F66h ;# 
# 22052 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SLRCONE equ 01F67h ;# 
# 22084 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
INLVLE equ 01F68h ;# 
# 22122 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
IOCEP equ 01F69h ;# 
# 22143 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
IOCEN equ 01F6Ah ;# 
# 22164 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
IOCEF equ 01F6Bh ;# 
# 22185 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
STATUS_SHAD equ 01FE4h ;# 
# 22205 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
WREG_SHAD equ 01FE5h ;# 
# 22225 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
BSR_SHAD equ 01FE6h ;# 
# 22245 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PCLATH_SHAD equ 01FE7h ;# 
# 22265 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
FSR0_SHAD equ 01FE8h ;# 
# 22272 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
FSR0L_SHAD equ 01FE8h ;# 
# 22292 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
FSR0H_SHAD equ 01FE9h ;# 
# 22312 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
FSR1L_SHAD equ 01FEAh ;# 
# 22332 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
FSR1H_SHAD equ 01FEBh ;# 
# 22352 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
STKPTR equ 01FEDh ;# 
# 22396 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TOSL equ 01FEEh ;# 
# 22466 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TOSH equ 01FEFh ;# 
# 52 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
INDF0 equ 00h ;# 
# 72 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
INDF1 equ 01h ;# 
# 92 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PCL equ 02h ;# 
# 112 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
STATUS equ 03h ;# 
# 175 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
FSR0L equ 04h ;# 
# 195 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
FSR0H equ 05h ;# 
# 219 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
FSR1L equ 06h ;# 
# 239 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
FSR1H equ 07h ;# 
# 259 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
BSR equ 08h ;# 
# 317 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
WREG equ 09h ;# 
# 337 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PCLATH equ 0Ah ;# 
# 357 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
INTCON equ 0Bh ;# 
# 390 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PORTA equ 0Ch ;# 
# 452 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PORTB equ 0Dh ;# 
# 514 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PORTC equ 0Eh ;# 
# 576 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PORTD equ 0Fh ;# 
# 638 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PORTE equ 010h ;# 
# 676 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TRISA equ 012h ;# 
# 738 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TRISB equ 013h ;# 
# 800 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TRISC equ 014h ;# 
# 862 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TRISD equ 015h ;# 
# 924 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TRISE equ 016h ;# 
# 956 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
LATA equ 018h ;# 
# 1018 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
LATB equ 019h ;# 
# 1080 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
LATC equ 01Ah ;# 
# 1142 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
LATD equ 01Bh ;# 
# 1204 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
LATE equ 01Ch ;# 
# 1236 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ADRES equ 09Bh ;# 
# 1243 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ADRESL equ 09Bh ;# 
# 1313 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ADRESH equ 09Ch ;# 
# 1383 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ADCON0 equ 09Dh ;# 
# 1460 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ADCON1 equ 09Eh ;# 
# 1526 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ADACT equ 09Fh ;# 
# 1578 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RC1REG equ 0119h ;# 
# 1583 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RCREG equ 0119h ;# 
# 1587 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RCREG1 equ 0119h ;# 
# 1632 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TX1REG equ 011Ah ;# 
# 1637 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TXREG1 equ 011Ah ;# 
# 1641 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TXREG equ 011Ah ;# 
# 1686 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SP1BRG equ 011Bh ;# 
# 1691 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SPBRG equ 011Bh ;# 
# 1698 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SP1BRGL equ 011Bh ;# 
# 1703 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SPBRG1 equ 011Bh ;# 
# 1707 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SPBRGL equ 011Bh ;# 
# 1752 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SP1BRGH equ 011Ch ;# 
# 1757 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SPBRGH equ 011Ch ;# 
# 1761 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SPBRGH1 equ 011Ch ;# 
# 1806 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RC1STA equ 011Dh ;# 
# 1811 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RCSTA1 equ 011Dh ;# 
# 1815 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RCSTA equ 011Dh ;# 
# 1986 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TX1STA equ 011Eh ;# 
# 1991 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TXSTA1 equ 011Eh ;# 
# 1995 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TXSTA equ 011Eh ;# 
# 2166 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
BAUD1CON equ 011Fh ;# 
# 2171 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
BAUDCON1 equ 011Fh ;# 
# 2175 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
BAUDCTL1 equ 011Fh ;# 
# 2179 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
BAUDCON equ 011Fh ;# 
# 2183 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
BAUDCTL equ 011Fh ;# 
# 2412 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP1BUF equ 018Ch ;# 
# 2432 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP1ADD equ 018Dh ;# 
# 2552 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP1MSK equ 018Eh ;# 
# 2622 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP1STAT equ 018Fh ;# 
# 2986 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP1CON1 equ 0190h ;# 
# 3106 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP1CON2 equ 0191h ;# 
# 3293 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP1CON3 equ 0192h ;# 
# 3355 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP2BUF equ 0196h ;# 
# 3375 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP2ADD equ 0197h ;# 
# 3495 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP2MSK equ 0198h ;# 
# 3565 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP2STAT equ 0199h ;# 
# 3929 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP2CON1 equ 019Ah ;# 
# 4049 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP2CON2 equ 019Bh ;# 
# 4236 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP2CON3 equ 019Ch ;# 
# 4298 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TMR1 equ 020Ch ;# 
# 4305 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TMR1L equ 020Ch ;# 
# 4475 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TMR1H equ 020Dh ;# 
# 4595 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T1CON equ 020Eh ;# 
# 4691 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T1GCON equ 020Fh ;# 
# 4696 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PR1 equ 020Fh ;# 
# 4887 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T1GATE equ 0210h ;# 
# 4892 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TMR1GATE equ 0210h ;# 
# 5053 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T1CLK equ 0211h ;# 
# 5058 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TMR1CLK equ 0211h ;# 
# 5195 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T2TMR equ 028Ch ;# 
# 5200 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TMR2 equ 028Ch ;# 
# 5249 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T2PR equ 028Dh ;# 
# 5254 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PR2 equ 028Dh ;# 
# 5303 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T2CON equ 028Eh ;# 
# 5449 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T2HLT equ 028Fh ;# 
# 5577 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T2CLKCON equ 0290h ;# 
# 5657 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T2RST equ 0291h ;# 
# 5737 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CCPR1 equ 030Ch ;# 
# 5744 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CCPR1L equ 030Ch ;# 
# 5764 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CCPR1H equ 030Dh ;# 
# 5784 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CCP1CON equ 030Eh ;# 
# 5902 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CCP1CAP equ 030Fh ;# 
# 5970 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CCPR2 equ 0310h ;# 
# 5977 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CCPR2L equ 0310h ;# 
# 5997 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CCPR2H equ 0311h ;# 
# 6017 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CCP2CON equ 0312h ;# 
# 6135 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CCP2CAP equ 0313h ;# 
# 6203 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM3DC equ 0314h ;# 
# 6210 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM3DCL equ 0314h ;# 
# 6276 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM3DCH equ 0315h ;# 
# 6446 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM3CON equ 0316h ;# 
# 6502 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM4DC equ 0318h ;# 
# 6509 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM4DCL equ 0318h ;# 
# 6575 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM4DCH equ 0319h ;# 
# 6745 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM4CON equ 031Ah ;# 
# 6801 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM5DC equ 031Ch ;# 
# 6808 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM5DCL equ 031Ch ;# 
# 6874 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM5DCH equ 031Dh ;# 
# 7044 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM5CON equ 031Eh ;# 
# 7100 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM6DC equ 038Ch ;# 
# 7107 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM6DCL equ 038Ch ;# 
# 7173 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM6DCH equ 038Dh ;# 
# 7343 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM6CON equ 038Eh ;# 
# 7401 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NCO1ACC equ 058Ch ;# 
# 7408 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NCO1ACCL equ 058Ch ;# 
# 7478 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NCO1ACCH equ 058Dh ;# 
# 7548 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NCO1ACCU equ 058Eh ;# 
# 7596 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NCO1INC equ 058Fh ;# 
# 7603 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NCO1INCL equ 058Fh ;# 
# 7673 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NCO1INCH equ 0590h ;# 
# 7743 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NCO1INCU equ 0591h ;# 
# 7789 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NCO1CON equ 0592h ;# 
# 7829 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NCO1CLK equ 0593h ;# 
# 7901 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TMR0L equ 059Ch ;# 
# 7906 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TMR0 equ 059Ch ;# 
# 8039 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TMR0H equ 059Dh ;# 
# 8044 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PR0 equ 059Dh ;# 
# 8293 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T0CON0 equ 059Eh ;# 
# 8363 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T0CON1 equ 059Fh ;# 
# 8474 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CWG1CLKCON equ 060Ch ;# 
# 8502 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CWG1DAT equ 060Dh ;# 
# 8548 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CWG1DBR equ 060Eh ;# 
# 8652 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CWG1DBF equ 060Fh ;# 
# 8756 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CWG1CON0 equ 0610h ;# 
# 8857 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CWG1CON1 equ 0611h ;# 
# 8935 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CWG1AS0 equ 0612h ;# 
# 9055 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CWG1AS1 equ 0613h ;# 
# 9099 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CWG1STR equ 0614h ;# 
# 9211 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIR0 equ 070Ch ;# 
# 9244 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIR1 equ 070Dh ;# 
# 9283 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIR2 equ 070Eh ;# 
# 9316 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIR3 equ 070Fh ;# 
# 9378 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIR4 equ 0710h ;# 
# 9404 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIR5 equ 0711h ;# 
# 9449 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIR6 equ 0712h ;# 
# 9475 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIR7 equ 0713h ;# 
# 9517 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIE0 equ 0716h ;# 
# 9550 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIE1 equ 0717h ;# 
# 9589 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIE2 equ 0718h ;# 
# 9622 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIE3 equ 0719h ;# 
# 9684 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIE4 equ 071Ah ;# 
# 9710 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIE5 equ 071Bh ;# 
# 9755 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIE6 equ 071Ch ;# 
# 9781 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIE7 equ 071Dh ;# 
# 9823 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PMD0 equ 0796h ;# 
# 9868 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PMD1 equ 0797h ;# 
# 9916 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PMD2 equ 0798h ;# 
# 9961 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PMD3 equ 0799h ;# 
# 10011 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PMD4 equ 079Ah ;# 
# 10056 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PMD5 equ 079Bh ;# 
# 10095 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
WDTCON0 equ 080Ch ;# 
# 10170 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
WDTCON1 equ 080Dh ;# 
# 10264 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
WDTPSL equ 080Eh ;# 
# 10392 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
WDTPSH equ 080Fh ;# 
# 10520 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
WDTTMR equ 0810h ;# 
# 10602 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
BORCON equ 0811h ;# 
# 10629 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PCON0 equ 0813h ;# 
# 10691 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PCON1 equ 0814h ;# 
# 10712 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NVMADR equ 081Ah ;# 
# 10719 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NVMADRL equ 081Ah ;# 
# 10781 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NVMADRH equ 081Bh ;# 
# 10837 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NVMDAT equ 081Ch ;# 
# 10844 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NVMDATL equ 081Ch ;# 
# 10906 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NVMDATH equ 081Dh ;# 
# 10956 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NVMCON1 equ 081Eh ;# 
# 11012 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NVMCON2 equ 081Fh ;# 
# 11032 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CPUDOZE equ 088Ch ;# 
# 11097 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
OSCCON1 equ 088Dh ;# 
# 11167 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
OSCCON2 equ 088Eh ;# 
# 11237 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
OSCCON3 equ 088Fh ;# 
# 11277 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
OSCSTAT equ 0890h ;# 
# 11334 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
OSCEN equ 0891h ;# 
# 11385 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
OSCTUNE equ 0892h ;# 
# 11443 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
OSCFRQ equ 0893h ;# 
# 11483 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLKRCON equ 0895h ;# 
# 11548 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLKRCLK equ 0896h ;# 
# 11594 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
FVRCON equ 090Ch ;# 
# 11670 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
DAC1CON0 equ 090Eh ;# 
# 11771 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
DAC1CON1 equ 090Fh ;# 
# 11823 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ZCDCON equ 091Fh ;# 
# 11869 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CMOUT equ 098Fh ;# 
# 11874 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CMSTAT equ 098Fh ;# 
# 11947 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CM1CON0 equ 0990h ;# 
# 12027 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CM1CON1 equ 0991h ;# 
# 12067 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CM1NCH equ 0992h ;# 
# 12127 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CM1PCH equ 0993h ;# 
# 12187 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CM2CON0 equ 0994h ;# 
# 12267 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CM2CON1 equ 0995h ;# 
# 12307 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CM2NCH equ 0996h ;# 
# 12367 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CM2PCH equ 0997h ;# 
# 12427 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RC2REG equ 0A19h ;# 
# 12432 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RCREG2 equ 0A19h ;# 
# 12465 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TX2REG equ 0A1Ah ;# 
# 12470 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TXREG2 equ 0A1Ah ;# 
# 12503 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SP2BRG equ 0A1Bh ;# 
# 12510 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SP2BRGL equ 0A1Bh ;# 
# 12515 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SPBRG2 equ 0A1Bh ;# 
# 12548 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SP2BRGH equ 0A1Ch ;# 
# 12553 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SPBRGH2 equ 0A1Ch ;# 
# 12586 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RC2STA equ 0A1Dh ;# 
# 12591 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RCSTA2 equ 0A1Dh ;# 
# 12708 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TX2STA equ 0A1Eh ;# 
# 12713 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TXSTA2 equ 0A1Eh ;# 
# 12830 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
BAUD2CON equ 0A1Fh ;# 
# 12835 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
BAUDCON2 equ 0A1Fh ;# 
# 12839 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
BAUDCTL2 equ 0A1Fh ;# 
# 12980 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLCDATA equ 01E0Fh ;# 
# 13018 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC1CON equ 01E10h ;# 
# 13136 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC1POL equ 01E11h ;# 
# 13214 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC1SEL0 equ 01E12h ;# 
# 13318 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC1SEL1 equ 01E13h ;# 
# 13422 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC1SEL2 equ 01E14h ;# 
# 13526 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC1SEL3 equ 01E15h ;# 
# 13630 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC1GLS0 equ 01E16h ;# 
# 13742 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC1GLS1 equ 01E17h ;# 
# 13854 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC1GLS2 equ 01E18h ;# 
# 13966 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC1GLS3 equ 01E19h ;# 
# 14078 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC2CON equ 01E1Ah ;# 
# 14196 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC2POL equ 01E1Bh ;# 
# 14274 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC2SEL0 equ 01E1Ch ;# 
# 14378 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC2SEL1 equ 01E1Dh ;# 
# 14482 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC2SEL2 equ 01E1Eh ;# 
# 14586 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC2SEL3 equ 01E1Fh ;# 
# 14690 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC2GLS0 equ 01E20h ;# 
# 14802 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC2GLS1 equ 01E21h ;# 
# 14914 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC2GLS2 equ 01E22h ;# 
# 15026 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC2GLS3 equ 01E23h ;# 
# 15138 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC3CON equ 01E24h ;# 
# 15256 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC3POL equ 01E25h ;# 
# 15334 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC3SEL0 equ 01E26h ;# 
# 15438 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC3SEL1 equ 01E27h ;# 
# 15542 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC3SEL2 equ 01E28h ;# 
# 15646 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC3SEL3 equ 01E29h ;# 
# 15750 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC3GLS0 equ 01E2Ah ;# 
# 15862 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC3GLS1 equ 01E2Bh ;# 
# 15974 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC3GLS2 equ 01E2Ch ;# 
# 16086 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC3GLS3 equ 01E2Dh ;# 
# 16198 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC4CON equ 01E2Eh ;# 
# 16316 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC4POL equ 01E2Fh ;# 
# 16394 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC4SEL0 equ 01E30h ;# 
# 16498 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC4SEL1 equ 01E31h ;# 
# 16602 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC4SEL2 equ 01E32h ;# 
# 16706 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC4SEL3 equ 01E33h ;# 
# 16810 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC4GLS0 equ 01E34h ;# 
# 16922 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC4GLS1 equ 01E35h ;# 
# 17034 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC4GLS2 equ 01E36h ;# 
# 17146 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC4GLS3 equ 01E37h ;# 
# 17258 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PPSLOCK equ 01E8Fh ;# 
# 17278 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
INTPPS equ 01E90h ;# 
# 17336 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T0CKIPPS equ 01E91h ;# 
# 17394 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T1CKIPPS equ 01E92h ;# 
# 17452 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T1GPPS equ 01E93h ;# 
# 17510 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T2INPPS equ 01E9Ch ;# 
# 17568 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CCP1PPS equ 01EA1h ;# 
# 17626 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CCP2PPS equ 01EA2h ;# 
# 17684 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CWG1PPS equ 01EB1h ;# 
# 17742 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLCIN0PPS equ 01EBBh ;# 
# 17800 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLCIN1PPS equ 01EBCh ;# 
# 17858 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLCIN2PPS equ 01EBDh ;# 
# 17916 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLCIN3PPS equ 01EBEh ;# 
# 17974 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ADACTPPS equ 01EC3h ;# 
# 18032 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP1CLKPPS equ 01EC5h ;# 
# 18090 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP1DATPPS equ 01EC6h ;# 
# 18148 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP1SSPPS equ 01EC7h ;# 
# 18206 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP2CLKPPS equ 01EC8h ;# 
# 18264 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP2DATPPS equ 01EC9h ;# 
# 18322 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP2SSPPS equ 01ECAh ;# 
# 18380 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RX1DTPPS equ 01ECBh ;# 
# 18438 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TX1CKPPS equ 01ECCh ;# 
# 18496 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RX2DTPPS equ 01ECDh ;# 
# 18554 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TX2CKPPS equ 01ECEh ;# 
# 18612 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RA0PPS equ 01F10h ;# 
# 18656 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RA1PPS equ 01F11h ;# 
# 18700 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RA2PPS equ 01F12h ;# 
# 18744 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RA3PPS equ 01F13h ;# 
# 18788 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RA4PPS equ 01F14h ;# 
# 18832 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RA5PPS equ 01F15h ;# 
# 18876 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RA6PPS equ 01F16h ;# 
# 18920 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RA7PPS equ 01F17h ;# 
# 18964 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RB0PPS equ 01F18h ;# 
# 19008 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RB1PPS equ 01F19h ;# 
# 19052 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RB2PPS equ 01F1Ah ;# 
# 19096 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RB3PPS equ 01F1Bh ;# 
# 19140 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RB4PPS equ 01F1Ch ;# 
# 19184 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RB5PPS equ 01F1Dh ;# 
# 19228 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RB6PPS equ 01F1Eh ;# 
# 19272 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RB7PPS equ 01F1Fh ;# 
# 19316 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RC0PPS equ 01F20h ;# 
# 19360 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RC1PPS equ 01F21h ;# 
# 19404 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RC2PPS equ 01F22h ;# 
# 19448 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RC3PPS equ 01F23h ;# 
# 19492 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RC4PPS equ 01F24h ;# 
# 19536 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RC5PPS equ 01F25h ;# 
# 19580 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RC6PPS equ 01F26h ;# 
# 19624 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RC7PPS equ 01F27h ;# 
# 19668 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RD0PPS equ 01F28h ;# 
# 19712 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RD1PPS equ 01F29h ;# 
# 19756 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RD2PPS equ 01F2Ah ;# 
# 19800 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RD3PPS equ 01F2Bh ;# 
# 19844 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RD4PPS equ 01F2Ch ;# 
# 19888 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RD5PPS equ 01F2Dh ;# 
# 19932 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RD6PPS equ 01F2Eh ;# 
# 19976 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RD7PPS equ 01F2Fh ;# 
# 20020 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RE0PPS equ 01F30h ;# 
# 20064 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RE1PPS equ 01F31h ;# 
# 20108 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RE2PPS equ 01F32h ;# 
# 20152 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ANSELA equ 01F38h ;# 
# 20214 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
WPUA equ 01F39h ;# 
# 20276 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ODCONA equ 01F3Ah ;# 
# 20338 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SLRCONA equ 01F3Bh ;# 
# 20400 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
INLVLA equ 01F3Ch ;# 
# 20462 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
IOCAP equ 01F3Dh ;# 
# 20524 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
IOCAN equ 01F3Eh ;# 
# 20586 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
IOCAF equ 01F3Fh ;# 
# 20648 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ANSELB equ 01F43h ;# 
# 20710 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
WPUB equ 01F44h ;# 
# 20772 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ODCONB equ 01F45h ;# 
# 20834 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SLRCONB equ 01F46h ;# 
# 20896 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
INLVLB equ 01F47h ;# 
# 20958 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
IOCBP equ 01F48h ;# 
# 21020 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
IOCBN equ 01F49h ;# 
# 21082 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
IOCBF equ 01F4Ah ;# 
# 21144 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ANSELC equ 01F4Eh ;# 
# 21206 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
WPUC equ 01F4Fh ;# 
# 21268 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ODCONC equ 01F50h ;# 
# 21330 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SLRCONC equ 01F51h ;# 
# 21392 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
INLVLC equ 01F52h ;# 
# 21454 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
IOCCP equ 01F53h ;# 
# 21516 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
IOCCN equ 01F54h ;# 
# 21578 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
IOCCF equ 01F55h ;# 
# 21640 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ANSELD equ 01F59h ;# 
# 21702 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
WPUD equ 01F5Ah ;# 
# 21764 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ODCOND equ 01F5Bh ;# 
# 21826 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SLRCOND equ 01F5Ch ;# 
# 21888 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
INLVLD equ 01F5Dh ;# 
# 21950 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ANSELE equ 01F64h ;# 
# 21982 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
WPUE equ 01F65h ;# 
# 22020 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ODCONE equ 01F66h ;# 
# 22052 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SLRCONE equ 01F67h ;# 
# 22084 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
INLVLE equ 01F68h ;# 
# 22122 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
IOCEP equ 01F69h ;# 
# 22143 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
IOCEN equ 01F6Ah ;# 
# 22164 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
IOCEF equ 01F6Bh ;# 
# 22185 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
STATUS_SHAD equ 01FE4h ;# 
# 22205 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
WREG_SHAD equ 01FE5h ;# 
# 22225 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
BSR_SHAD equ 01FE6h ;# 
# 22245 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PCLATH_SHAD equ 01FE7h ;# 
# 22265 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
FSR0_SHAD equ 01FE8h ;# 
# 22272 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
FSR0L_SHAD equ 01FE8h ;# 
# 22292 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
FSR0H_SHAD equ 01FE9h ;# 
# 22312 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
FSR1L_SHAD equ 01FEAh ;# 
# 22332 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
FSR1H_SHAD equ 01FEBh ;# 
# 22352 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
STKPTR equ 01FEDh ;# 
# 22396 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TOSL equ 01FEEh ;# 
# 22466 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TOSH equ 01FEFh ;# 
# 52 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
INDF0 equ 00h ;# 
# 72 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
INDF1 equ 01h ;# 
# 92 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PCL equ 02h ;# 
# 112 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
STATUS equ 03h ;# 
# 175 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
FSR0L equ 04h ;# 
# 195 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
FSR0H equ 05h ;# 
# 219 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
FSR1L equ 06h ;# 
# 239 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
FSR1H equ 07h ;# 
# 259 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
BSR equ 08h ;# 
# 317 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
WREG equ 09h ;# 
# 337 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PCLATH equ 0Ah ;# 
# 357 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
INTCON equ 0Bh ;# 
# 390 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PORTA equ 0Ch ;# 
# 452 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PORTB equ 0Dh ;# 
# 514 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PORTC equ 0Eh ;# 
# 576 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PORTD equ 0Fh ;# 
# 638 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PORTE equ 010h ;# 
# 676 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TRISA equ 012h ;# 
# 738 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TRISB equ 013h ;# 
# 800 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TRISC equ 014h ;# 
# 862 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TRISD equ 015h ;# 
# 924 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TRISE equ 016h ;# 
# 956 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
LATA equ 018h ;# 
# 1018 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
LATB equ 019h ;# 
# 1080 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
LATC equ 01Ah ;# 
# 1142 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
LATD equ 01Bh ;# 
# 1204 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
LATE equ 01Ch ;# 
# 1236 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ADRES equ 09Bh ;# 
# 1243 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ADRESL equ 09Bh ;# 
# 1313 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ADRESH equ 09Ch ;# 
# 1383 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ADCON0 equ 09Dh ;# 
# 1460 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ADCON1 equ 09Eh ;# 
# 1526 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ADACT equ 09Fh ;# 
# 1578 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RC1REG equ 0119h ;# 
# 1583 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RCREG equ 0119h ;# 
# 1587 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RCREG1 equ 0119h ;# 
# 1632 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TX1REG equ 011Ah ;# 
# 1637 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TXREG1 equ 011Ah ;# 
# 1641 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TXREG equ 011Ah ;# 
# 1686 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SP1BRG equ 011Bh ;# 
# 1691 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SPBRG equ 011Bh ;# 
# 1698 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SP1BRGL equ 011Bh ;# 
# 1703 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SPBRG1 equ 011Bh ;# 
# 1707 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SPBRGL equ 011Bh ;# 
# 1752 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SP1BRGH equ 011Ch ;# 
# 1757 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SPBRGH equ 011Ch ;# 
# 1761 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SPBRGH1 equ 011Ch ;# 
# 1806 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RC1STA equ 011Dh ;# 
# 1811 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RCSTA1 equ 011Dh ;# 
# 1815 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RCSTA equ 011Dh ;# 
# 1986 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TX1STA equ 011Eh ;# 
# 1991 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TXSTA1 equ 011Eh ;# 
# 1995 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TXSTA equ 011Eh ;# 
# 2166 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
BAUD1CON equ 011Fh ;# 
# 2171 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
BAUDCON1 equ 011Fh ;# 
# 2175 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
BAUDCTL1 equ 011Fh ;# 
# 2179 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
BAUDCON equ 011Fh ;# 
# 2183 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
BAUDCTL equ 011Fh ;# 
# 2412 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP1BUF equ 018Ch ;# 
# 2432 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP1ADD equ 018Dh ;# 
# 2552 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP1MSK equ 018Eh ;# 
# 2622 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP1STAT equ 018Fh ;# 
# 2986 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP1CON1 equ 0190h ;# 
# 3106 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP1CON2 equ 0191h ;# 
# 3293 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP1CON3 equ 0192h ;# 
# 3355 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP2BUF equ 0196h ;# 
# 3375 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP2ADD equ 0197h ;# 
# 3495 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP2MSK equ 0198h ;# 
# 3565 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP2STAT equ 0199h ;# 
# 3929 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP2CON1 equ 019Ah ;# 
# 4049 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP2CON2 equ 019Bh ;# 
# 4236 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP2CON3 equ 019Ch ;# 
# 4298 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TMR1 equ 020Ch ;# 
# 4305 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TMR1L equ 020Ch ;# 
# 4475 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TMR1H equ 020Dh ;# 
# 4595 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T1CON equ 020Eh ;# 
# 4691 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T1GCON equ 020Fh ;# 
# 4696 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PR1 equ 020Fh ;# 
# 4887 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T1GATE equ 0210h ;# 
# 4892 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TMR1GATE equ 0210h ;# 
# 5053 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T1CLK equ 0211h ;# 
# 5058 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TMR1CLK equ 0211h ;# 
# 5195 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T2TMR equ 028Ch ;# 
# 5200 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TMR2 equ 028Ch ;# 
# 5249 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T2PR equ 028Dh ;# 
# 5254 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PR2 equ 028Dh ;# 
# 5303 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T2CON equ 028Eh ;# 
# 5449 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T2HLT equ 028Fh ;# 
# 5577 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T2CLKCON equ 0290h ;# 
# 5657 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T2RST equ 0291h ;# 
# 5737 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CCPR1 equ 030Ch ;# 
# 5744 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CCPR1L equ 030Ch ;# 
# 5764 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CCPR1H equ 030Dh ;# 
# 5784 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CCP1CON equ 030Eh ;# 
# 5902 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CCP1CAP equ 030Fh ;# 
# 5970 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CCPR2 equ 0310h ;# 
# 5977 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CCPR2L equ 0310h ;# 
# 5997 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CCPR2H equ 0311h ;# 
# 6017 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CCP2CON equ 0312h ;# 
# 6135 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CCP2CAP equ 0313h ;# 
# 6203 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM3DC equ 0314h ;# 
# 6210 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM3DCL equ 0314h ;# 
# 6276 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM3DCH equ 0315h ;# 
# 6446 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM3CON equ 0316h ;# 
# 6502 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM4DC equ 0318h ;# 
# 6509 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM4DCL equ 0318h ;# 
# 6575 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM4DCH equ 0319h ;# 
# 6745 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM4CON equ 031Ah ;# 
# 6801 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM5DC equ 031Ch ;# 
# 6808 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM5DCL equ 031Ch ;# 
# 6874 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM5DCH equ 031Dh ;# 
# 7044 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM5CON equ 031Eh ;# 
# 7100 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM6DC equ 038Ch ;# 
# 7107 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM6DCL equ 038Ch ;# 
# 7173 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM6DCH equ 038Dh ;# 
# 7343 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PWM6CON equ 038Eh ;# 
# 7401 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NCO1ACC equ 058Ch ;# 
# 7408 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NCO1ACCL equ 058Ch ;# 
# 7478 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NCO1ACCH equ 058Dh ;# 
# 7548 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NCO1ACCU equ 058Eh ;# 
# 7596 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NCO1INC equ 058Fh ;# 
# 7603 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NCO1INCL equ 058Fh ;# 
# 7673 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NCO1INCH equ 0590h ;# 
# 7743 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NCO1INCU equ 0591h ;# 
# 7789 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NCO1CON equ 0592h ;# 
# 7829 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NCO1CLK equ 0593h ;# 
# 7901 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TMR0L equ 059Ch ;# 
# 7906 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TMR0 equ 059Ch ;# 
# 8039 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TMR0H equ 059Dh ;# 
# 8044 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PR0 equ 059Dh ;# 
# 8293 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T0CON0 equ 059Eh ;# 
# 8363 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T0CON1 equ 059Fh ;# 
# 8474 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CWG1CLKCON equ 060Ch ;# 
# 8502 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CWG1DAT equ 060Dh ;# 
# 8548 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CWG1DBR equ 060Eh ;# 
# 8652 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CWG1DBF equ 060Fh ;# 
# 8756 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CWG1CON0 equ 0610h ;# 
# 8857 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CWG1CON1 equ 0611h ;# 
# 8935 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CWG1AS0 equ 0612h ;# 
# 9055 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CWG1AS1 equ 0613h ;# 
# 9099 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CWG1STR equ 0614h ;# 
# 9211 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIR0 equ 070Ch ;# 
# 9244 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIR1 equ 070Dh ;# 
# 9283 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIR2 equ 070Eh ;# 
# 9316 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIR3 equ 070Fh ;# 
# 9378 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIR4 equ 0710h ;# 
# 9404 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIR5 equ 0711h ;# 
# 9449 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIR6 equ 0712h ;# 
# 9475 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIR7 equ 0713h ;# 
# 9517 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIE0 equ 0716h ;# 
# 9550 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIE1 equ 0717h ;# 
# 9589 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIE2 equ 0718h ;# 
# 9622 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIE3 equ 0719h ;# 
# 9684 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIE4 equ 071Ah ;# 
# 9710 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIE5 equ 071Bh ;# 
# 9755 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIE6 equ 071Ch ;# 
# 9781 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PIE7 equ 071Dh ;# 
# 9823 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PMD0 equ 0796h ;# 
# 9868 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PMD1 equ 0797h ;# 
# 9916 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PMD2 equ 0798h ;# 
# 9961 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PMD3 equ 0799h ;# 
# 10011 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PMD4 equ 079Ah ;# 
# 10056 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PMD5 equ 079Bh ;# 
# 10095 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
WDTCON0 equ 080Ch ;# 
# 10170 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
WDTCON1 equ 080Dh ;# 
# 10264 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
WDTPSL equ 080Eh ;# 
# 10392 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
WDTPSH equ 080Fh ;# 
# 10520 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
WDTTMR equ 0810h ;# 
# 10602 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
BORCON equ 0811h ;# 
# 10629 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PCON0 equ 0813h ;# 
# 10691 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PCON1 equ 0814h ;# 
# 10712 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NVMADR equ 081Ah ;# 
# 10719 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NVMADRL equ 081Ah ;# 
# 10781 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NVMADRH equ 081Bh ;# 
# 10837 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NVMDAT equ 081Ch ;# 
# 10844 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NVMDATL equ 081Ch ;# 
# 10906 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NVMDATH equ 081Dh ;# 
# 10956 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NVMCON1 equ 081Eh ;# 
# 11012 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
NVMCON2 equ 081Fh ;# 
# 11032 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CPUDOZE equ 088Ch ;# 
# 11097 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
OSCCON1 equ 088Dh ;# 
# 11167 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
OSCCON2 equ 088Eh ;# 
# 11237 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
OSCCON3 equ 088Fh ;# 
# 11277 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
OSCSTAT equ 0890h ;# 
# 11334 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
OSCEN equ 0891h ;# 
# 11385 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
OSCTUNE equ 0892h ;# 
# 11443 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
OSCFRQ equ 0893h ;# 
# 11483 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLKRCON equ 0895h ;# 
# 11548 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLKRCLK equ 0896h ;# 
# 11594 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
FVRCON equ 090Ch ;# 
# 11670 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
DAC1CON0 equ 090Eh ;# 
# 11771 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
DAC1CON1 equ 090Fh ;# 
# 11823 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ZCDCON equ 091Fh ;# 
# 11869 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CMOUT equ 098Fh ;# 
# 11874 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CMSTAT equ 098Fh ;# 
# 11947 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CM1CON0 equ 0990h ;# 
# 12027 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CM1CON1 equ 0991h ;# 
# 12067 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CM1NCH equ 0992h ;# 
# 12127 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CM1PCH equ 0993h ;# 
# 12187 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CM2CON0 equ 0994h ;# 
# 12267 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CM2CON1 equ 0995h ;# 
# 12307 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CM2NCH equ 0996h ;# 
# 12367 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CM2PCH equ 0997h ;# 
# 12427 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RC2REG equ 0A19h ;# 
# 12432 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RCREG2 equ 0A19h ;# 
# 12465 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TX2REG equ 0A1Ah ;# 
# 12470 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TXREG2 equ 0A1Ah ;# 
# 12503 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SP2BRG equ 0A1Bh ;# 
# 12510 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SP2BRGL equ 0A1Bh ;# 
# 12515 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SPBRG2 equ 0A1Bh ;# 
# 12548 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SP2BRGH equ 0A1Ch ;# 
# 12553 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SPBRGH2 equ 0A1Ch ;# 
# 12586 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RC2STA equ 0A1Dh ;# 
# 12591 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RCSTA2 equ 0A1Dh ;# 
# 12708 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TX2STA equ 0A1Eh ;# 
# 12713 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TXSTA2 equ 0A1Eh ;# 
# 12830 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
BAUD2CON equ 0A1Fh ;# 
# 12835 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
BAUDCON2 equ 0A1Fh ;# 
# 12839 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
BAUDCTL2 equ 0A1Fh ;# 
# 12980 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLCDATA equ 01E0Fh ;# 
# 13018 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC1CON equ 01E10h ;# 
# 13136 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC1POL equ 01E11h ;# 
# 13214 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC1SEL0 equ 01E12h ;# 
# 13318 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC1SEL1 equ 01E13h ;# 
# 13422 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC1SEL2 equ 01E14h ;# 
# 13526 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC1SEL3 equ 01E15h ;# 
# 13630 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC1GLS0 equ 01E16h ;# 
# 13742 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC1GLS1 equ 01E17h ;# 
# 13854 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC1GLS2 equ 01E18h ;# 
# 13966 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC1GLS3 equ 01E19h ;# 
# 14078 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC2CON equ 01E1Ah ;# 
# 14196 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC2POL equ 01E1Bh ;# 
# 14274 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC2SEL0 equ 01E1Ch ;# 
# 14378 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC2SEL1 equ 01E1Dh ;# 
# 14482 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC2SEL2 equ 01E1Eh ;# 
# 14586 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC2SEL3 equ 01E1Fh ;# 
# 14690 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC2GLS0 equ 01E20h ;# 
# 14802 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC2GLS1 equ 01E21h ;# 
# 14914 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC2GLS2 equ 01E22h ;# 
# 15026 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC2GLS3 equ 01E23h ;# 
# 15138 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC3CON equ 01E24h ;# 
# 15256 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC3POL equ 01E25h ;# 
# 15334 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC3SEL0 equ 01E26h ;# 
# 15438 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC3SEL1 equ 01E27h ;# 
# 15542 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC3SEL2 equ 01E28h ;# 
# 15646 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC3SEL3 equ 01E29h ;# 
# 15750 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC3GLS0 equ 01E2Ah ;# 
# 15862 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC3GLS1 equ 01E2Bh ;# 
# 15974 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC3GLS2 equ 01E2Ch ;# 
# 16086 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC3GLS3 equ 01E2Dh ;# 
# 16198 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC4CON equ 01E2Eh ;# 
# 16316 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC4POL equ 01E2Fh ;# 
# 16394 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC4SEL0 equ 01E30h ;# 
# 16498 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC4SEL1 equ 01E31h ;# 
# 16602 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC4SEL2 equ 01E32h ;# 
# 16706 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC4SEL3 equ 01E33h ;# 
# 16810 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC4GLS0 equ 01E34h ;# 
# 16922 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC4GLS1 equ 01E35h ;# 
# 17034 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC4GLS2 equ 01E36h ;# 
# 17146 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLC4GLS3 equ 01E37h ;# 
# 17258 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PPSLOCK equ 01E8Fh ;# 
# 17278 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
INTPPS equ 01E90h ;# 
# 17336 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T0CKIPPS equ 01E91h ;# 
# 17394 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T1CKIPPS equ 01E92h ;# 
# 17452 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T1GPPS equ 01E93h ;# 
# 17510 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
T2INPPS equ 01E9Ch ;# 
# 17568 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CCP1PPS equ 01EA1h ;# 
# 17626 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CCP2PPS equ 01EA2h ;# 
# 17684 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CWG1PPS equ 01EB1h ;# 
# 17742 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLCIN0PPS equ 01EBBh ;# 
# 17800 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLCIN1PPS equ 01EBCh ;# 
# 17858 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLCIN2PPS equ 01EBDh ;# 
# 17916 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
CLCIN3PPS equ 01EBEh ;# 
# 17974 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ADACTPPS equ 01EC3h ;# 
# 18032 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP1CLKPPS equ 01EC5h ;# 
# 18090 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP1DATPPS equ 01EC6h ;# 
# 18148 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP1SSPPS equ 01EC7h ;# 
# 18206 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP2CLKPPS equ 01EC8h ;# 
# 18264 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP2DATPPS equ 01EC9h ;# 
# 18322 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SSP2SSPPS equ 01ECAh ;# 
# 18380 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RX1DTPPS equ 01ECBh ;# 
# 18438 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TX1CKPPS equ 01ECCh ;# 
# 18496 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RX2DTPPS equ 01ECDh ;# 
# 18554 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TX2CKPPS equ 01ECEh ;# 
# 18612 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RA0PPS equ 01F10h ;# 
# 18656 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RA1PPS equ 01F11h ;# 
# 18700 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RA2PPS equ 01F12h ;# 
# 18744 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RA3PPS equ 01F13h ;# 
# 18788 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RA4PPS equ 01F14h ;# 
# 18832 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RA5PPS equ 01F15h ;# 
# 18876 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RA6PPS equ 01F16h ;# 
# 18920 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RA7PPS equ 01F17h ;# 
# 18964 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RB0PPS equ 01F18h ;# 
# 19008 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RB1PPS equ 01F19h ;# 
# 19052 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RB2PPS equ 01F1Ah ;# 
# 19096 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RB3PPS equ 01F1Bh ;# 
# 19140 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RB4PPS equ 01F1Ch ;# 
# 19184 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RB5PPS equ 01F1Dh ;# 
# 19228 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RB6PPS equ 01F1Eh ;# 
# 19272 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RB7PPS equ 01F1Fh ;# 
# 19316 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RC0PPS equ 01F20h ;# 
# 19360 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RC1PPS equ 01F21h ;# 
# 19404 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RC2PPS equ 01F22h ;# 
# 19448 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RC3PPS equ 01F23h ;# 
# 19492 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RC4PPS equ 01F24h ;# 
# 19536 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RC5PPS equ 01F25h ;# 
# 19580 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RC6PPS equ 01F26h ;# 
# 19624 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RC7PPS equ 01F27h ;# 
# 19668 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RD0PPS equ 01F28h ;# 
# 19712 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RD1PPS equ 01F29h ;# 
# 19756 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RD2PPS equ 01F2Ah ;# 
# 19800 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RD3PPS equ 01F2Bh ;# 
# 19844 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RD4PPS equ 01F2Ch ;# 
# 19888 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RD5PPS equ 01F2Dh ;# 
# 19932 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RD6PPS equ 01F2Eh ;# 
# 19976 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RD7PPS equ 01F2Fh ;# 
# 20020 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RE0PPS equ 01F30h ;# 
# 20064 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RE1PPS equ 01F31h ;# 
# 20108 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
RE2PPS equ 01F32h ;# 
# 20152 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ANSELA equ 01F38h ;# 
# 20214 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
WPUA equ 01F39h ;# 
# 20276 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ODCONA equ 01F3Ah ;# 
# 20338 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SLRCONA equ 01F3Bh ;# 
# 20400 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
INLVLA equ 01F3Ch ;# 
# 20462 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
IOCAP equ 01F3Dh ;# 
# 20524 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
IOCAN equ 01F3Eh ;# 
# 20586 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
IOCAF equ 01F3Fh ;# 
# 20648 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ANSELB equ 01F43h ;# 
# 20710 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
WPUB equ 01F44h ;# 
# 20772 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ODCONB equ 01F45h ;# 
# 20834 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SLRCONB equ 01F46h ;# 
# 20896 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
INLVLB equ 01F47h ;# 
# 20958 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
IOCBP equ 01F48h ;# 
# 21020 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
IOCBN equ 01F49h ;# 
# 21082 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
IOCBF equ 01F4Ah ;# 
# 21144 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ANSELC equ 01F4Eh ;# 
# 21206 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
WPUC equ 01F4Fh ;# 
# 21268 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ODCONC equ 01F50h ;# 
# 21330 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SLRCONC equ 01F51h ;# 
# 21392 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
INLVLC equ 01F52h ;# 
# 21454 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
IOCCP equ 01F53h ;# 
# 21516 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
IOCCN equ 01F54h ;# 
# 21578 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
IOCCF equ 01F55h ;# 
# 21640 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ANSELD equ 01F59h ;# 
# 21702 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
WPUD equ 01F5Ah ;# 
# 21764 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ODCOND equ 01F5Bh ;# 
# 21826 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SLRCOND equ 01F5Ch ;# 
# 21888 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
INLVLD equ 01F5Dh ;# 
# 21950 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ANSELE equ 01F64h ;# 
# 21982 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
WPUE equ 01F65h ;# 
# 22020 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
ODCONE equ 01F66h ;# 
# 22052 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
SLRCONE equ 01F67h ;# 
# 22084 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
INLVLE equ 01F68h ;# 
# 22122 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
IOCEP equ 01F69h ;# 
# 22143 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
IOCEN equ 01F6Ah ;# 
# 22164 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
IOCEF equ 01F6Bh ;# 
# 22185 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
STATUS_SHAD equ 01FE4h ;# 
# 22205 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
WREG_SHAD equ 01FE5h ;# 
# 22225 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
BSR_SHAD equ 01FE6h ;# 
# 22245 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
PCLATH_SHAD equ 01FE7h ;# 
# 22265 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
FSR0_SHAD equ 01FE8h ;# 
# 22272 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
FSR0L_SHAD equ 01FE8h ;# 
# 22292 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
FSR0H_SHAD equ 01FE9h ;# 
# 22312 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
FSR1L_SHAD equ 01FEAh ;# 
# 22332 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
FSR1H_SHAD equ 01FEBh ;# 
# 22352 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
STKPTR equ 01FEDh ;# 
# 22396 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TOSL equ 01FEEh ;# 
# 22466 "E:/MPXLab/IDE/packs/Microchip/PIC16F1xxxx_DFP/1.26.410/xc8\pic\include\proc/pic16lf15375.h"
TOSH equ 01FEFh ;# 
;; Function _I2C1_Deinitialize is unused but had its address taken
global _I2C1_Deinitialize
_I2C1_Deinitialize equ 0
;; Function _I2C1_Write is unused but had its address taken
global _I2C1_Write
_I2C1_Write equ 0
;; Function _I2C1_Read is unused but had its address taken
global _I2C1_Read
_I2C1_Read equ 0
;; Function _I2C1_WriteRead is unused but had its address taken
global _I2C1_WriteRead
_I2C1_WriteRead equ 0
;; Function _I2C1_ErrorGet is unused but had its address taken
global _I2C1_ErrorGet
_I2C1_ErrorGet equ 0
;; Function _I2C1_IsBusy is unused but had its address taken
global _I2C1_IsBusy
_I2C1_IsBusy equ 0
;; Function _I2C1_CallbackRegister is unused but had its address taken
global _I2C1_CallbackRegister
_I2C1_CallbackRegister equ 0
;; Function _INT_DefaultInterruptHandler is unused but had its address taken
global _INT_DefaultInterruptHandler
_INT_DefaultInterruptHandler equ 0
	debug_source C
	FNCALL	_main,_I2C_HW_Init
	FNCALL	_main,_SYSTEM_Initialize
	FNCALL	_main,_blink_error
	FNCALL	_main,_init_heartbeat_led
	FNCALL	_main,_oled_display1
	FNCALL	_main,_oled_display2
	FNCALL	_main,_oled_init
	FNCALL	_main,_sgp30_init
	FNCALL	_main,_sgp30_measure
	FNCALL	_main,_sgp30_probe
	FNCALL	_main,_sgp30_self_test
	FNCALL	_main,_sprintf
	FNCALL	_sprintf,_vfprintf
	FNCALL	_vfprintf,_vfpfcnvrt
	FNCALL	_vfpfcnvrt,___lwdiv
	FNCALL	_vfpfcnvrt,___lwmod
	FNCALL	_vfpfcnvrt,_fputc
	FNCALL	_fputc,_putch
	FNCALL	_sgp30_self_test,_sgp30_read_words
	FNCALL	_sgp30_self_test,_sgp30_send_cmd
	FNCALL	_sgp30_probe,_I2C_HW_SendByte
	FNCALL	_sgp30_probe,_I2C_HW_Start
	FNCALL	_sgp30_probe,_I2C_HW_Stop
	FNCALL	_sgp30_measure,_sgp30_read_words
	FNCALL	_sgp30_measure,_sgp30_send_cmd
	FNCALL	_sgp30_read_words,_I2C_HW_Read
	FNCALL	_sgp30_read_words,___bmul
	FNCALL	_sgp30_read_words,_sgp30_crc
	FNCALL	_I2C_HW_Read,_I2C_HW_ReadByte
	FNCALL	_I2C_HW_Read,_I2C_HW_SendByte
	FNCALL	_I2C_HW_Read,_I2C_HW_Start
	FNCALL	_I2C_HW_Read,_I2C_HW_Stop
	FNCALL	_I2C_HW_ReadByte,_wait_bus_idle
	FNCALL	_I2C_HW_ReadByte,_wait_for_idle
	FNCALL	_I2C_HW_ReadByte,_wait_for_if
	FNCALL	_sgp30_init,_sgp30_send_cmd
	FNCALL	_sgp30_send_cmd,_I2C_HW_Write
	FNCALL	_I2C_HW_Write,_I2C_HW_SendByte
	FNCALL	_I2C_HW_Write,_I2C_HW_Start
	FNCALL	_I2C_HW_Write,_I2C_HW_Stop
	FNCALL	_I2C_HW_Stop,_check_bus_collision
	FNCALL	_I2C_HW_Stop,_wait_bus_idle
	FNCALL	_I2C_HW_Stop,_wait_for_idle
	FNCALL	_I2C_HW_Start,_check_bus_collision
	FNCALL	_I2C_HW_Start,_wait_bus_idle
	FNCALL	_I2C_HW_Start,_wait_for_idle
	FNCALL	_I2C_HW_SendByte,_check_bus_collision
	FNCALL	_I2C_HW_SendByte,_wait_bus_idle
	FNCALL	_I2C_HW_SendByte,_wait_for_if
	FNCALL	_oled_init,_oled_send
	FNCALL	_oled_display2,_oled_send
	FNCALL	_oled_display2,_oled_set_cursor
	FNCALL	_oled_display2,_strlen
	FNCALL	_oled_display1,_oled_send
	FNCALL	_oled_display1,_oled_set_cursor
	FNCALL	_oled_display1,_strlen
	FNCALL	_oled_set_cursor,_oled_send
	FNCALL	_oled_send,_oled_send_bit
	FNCALL	_SYSTEM_Initialize,_CLOCK_Initialize
	FNCALL	_SYSTEM_Initialize,_I2C1_Initialize
	FNCALL	_SYSTEM_Initialize,_INTERRUPT_Initialize
	FNCALL	_SYSTEM_Initialize,_PIN_MANAGER_Initialize
	FNCALL	_INTERRUPT_Initialize,_INT_SetInterruptHandler
	FNROOT	_main
	FNCALL	_INTERRUPT_InterruptManager,_I2C1_ERROR_ISR
	FNCALL	_INTERRUPT_InterruptManager,_I2C1_ISR
	FNCALL	_I2C1_ISR,_I2C1_EventHandler
	FNCALL	_I2C1_EventHandler,_I2C1_Close
	FNCALL	_I2C1_EventHandler,_I2C1_EVENT_ERROR
	FNCALL	_I2C1_EventHandler,_I2C1_EVENT_IDLE
	FNCALL	_I2C1_EventHandler,_I2C1_EVENT_NACK
	FNCALL	_I2C1_EventHandler,_I2C1_EVENT_RESET
	FNCALL	_I2C1_EventHandler,_I2C1_EVENT_RX
	FNCALL	_I2C1_EventHandler,_I2C1_EVENT_SEND_RD_ADDR
	FNCALL	_I2C1_EventHandler,_I2C1_EVENT_SEND_WR_ADDR
	FNCALL	_I2C1_EventHandler,_I2C1_EVENT_STOP
	FNCALL	_I2C1_EventHandler,_I2C1_EVENT_TX
	FNCALL	_I2C1_ERROR_ISR,_I2C1_ErrorEventHandler
	FNCALL	_I2C1_ErrorEventHandler,_I2C1_EVENT_ERROR
	FNCALL	_I2C1_ErrorEventHandler,_I2C1_EVENT_IDLE
	FNCALL	_I2C1_ErrorEventHandler,_I2C1_EVENT_NACK
	FNCALL	_I2C1_ErrorEventHandler,_I2C1_EVENT_RESET
	FNCALL	_I2C1_ErrorEventHandler,_I2C1_EVENT_RX
	FNCALL	_I2C1_ErrorEventHandler,_I2C1_EVENT_SEND_RD_ADDR
	FNCALL	_I2C1_ErrorEventHandler,_I2C1_EVENT_SEND_WR_ADDR
	FNCALL	_I2C1_ErrorEventHandler,_I2C1_EVENT_STOP
	FNCALL	_I2C1_ErrorEventHandler,_I2C1_EVENT_TX
	FNCALL	_I2C1_EVENT_TX,_I2C1_EVENT_STOP
	FNCALL	_I2C1_EVENT_NACK,_I2C1_EVENT_STOP
	FNCALL	_I2C1_EVENT_STOP,_I2C1_Close
	FNCALL	_I2C1_EVENT_ERROR,_I2C1_EVENT_RESET
	FNCALL	intlevel1,_INTERRUPT_InterruptManager
	global	intlevel1
	FNROOT	intlevel1
	global	main@F8425
	global	main@F8423
psect	idataBANK0,class=CODE,space=0,delta=2,noexec
global __pidataBANK0
__pidataBANK0:
	file	"Main.c"
	line	130

;initializer for main@F8425
	retlw	0C8h
	retlw	0

	retlw	0E8h
	retlw	03h

	line	127

;initializer for main@F8423
	retlw	01h
	retlw	low(0)
	retlw	low(0)
psect	stringtext1,class=STRCODE,delta=2,noexec
global __pstringtext1
__pstringtext1:
	file	"mcc_generated_files/i2c_host/src/mssp1.c"
	line	55
_I2C1_Host:
	
	retlw	low(_I2C1_Initialize)
	retlw	high(_I2C1_Initialize)

	retlw	low(0)
	retlw	high(0)

	retlw	low(0)
	retlw	high(0)

	retlw	low(0)
	retlw	high(0)

	retlw	low(0)
	retlw	high(0)

	retlw	low(0)
	retlw	high(0)

	retlw	low(0)
	retlw	high(0)

	retlw	low(0)
	retlw	high(0)

	retlw	low(0)
	retlw	high(0)

	retlw	low(0)
	retlw	high(0)

	global __end_of_I2C1_Host
__end_of_I2C1_Host:
	global	_i2c1_eventTable
psect	stringtext2,class=STRCODE,delta=2,noexec
global __pstringtext2
__pstringtext2:
	file	"mcc_generated_files/i2c_host/src/mssp1.c"
	line	72
_i2c1_eventTable:
	
	retlw	low(_I2C1_EVENT_IDLE)
	retlw	high(_I2C1_EVENT_IDLE)

	
	retlw	low(_I2C1_EVENT_SEND_RD_ADDR)
	retlw	high(_I2C1_EVENT_SEND_RD_ADDR)

	
	retlw	low(_I2C1_EVENT_SEND_WR_ADDR)
	retlw	high(_I2C1_EVENT_SEND_WR_ADDR)

	
	retlw	low(_I2C1_EVENT_TX)
	retlw	high(_I2C1_EVENT_TX)

	
	retlw	low(_I2C1_EVENT_RX)
	retlw	high(_I2C1_EVENT_RX)

	
	retlw	low(_I2C1_EVENT_NACK)
	retlw	high(_I2C1_EVENT_NACK)

	
	retlw	low(_I2C1_EVENT_ERROR)
	retlw	high(_I2C1_EVENT_ERROR)

	
	retlw	low(_I2C1_EVENT_STOP)
	retlw	high(_I2C1_EVENT_STOP)

	
	retlw	low(_I2C1_EVENT_RESET)
	retlw	high(_I2C1_EVENT_RESET)

	global __end_of_i2c1_eventTable
__end_of_i2c1_eventTable:
	global	_i2c1_eventTable
	global	_I2C1_Callback
	global	_flags
	global	_i2c1Status
	global	_width
	global	_prec
	global	_dbuf
	global	_INT_InterruptHandler
psect	nvBANK0,class=BANK0,space=1,noexec
global __pnvBANK0
__pnvBANK0:
_INT_InterruptHandler:
       ds      2

	global	_PORTCbits
_PORTCbits	set	0xE
	global	_TRISCbits
_TRISCbits	set	0x14
	global	_LATCbits
_LATCbits	set	0x1A
	global	_LATBbits
_LATBbits	set	0x19
	global	_LATDbits
_LATDbits	set	0x1B
	global	_TRISDbits
_TRISDbits	set	0x15
	global	_INTCONbits
_INTCONbits	set	0xB
	global	_TRISE
_TRISE	set	0x16
	global	_TRISD
_TRISD	set	0x15
	global	_TRISC
_TRISC	set	0x14
	global	_TRISB
_TRISB	set	0x13
	global	_TRISA
_TRISA	set	0x12
	global	_LATE
_LATE	set	0x1C
	global	_LATD
_LATD	set	0x1B
	global	_LATC
_LATC	set	0x1A
	global	_LATB
_LATB	set	0x19
	global	_LATA
_LATA	set	0x18
	global	_SSP1BUF
_SSP1BUF	set	0x18C
	global	_SSP1STATbits
_SSP1STATbits	set	0x18F
	global	_SSP1CON2bits
_SSP1CON2bits	set	0x191
	global	_SSP1CON1bits
_SSP1CON1bits	set	0x190
	global	_SSP1ADD
_SSP1ADD	set	0x18D
	global	_SSP1CON3
_SSP1CON3	set	0x192
	global	_SSP1CON1
_SSP1CON1	set	0x190
	global	_SSP1STAT
_SSP1STAT	set	0x18F
	global	_SSP1CON2
_SSP1CON2	set	0x191
	global	_PIR0bits
_PIR0bits	set	0x70C
	global	_PIR3bits
_PIR3bits	set	0x70F
	global	_PIE3bits
_PIE3bits	set	0x719
	global	_OSCTUNE
_OSCTUNE	set	0x892
	global	_OSCFRQ
_OSCFRQ	set	0x893
	global	_OSCEN
_OSCEN	set	0x891
	global	_OSCCON3
_OSCCON3	set	0x88F
	global	_OSCCON1
_OSCCON1	set	0x88D
	global	_SSP1DATPPS
_SSP1DATPPS	set	0x1EC6
	global	_SSP1CLKPPS
_SSP1CLKPPS	set	0x1EC5
	global	_ANSELDbits
_ANSELDbits	set	0x1F59
	global	_IOCEF
_IOCEF	set	0x1F6B
	global	_IOCEN
_IOCEN	set	0x1F6A
	global	_IOCEP
_IOCEP	set	0x1F69
	global	_IOCCF
_IOCCF	set	0x1F55
	global	_IOCCN
_IOCCN	set	0x1F54
	global	_IOCCP
_IOCCP	set	0x1F53
	global	_IOCBF
_IOCBF	set	0x1F4A
	global	_IOCBN
_IOCBN	set	0x1F49
	global	_IOCBP
_IOCBP	set	0x1F48
	global	_IOCAF
_IOCAF	set	0x1F3F
	global	_IOCAN
_IOCAN	set	0x1F3E
	global	_IOCAP
_IOCAP	set	0x1F3D
	global	_RC5PPS
_RC5PPS	set	0x1F25
	global	_RC4PPS
_RC4PPS	set	0x1F24
	global	_INLVLE
_INLVLE	set	0x1F68
	global	_INLVLD
_INLVLD	set	0x1F5D
	global	_INLVLC
_INLVLC	set	0x1F52
	global	_INLVLB
_INLVLB	set	0x1F47
	global	_INLVLA
_INLVLA	set	0x1F3C
	global	_SLRCONE
_SLRCONE	set	0x1F67
	global	_SLRCOND
_SLRCOND	set	0x1F5C
	global	_SLRCONC
_SLRCONC	set	0x1F51
	global	_SLRCONB
_SLRCONB	set	0x1F46
	global	_SLRCONA
_SLRCONA	set	0x1F3B
	global	_ODCONE
_ODCONE	set	0x1F66
	global	_ODCOND
_ODCOND	set	0x1F5B
	global	_ODCONC
_ODCONC	set	0x1F50
	global	_ODCONB
_ODCONB	set	0x1F45
	global	_ODCONA
_ODCONA	set	0x1F3A
	global	_WPUE
_WPUE	set	0x1F65
	global	_WPUD
_WPUD	set	0x1F5A
	global	_WPUC
_WPUC	set	0x1F4F
	global	_WPUB
_WPUB	set	0x1F44
	global	_WPUA
_WPUA	set	0x1F39
	global	_ANSELE
_ANSELE	set	0x1F64
	global	_ANSELD
_ANSELD	set	0x1F59
	global	_ANSELC
_ANSELC	set	0x1F4E
	global	_ANSELB
_ANSELB	set	0x1F43
	global	_ANSELA
_ANSELA	set	0x1F38
psect	stringtext3,class=STRCODE,delta=2,noexec
global __pstringtext3
__pstringtext3:
	
STR_14:	
	retlw	33	;'!'
	retlw	84	;'T'
	retlw	86	;'V'
	retlw	79	;'O'
	retlw	67	;'C'
	retlw	32	;' '
	retlw	72	;'H'
	retlw	73	;'I'
	retlw	58	;':'
	retlw	32	;' '
	retlw	37	;'%'
	retlw	117	;'u'
	retlw	32	;' '
	retlw	112	;'p'
	retlw	112	;'p'
	retlw	98	;'b'
	retlw	0
psect	stringtext4,class=STRCODE,delta=2,noexec
global __pstringtext4
__pstringtext4:
	
STR_12:	
	retlw	49	;'1'
	retlw	53	;'5'
	retlw	115	;'s'
	retlw	32	;' '
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	105	;'i'
	retlw	116	;'t'
	retlw	32	;' '
	retlw	112	;'p'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	105	;'i'
	retlw	111	;'o'
	retlw	100	;'d'
	retlw	0
psect	stringtext5,class=STRCODE,delta=2,noexec
global __pstringtext5
__pstringtext5:
	
STR_7:	
	retlw	83	;'S'
	retlw	101	;'e'
	retlw	108	;'l'
	retlw	102	;'f'
	retlw	45	;'-'
	retlw	116	;'t'
	retlw	101	;'e'
	retlw	115	;'s'
	retlw	116	;'t'
	retlw	32	;' '
	retlw	70	;'F'
	retlw	65	;'A'
	retlw	73	;'I'
	retlw	76	;'L'
	retlw	0
psect	stringtext6,class=STRCODE,delta=2,noexec
global __pstringtext6
__pstringtext6:
	
STR_9:	
	retlw	83	;'S'
	retlw	101	;'e'
	retlw	108	;'l'
	retlw	102	;'f'
	retlw	45	;'-'
	retlw	116	;'t'
	retlw	101	;'e'
	retlw	115	;'s'
	retlw	116	;'t'
	retlw	32	;' '
	retlw	80	;'P'
	retlw	65	;'A'
	retlw	83	;'S'
	retlw	83	;'S'
	retlw	0
psect	stringtext7,class=STRCODE,delta=2,noexec
global __pstringtext7
__pstringtext7:
	
STR_4:	
	retlw	83	;'S'
	retlw	71	;'G'
	retlw	80	;'P'
	retlw	51	;'3'
	retlw	48	;'0'
	retlw	32	;' '
	retlw	110	;'n'
	retlw	111	;'o'
	retlw	32	;' '
	retlw	65	;'A'
	retlw	67	;'C'
	retlw	75	;'K'
	retlw	33	;'!'
	retlw	0
psect	stringtext8,class=STRCODE,delta=2,noexec
global __pstringtext8
__pstringtext8:
	
STR_8:	
	retlw	67	;'C'
	retlw	111	;'o'
	retlw	110	;'n'
	retlw	116	;'t'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	117	;'u'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	103	;'g'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	0
psect	stringtext9,class=STRCODE,delta=2,noexec
global __pstringtext9
__pstringtext9:
	
STR_11:	
	retlw	87	;'W'
	retlw	97	;'a'
	retlw	114	;'r'
	retlw	109	;'m'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	103	;'g'
	retlw	32	;' '
	retlw	117	;'u'
	retlw	112	;'p'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	0
psect	stringtext10,class=STRCODE,delta=2,noexec
global __pstringtext10
__pstringtext10:
	
STR_5:	
	retlw	83	;'S'
	retlw	71	;'G'
	retlw	80	;'P'
	retlw	51	;'3'
	retlw	48	;'0'
	retlw	32	;' '
	retlw	102	;'f'
	retlw	111	;'o'
	retlw	117	;'u'
	retlw	110	;'n'
	retlw	100	;'d'
	retlw	33	;'!'
	retlw	0
psect	stringtext11,class=STRCODE,delta=2,noexec
global __pstringtext11
__pstringtext11:
	
STR_6:	
	retlw	83	;'S'
	retlw	101	;'e'
	retlw	108	;'l'
	retlw	102	;'f'
	retlw	45	;'-'
	retlw	116	;'t'
	retlw	101	;'e'
	retlw	115	;'s'
	retlw	116	;'t'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	0
psect	stringtext12,class=STRCODE,delta=2,noexec
global __pstringtext12
__pstringtext12:
	
STR_15:	
	retlw	84	;'T'
	retlw	86	;'V'
	retlw	79	;'O'
	retlw	67	;'C'
	retlw	58	;':'
	retlw	32	;' '
	retlw	37	;'%'
	retlw	117	;'u'
	retlw	32	;' '
	retlw	112	;'p'
	retlw	112	;'p'
	retlw	98	;'b'
	retlw	0
psect	stringtext13,class=STRCODE,delta=2,noexec
global __pstringtext13
__pstringtext13:
	
STR_17:	
	retlw	82	;'R'
	retlw	101	;'e'
	retlw	116	;'t'
	retlw	114	;'r'
	retlw	121	;'y'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	103	;'g'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	0
psect	stringtext14,class=STRCODE,delta=2,noexec
global __pstringtext14
__pstringtext14:
	
STR_1:	
	retlw	73	;'I'
	retlw	50	;'2'
	retlw	67	;'C'
	retlw	32	;' '
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	105	;'i'
	retlw	116	;'t'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	0
psect	stringtext15,class=STRCODE,delta=2,noexec
global __pstringtext15
__pstringtext15:
	
STR_13:	
	retlw	67	;'C'
	retlw	79	;'O'
	retlw	50	;'2'
	retlw	58	;':'
	retlw	32	;' '
	retlw	37	;'%'
	retlw	117	;'u'
	retlw	32	;' '
	retlw	112	;'p'
	retlw	112	;'p'
	retlw	109	;'m'
	retlw	0
psect	stringtext16,class=STRCODE,delta=2,noexec
global __pstringtext16
__pstringtext16:
	
STR_16:	
	retlw	82	;'R'
	retlw	101	;'e'
	retlw	97	;'a'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	114	;'r'
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	0
psect	stringtext17,class=STRCODE,delta=2,noexec
global __pstringtext17
__pstringtext17:
	
STR_3:	
	retlw	69	;'E'
	retlw	114	;'r'
	retlw	114	;'r'
	retlw	58	;':'
	retlw	32	;' '
	retlw	37	;'%'
	retlw	117	;'u'
	retlw	0
psect	stringtext18,class=STRCODE,delta=2,noexec
global __pstringtext18
__pstringtext18:
STR_2	equ	STR_4+13
STR_10	equ	STR_4+13
; #config settings
	config pad_punits      = on
	config apply_mask      = off
	config ignore_cmsgs    = off
	config default_configs = off
	config default_idlocs  = off
	config FEXTOSC = "ECH"
	config RSTOSC = "HFINT32"
	config CLKOUTEN = "OFF"
	config CSWEN = "ON"
	config FCMEN = "ON"
	config MCLRE = "ON"
	config LPBOREN = "OFF"
	config BOREN = "ON"
	config BORV = "LO"
	config ZCD = "OFF"
	config PPS1WAY = "ON"
	config STVREN = "ON"
	config WDTCPS = "WDTCPS_31"
	config WDTE = "OFF"
	config WDTCWS = "WDTCWS_7"
	config WDTCCS = "SC"
	config BBSIZE = "BB512"
	config BBEN = "OFF"
	config SAFEN = "OFF"
	config WRTAPP = "OFF"
	config WRTB = "OFF"
	config WRTC = "OFF"
	config WRTSAF = "OFF"
	config LVP = "ON"
	config CP = "OFF"
	file	"dist/default/production\Air_Particulate_Sensor.X.production.s"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_I2C1_Callback:
       ds      2

_flags:
       ds      1

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_i2c1Status:
       ds      14

_width:
       ds      2

_prec:
       ds      2

sgp30_crc@F7913:
       ds      2

psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
	file	"Main.c"
	line	130
main@F8425:
       ds      4

psect	dataBANK0
	file	"Main.c"
	line	127
main@F8423:
       ds      3

psect	bssBANK2,class=BANK2,space=1,noexec
global __pbssBANK2
__pbssBANK2:
_dbuf:
       ds      32

	file	"dist/default/production\Air_Particulate_Sensor.X.production.s"
	line	#
psect inittext,class=CODE,delta=2
global init_ram,btemp
init_ram:
	movwf btemp
initloop:
	moviw fsr0++
	movwi fsr1++
	decfsz btemp
	goto initloop
	retlw 0
; Initialize objects allocated to BANK0
	global __pidataBANK0,__pdataBANK0
psect cinit,class=CODE,delta=2,merge=1
	movlw low(__pidataBANK0)
	movwf fsr0l
	movlw high(__pidataBANK0)|80h
	movwf fsr0h
	movlw low(__pdataBANK0)
	movwf fsr1l
	movlw high(__pdataBANK0)
	movwf fsr1h
	movlw 07h
	fcall init_ram
	line	#
psect clrtext,class=CODE,delta=2
global clear_ram0
;	Called with FSR0 containing the base address, and
;	WREG with the size to clear
clear_ram0:
	clrwdt			;clear the watchdog before getting into this loop
clrloop0:
	clrf	indf0		;clear RAM location pointed to by FSR
	addfsr	0,1
	decfsz wreg		;Have we reached the end of clearing yet?
	goto clrloop0	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	global __pbssCOMMON
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	global __pbssBANK0
	movlw	low(__pbssBANK0)
	movwf	fsr0l
	movlw	high(__pbssBANK0)
	movwf	fsr0h
	movlw	014h
	fcall	clear_ram0
; Clear objects allocated to BANK2
psect cinit,class=CODE,delta=2,merge=1
	global __pbssBANK2
	movlw	low(__pbssBANK2)
	movwf	fsr0l
	movlw	high(__pbssBANK2)
	movwf	fsr0h
	movlw	020h
	fcall	clear_ram0
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
	bcf int$flags,0 ;clear compiler interrupt flag (level 1)
movlb 0
ljmp _main	;jump to C main() function
psect	cstackBANK1,class=BANK1,space=1,noexec
global __pcstackBANK1
__pcstackBANK1:
	global	main@line2
main@line2:	; 17 bytes @ 0x0
	ds	17
	global	main@line1
main@line1:	; 17 bytes @ 0x11
	ds	17
	global	main@line2_1045
main@line2_1045:	; 17 bytes @ 0x22
	ds	17
	global	main@thresholds
main@thresholds:	; 4 bytes @ 0x33
	ds	4
	global	main@tvoc_val
main@tvoc_val:	; 2 bytes @ 0x37
	ds	2
	global	main@tvoc_limit
main@tvoc_limit:	; 2 bytes @ 0x39
	ds	2
	global	main@test_ok
main@test_ok:	; 1 bytes @ 0x3B
	ds	1
	global	main@probe_result
main@probe_result:	; 1 bytes @ 0x3C
	ds	1
	global	main@disp
main@disp:	; 3 bytes @ 0x3D
	ds	3
	global	main@air
main@air:	; 5 bytes @ 0x40
	ds	5
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_I2C1_Initialize:	; 1 bytes @ 0x0
?_I2C1_EVENT_IDLE:	; 1 bytes @ 0x0
?_I2C1_EVENT_SEND_RD_ADDR:	; 1 bytes @ 0x0
?_I2C1_EVENT_SEND_WR_ADDR:	; 1 bytes @ 0x0
?_I2C1_EVENT_TX:	; 1 bytes @ 0x0
?_I2C1_EVENT_RX:	; 1 bytes @ 0x0
?_I2C1_EVENT_NACK:	; 1 bytes @ 0x0
?_I2C1_EVENT_ERROR:	; 1 bytes @ 0x0
?_I2C1_EVENT_STOP:	; 1 bytes @ 0x0
?_I2C1_EVENT_RESET:	; 1 bytes @ 0x0
?_I2C1_EventHandler:	; 1 bytes @ 0x0
?_I2C1_ErrorEventHandler:	; 1 bytes @ 0x0
?_CLOCK_Initialize:	; 1 bytes @ 0x0
?_INTERRUPT_Initialize:	; 1 bytes @ 0x0
?_I2C_HW_Start:	; 1 bytes @ 0x0
?_I2C_HW_Stop:	; 1 bytes @ 0x0
?_I2C_HW_SendByte:	; 1 bytes @ 0x0
?_oled_init:	; 1 bytes @ 0x0
?_I2C_HW_Init:	; 1 bytes @ 0x0
?_sgp30_self_test:	; 1 bytes @ 0x0
?_sgp30_init:	; 1 bytes @ 0x0
?_putch:	; 1 bytes @ 0x0
?_I2C1_ISR:	; 1 bytes @ 0x0
?_I2C1_ERROR_ISR:	; 1 bytes @ 0x0
?_I2C1_Close:	; 1 bytes @ 0x0
?_PIN_MANAGER_Initialize:	; 1 bytes @ 0x0
?_SYSTEM_Initialize:	; 1 bytes @ 0x0
?_INTERRUPT_InterruptManager:	; 1 bytes @ 0x0
?_init_heartbeat_led:	; 1 bytes @ 0x0
?_blink_error:	; 1 bytes @ 0x0
?_sgp30_probe:	; 1 bytes @ 0x0
?_oled_send_bit:	; 1 bytes @ 0x0
?_wait_for_if:	; 1 bytes @ 0x0
?_check_bus_collision:	; 1 bytes @ 0x0
?_wait_bus_idle:	; 1 bytes @ 0x0
?_main:	; 2 bytes @ 0x0
	global	I2C1_EVENT_TX@retEventState
I2C1_EVENT_TX@retEventState:	; 1 bytes @ 0x0
	global	I2C1_EVENT_RX@retEventState
I2C1_EVENT_RX@retEventState:	; 1 bytes @ 0x0
	global	I2C1_EVENT_NACK@retEventState
I2C1_EVENT_NACK@retEventState:	; 1 bytes @ 0x0
	global	I2C1_EVENT_ERROR@retEventState
I2C1_EVENT_ERROR@retEventState:	; 1 bytes @ 0x0
putch@c:	; 1 bytes @ 0x0
??_I2C1_EVENT_IDLE:	; 1 bytes @ 0x0
??_I2C1_EVENT_SEND_RD_ADDR:	; 1 bytes @ 0x0
??_I2C1_EVENT_SEND_WR_ADDR:	; 1 bytes @ 0x0
??_I2C1_EVENT_TX:	; 1 bytes @ 0x0
??_I2C1_EVENT_RX:	; 1 bytes @ 0x0
??_I2C1_EVENT_NACK:	; 1 bytes @ 0x0
??_I2C1_EVENT_ERROR:	; 1 bytes @ 0x0
??_I2C1_EVENT_STOP:	; 1 bytes @ 0x0
??_I2C1_EVENT_RESET:	; 1 bytes @ 0x0
??_I2C1_Close:	; 1 bytes @ 0x0
	ds	1
??_I2C1_EventHandler:	; 1 bytes @ 0x1
??_I2C1_ErrorEventHandler:	; 1 bytes @ 0x1
	ds	2
?_INT_SetInterruptHandler:	; 1 bytes @ 0x3
?_sgp30_crc:	; 1 bytes @ 0x3
?_wait_for_idle:	; 1 bytes @ 0x3
?___bmul:	; 1 bytes @ 0x3
	global	?_strlen
?_strlen:	; 2 bytes @ 0x3
?_fputc:	; 2 bytes @ 0x3
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x3
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x3
	global	oled_send_bit@bit
oled_send_bit@bit:	; 1 bytes @ 0x3
	global	sgp30_crc@byte2
sgp30_crc@byte2:	; 1 bytes @ 0x3
	global	wait_for_idle@reg
wait_for_idle@reg:	; 1 bytes @ 0x3
	global	I2C_HW_Init@brg
I2C_HW_Init@brg:	; 1 bytes @ 0x3
	global	___bmul@multiplicand
___bmul@multiplicand:	; 1 bytes @ 0x3
	global	INT_SetInterruptHandler@InterruptHandler
INT_SetInterruptHandler@InterruptHandler:	; 2 bytes @ 0x3
	global	wait_for_if@cnt
wait_for_if@cnt:	; 2 bytes @ 0x3
	global	wait_bus_idle@cnt
wait_bus_idle@cnt:	; 2 bytes @ 0x3
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x3
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x3
	global	fputc@c
fputc@c:	; 2 bytes @ 0x3
	global	strlen@s
strlen@s:	; 2 bytes @ 0x3
??_I2C1_Initialize:	; 1 bytes @ 0x3
??_CLOCK_Initialize:	; 1 bytes @ 0x3
??_I2C_HW_Init:	; 1 bytes @ 0x3
??_putch:	; 1 bytes @ 0x3
??_I2C1_ISR:	; 1 bytes @ 0x3
??_I2C1_ERROR_ISR:	; 1 bytes @ 0x3
??_PIN_MANAGER_Initialize:	; 1 bytes @ 0x3
??_INTERRUPT_InterruptManager:	; 1 bytes @ 0x3
??_init_heartbeat_led:	; 1 bytes @ 0x3
??_blink_error:	; 1 bytes @ 0x3
??_oled_send_bit:	; 1 bytes @ 0x3
??_wait_for_if:	; 1 bytes @ 0x3
??_check_bus_collision:	; 1 bytes @ 0x3
??_wait_bus_idle:	; 1 bytes @ 0x3
	ds	1
?_oled_send:	; 1 bytes @ 0x4
	global	oled_send@data
oled_send@data:	; 1 bytes @ 0x4
	global	wait_for_idle@mask
wait_for_idle@mask:	; 1 bytes @ 0x4
	global	___bmul@product
___bmul@product:	; 1 bytes @ 0x4
??_sgp30_crc:	; 1 bytes @ 0x4
??___bmul:	; 1 bytes @ 0x4
	ds	1
	global	blink_error@count
blink_error@count:	; 1 bytes @ 0x5
	global	I2C_HW_SendByte@byte
I2C_HW_SendByte@byte:	; 1 bytes @ 0x5
	global	___bmul@multiplier
___bmul@multiplier:	; 1 bytes @ 0x5
	global	wait_for_idle@cnt
wait_for_idle@cnt:	; 2 bytes @ 0x5
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x5
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x5
	global	fputc@fp
fputc@fp:	; 2 bytes @ 0x5
??_INTERRUPT_Initialize:	; 1 bytes @ 0x5
??_INT_SetInterruptHandler:	; 1 bytes @ 0x5
??_I2C_HW_SendByte:	; 1 bytes @ 0x5
??_strlen:	; 1 bytes @ 0x5
??_SYSTEM_Initialize:	; 1 bytes @ 0x5
??_oled_send:	; 1 bytes @ 0x5
??_wait_for_idle:	; 1 bytes @ 0x5
	ds	1
?_oled_set_cursor:	; 1 bytes @ 0x6
	global	blink_error@i
blink_error@i:	; 1 bytes @ 0x6
	global	oled_set_cursor@col
oled_set_cursor@col:	; 1 bytes @ 0x6
	global	I2C_HW_SendByte@s
I2C_HW_SendByte@s:	; 1 bytes @ 0x6
	global	strlen@a
strlen@a:	; 2 bytes @ 0x6
??_oled_init:	; 1 bytes @ 0x6
	ds	1
	global	I2C_HW_Start@s
I2C_HW_Start@s:	; 1 bytes @ 0x7
	global	I2C_HW_Stop@s
I2C_HW_Stop@s:	; 1 bytes @ 0x7
	global	I2C_HW_ReadByte@s
I2C_HW_ReadByte@s:	; 1 bytes @ 0x7
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x7
??_I2C_HW_Start:	; 1 bytes @ 0x7
??_I2C_HW_Stop:	; 1 bytes @ 0x7
??_oled_set_cursor:	; 1 bytes @ 0x7
??_I2C_HW_ReadByte:	; 1 bytes @ 0x7
??___lwdiv:	; 1 bytes @ 0x7
??___lwmod:	; 1 bytes @ 0x7
	ds	1
??_sprintf:	; 1 bytes @ 0x8
??_I2C_HW_Write:	; 1 bytes @ 0x8
??_I2C_HW_Read:	; 1 bytes @ 0x8
??_sgp30_probe:	; 1 bytes @ 0x8
??_sgp30_send_cmd:	; 1 bytes @ 0x8
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
?_I2C_HW_Write:	; 1 bytes @ 0x0
?_I2C_HW_ReadByte:	; 1 bytes @ 0x0
	global	sgp30_probe@s
sgp30_probe@s:	; 1 bytes @ 0x0
	global	oled_send@rs
oled_send@rs:	; 1 bytes @ 0x0
	global	sgp30_crc@byte1
sgp30_crc@byte1:	; 1 bytes @ 0x0
	global	I2C_HW_ReadByte@byte
I2C_HW_ReadByte@byte:	; 1 bytes @ 0x0
	global	I2C_HW_Write@data
I2C_HW_Write@data:	; 1 bytes @ 0x0
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x0
??_fputc:	; 1 bytes @ 0x0
	ds	1
	global	I2C_HW_ReadByte@send_ack
I2C_HW_ReadByte@send_ack:	; 1 bytes @ 0x1
	global	I2C_HW_Write@len
I2C_HW_Write@len:	; 1 bytes @ 0x1
	global	oled_send@i
oled_send@i:	; 2 bytes @ 0x1
	global	sgp30_crc@data
sgp30_crc@data:	; 2 bytes @ 0x1
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x1
	ds	1
?_I2C_HW_Read:	; 1 bytes @ 0x2
	global	I2C_HW_Write@addr
I2C_HW_Write@addr:	; 1 bytes @ 0x2
	global	I2C_HW_Read@buf
I2C_HW_Read@buf:	; 1 bytes @ 0x2
	ds	1
	global	oled_set_cursor@line
oled_set_cursor@line:	; 1 bytes @ 0x3
	global	sgp30_crc@bit
sgp30_crc@bit:	; 1 bytes @ 0x3
	global	I2C_HW_Write@i
I2C_HW_Write@i:	; 1 bytes @ 0x3
	global	I2C_HW_Read@len
I2C_HW_Read@len:	; 1 bytes @ 0x3
	ds	1
	global	oled_set_cursor@addr
oled_set_cursor@addr:	; 1 bytes @ 0x4
	global	sgp30_crc@i
sgp30_crc@i:	; 1 bytes @ 0x4
	global	I2C_HW_Write@s
I2C_HW_Write@s:	; 1 bytes @ 0x4
	global	I2C_HW_Read@addr
I2C_HW_Read@addr:	; 1 bytes @ 0x4
	ds	1
?_sgp30_send_cmd:	; 1 bytes @ 0x5
?_vfpfcnvrt:	; 1 bytes @ 0x5
	global	sgp30_crc@crc
sgp30_crc@crc:	; 1 bytes @ 0x5
	global	I2C_HW_Read@ack
I2C_HW_Read@ack:	; 1 bytes @ 0x5
	global	_oled_set_cursor$1146
_oled_set_cursor$1146:	; 2 bytes @ 0x5
	global	sgp30_send_cmd@cmd
sgp30_send_cmd@cmd:	; 2 bytes @ 0x5
	global	vfpfcnvrt@fp
vfpfcnvrt@fp:	; 2 bytes @ 0x5
	ds	1
	global	I2C_HW_Read@i
I2C_HW_Read@i:	; 1 bytes @ 0x6
	ds	1
?_oled_display1:	; 1 bytes @ 0x7
?_oled_display2:	; 1 bytes @ 0x7
	global	sgp30_send_cmd@s
sgp30_send_cmd@s:	; 1 bytes @ 0x7
	global	I2C_HW_Read@s
I2C_HW_Read@s:	; 1 bytes @ 0x7
	global	vfpfcnvrt@fmt
vfpfcnvrt@fmt:	; 1 bytes @ 0x7
	global	oled_display1@str
oled_display1@str:	; 2 bytes @ 0x7
	global	oled_display2@str
oled_display2@str:	; 2 bytes @ 0x7
	ds	1
?_sgp30_read_words:	; 1 bytes @ 0x8
	global	sgp30_read_words@result_buf
sgp30_read_words@result_buf:	; 1 bytes @ 0x8
	global	vfpfcnvrt@ap
vfpfcnvrt@ap:	; 1 bytes @ 0x8
	global	sgp30_send_cmd@buf
sgp30_send_cmd@buf:	; 2 bytes @ 0x8
	ds	1
	global	sgp30_read_words@n_words
sgp30_read_words@n_words:	; 1 bytes @ 0x9
??_oled_display1:	; 1 bytes @ 0x9
??_oled_display2:	; 1 bytes @ 0x9
??_vfpfcnvrt:	; 1 bytes @ 0x9
	ds	1
??_sgp30_init:	; 1 bytes @ 0xA
??_sgp30_read_words:	; 1 bytes @ 0xA
	ds	1
	global	oled_display1@len
oled_display1@len:	; 1 bytes @ 0xB
	global	oled_display2@len
oled_display2@len:	; 1 bytes @ 0xB
	global	sgp30_read_words@raw
sgp30_read_words@raw:	; 9 bytes @ 0xB
	ds	1
	global	_oled_display1$1155
_oled_display1$1155:	; 2 bytes @ 0xC
	global	_oled_display2$1160
_oled_display2$1160:	; 2 bytes @ 0xC
	ds	1
	global	vfpfcnvrt@cp
vfpfcnvrt@cp:	; 2 bytes @ 0xD
	ds	1
	global	oled_display1@i
oled_display1@i:	; 2 bytes @ 0xE
	global	oled_display2@i
oled_display2@i:	; 2 bytes @ 0xE
	ds	1
	global	vfpfcnvrt@convarg
vfpfcnvrt@convarg:	; 4 bytes @ 0xF
	ds	4
	global	vfpfcnvrt@c
vfpfcnvrt@c:	; 1 bytes @ 0x13
	ds	1
	global	?_vfprintf
?_vfprintf:	; 2 bytes @ 0x14
	global	sgp30_read_words@total
sgp30_read_words@total:	; 1 bytes @ 0x14
	global	vfprintf@fp
vfprintf@fp:	; 2 bytes @ 0x14
	ds	1
	global	sgp30_read_words@s
sgp30_read_words@s:	; 1 bytes @ 0x15
	ds	1
	global	sgp30_read_words@crc
sgp30_read_words@crc:	; 1 bytes @ 0x16
	global	vfprintf@fmt
vfprintf@fmt:	; 2 bytes @ 0x16
	ds	1
	global	sgp30_read_words@msb
sgp30_read_words@msb:	; 1 bytes @ 0x17
	ds	1
	global	sgp30_read_words@lsb
sgp30_read_words@lsb:	; 1 bytes @ 0x18
	global	vfprintf@ap
vfprintf@ap:	; 1 bytes @ 0x18
	ds	1
	global	sgp30_read_words@idx
sgp30_read_words@idx:	; 1 bytes @ 0x19
??_vfprintf:	; 1 bytes @ 0x19
	ds	1
	global	sgp30_read_words@w
sgp30_read_words@w:	; 1 bytes @ 0x1A
	global	vfprintf@cfmt
vfprintf@cfmt:	; 2 bytes @ 0x1A
	ds	1
?_sgp30_measure:	; 1 bytes @ 0x1B
	global	sgp30_measure@result
sgp30_measure@result:	; 2 bytes @ 0x1B
??_sgp30_self_test:	; 1 bytes @ 0x1B
	ds	1
	global	?_sprintf
?_sprintf:	; 2 bytes @ 0x1C
	global	sprintf@s
sprintf@s:	; 1 bytes @ 0x1C
	ds	1
	global	sgp30_self_test@result
sgp30_self_test@result:	; 2 bytes @ 0x1D
	global	sprintf@fmt
sprintf@fmt:	; 2 bytes @ 0x1D
??_sgp30_measure:	; 1 bytes @ 0x1D
	ds	1
	global	sgp30_measure@words
sgp30_measure@words:	; 4 bytes @ 0x1E
	ds	3
	global	sprintf@ap
sprintf@ap:	; 1 bytes @ 0x21
	ds	1
	global	sprintf@f
sprintf@f:	; 11 bytes @ 0x22
	ds	11
??_main:	; 1 bytes @ 0x2D
	ds	2
;!
;!Data Sizes:
;!    Strings     199
;!    Constant    38
;!    Data        7
;!    BSS         55
;!    Persistent  50
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      8      11
;!    BANK0            80     47      76
;!    BANK1            80     69      69
;!    BANK2            80      0      32
;!    BANK3            80      0       0
;!    BANK4            80      0       0
;!    BANK5            80      0       0
;!    BANK6            80      0       0
;!    BANK7            80      0       0
;!    BANK8            80      0       0
;!    BANK9            80      0       0
;!    BANK10           80      0       0
;!    BANK11           80      0       0
;!    BANK12           48      0       0

;!
;!Pointer List with Targets:
;!
;!    f$.$buffer	PTR unsigned char  size(2) Largest target is 17
;!		 -> main@line1(BANK1[17]), main@line2(BANK1[17]), main@line2_1045(BANK1[17]), 
;!
;!    f$.$source	PTR const unsigned char  size(2) Largest target is 0
;!
;!    fputc@fp	PTR struct _IO_FILE size(2) Largest target is 11
;!		 -> sprintf@f(BANK0[11]), 
;!
;!    fputc@fp$.$buffer	PTR unsigned char  size(2) Largest target is 17
;!		 -> main@line1(BANK1[17]), main@line2(BANK1[17]), main@line2_1045(BANK1[17]), 
;!
;!    fputc@fp$.$source	PTR const unsigned char  size(2) Largest target is 0
;!
;!    I2C1_Callback	PTR FTN()void  size(2) Largest target is 1
;!		 -> NULL(), 
;!
;!    i2c1_eventTable	const PTR FTN()enum E7741[9] size(2) Largest target is 1
;!		 -> I2C1_EVENT_ERROR(), I2C1_EVENT_IDLE(), I2C1_EVENT_NACK(), I2C1_EVENT_RESET(), 
;!		 -> I2C1_EVENT_RX(), I2C1_EVENT_SEND_RD_ADDR(), I2C1_EVENT_SEND_WR_ADDR(), I2C1_EVENT_STOP(), 
;!		 -> I2C1_EVENT_TX(), 
;!
;!    I2C1_Host$CallbackRegister	PTR FTN(PTR FTN()void ,)void  size(2) Largest target is 1
;!		 -> I2C1_CallbackRegister(), 
;!
;!    I2C1_Host$Deinitialize	PTR FTN()void  size(2) Largest target is 1
;!		 -> I2C1_Deinitialize(), 
;!
;!    I2C1_Host$ErrorGet	PTR FTN()enum E7732 size(2) Largest target is 1
;!		 -> I2C1_ErrorGet(), 
;!
;!    I2C1_Host$Initialize	PTR FTN()void  size(2) Largest target is 1
;!		 -> I2C1_Initialize(), 
;!
;!    I2C1_Host$IsBusy	PTR FTN()_Bool  size(2) Largest target is 1
;!		 -> I2C1_IsBusy(), 
;!
;!    I2C1_Host$Read	PTR FTN(unsigned short ,PTR unsigned char ,unsigned int ,)_Bool  size(2) Largest target is 1
;!		 -> I2C1_Read(), 
;!
;!    I2C1_Host$Tasks	PTR FTN()void  size(2) Largest target is 1
;!		 -> NULL(), 
;!
;!    I2C1_Host$TransferSetup	PTR FTN(PTR struct i2c_transfer_setup,unsigned long ,)_Bool  size(2) Largest target is 1
;!		 -> NULL(), 
;!
;!    I2C1_Host$Write	PTR FTN(unsigned short ,PTR unsigned char ,unsigned int ,)_Bool  size(2) Largest target is 1
;!		 -> I2C1_Write(), 
;!
;!    I2C1_Host$WriteRead	PTR FTN(unsigned short ,PTR unsigned char ,unsigned int ,PTR unsigned char ,unsigned int ,)_Bool  size(2) Largest target is 1
;!		 -> I2C1_WriteRead(), 
;!
;!    i2c1Status$readPtr	PTR unsigned char  size(2) Largest target is 0
;!		 -> NULL(NULL[0]), 
;!
;!    i2c1Status$writePtr	PTR unsigned char  size(2) Largest target is 0
;!		 -> NULL(NULL[0]), 
;!
;!    I2C_HW_Read@buf	PTR unsigned char  size(1) Largest target is 9
;!		 -> sgp30_read_words@raw(BANK0[9]), 
;!
;!    I2C_HW_ReadByte@byte	PTR unsigned char  size(1) Largest target is 9
;!		 -> sgp30_read_words@raw(BANK0[9]), 
;!
;!    I2C_HW_Write@data	PTR const unsigned char  size(1) Largest target is 8
;!		 -> sgp30_send_cmd@buf(BANK0[2]), sgp30_send_cmd_with_data@buf(COMMON[8]), sgp30_soft_reset@reset_byte(COMMON[1]), 
;!
;!    INT_InterruptHandler	PTR FTN()void  size(2) Largest target is 1
;!		 -> INT_DefaultInterruptHandler(), NULL(), 
;!
;!    INT_SetInterruptHandler@InterruptHandler	PTR FTN()void  size(2) Largest target is 1
;!		 -> INT_DefaultInterruptHandler(), 
;!
;!    NULL$0	PTR struct i2c_transfer_setup size(2) Largest target is 0
;!
;!    oled_display1@str	PTR const unsigned char  size(2) Largest target is 17
;!		 -> main@line1(BANK1[17]), STR_1(CODE[12]), STR_11(CODE[14]), STR_16(CODE[11]), 
;!		 -> STR_4(CODE[14]), STR_5(CODE[13]), STR_7(CODE[15]), STR_9(CODE[15]), 
;!
;!    oled_display2@str	PTR const unsigned char  size(2) Largest target is 17
;!		 -> main@line2(BANK1[17]), main@line2_1045(BANK1[17]), STR_10(CODE[1]), STR_12(CODE[16]), 
;!		 -> STR_17(CODE[12]), STR_2(CODE[1]), STR_6(CODE[13]), STR_8(CODE[14]), 
;!
;!    S139$readPtr	PTR unsigned char  size(2) Largest target is 0
;!		 -> NULL(NULL[0]), 
;!
;!    S139$writePtr	PTR unsigned char  size(2) Largest target is 0
;!		 -> NULL(NULL[0]), 
;!
;!    S1770$buffer	PTR unsigned char  size(2) Largest target is 17
;!		 -> main@line1(BANK1[17]), main@line2(BANK1[17]), main@line2_1045(BANK1[17]), 
;!
;!    S1770$source	PTR const unsigned char  size(2) Largest target is 0
;!
;!    S40$2$1	PTR unsigned char  size(2) Largest target is 0
;!
;!    S40$3$1	PTR unsigned char  size(2) Largest target is 0
;!
;!    S40$4$1	PTR unsigned char  size(2) Largest target is 0
;!
;!    S40$4$3	PTR unsigned char  size(2) Largest target is 0
;!
;!    S40$8$0	PTR FTN()void  size(2) Largest target is 0
;!
;!    S40$CallbackRegister	PTR FTN(PTR FTN()void ,)void  size(2) Largest target is 1
;!		 -> I2C1_CallbackRegister(), 
;!
;!    S40$Deinitialize	PTR FTN()void  size(2) Largest target is 1
;!		 -> I2C1_Deinitialize(), 
;!
;!    S40$ErrorGet	PTR FTN()enum E7732 size(2) Largest target is 1
;!		 -> I2C1_ErrorGet(), 
;!
;!    S40$Initialize	PTR FTN()void  size(2) Largest target is 1
;!		 -> I2C1_Initialize(), 
;!
;!    S40$IsBusy	PTR FTN()_Bool  size(2) Largest target is 1
;!		 -> I2C1_IsBusy(), 
;!
;!    S40$Read	PTR FTN(unsigned short ,PTR unsigned char ,unsigned int ,)_Bool  size(2) Largest target is 1
;!		 -> I2C1_Read(), 
;!
;!    S40$Tasks	PTR FTN()void  size(2) Largest target is 1
;!		 -> NULL(), 
;!
;!    S40$TransferSetup	PTR FTN(PTR struct i2c_transfer_setup,unsigned long ,)_Bool  size(2) Largest target is 1
;!		 -> NULL(), 
;!
;!    S40$Write	PTR FTN(unsigned short ,PTR unsigned char ,unsigned int ,)_Bool  size(2) Largest target is 1
;!		 -> I2C1_Write(), 
;!
;!    S40$WriteRead	PTR FTN(unsigned short ,PTR unsigned char ,unsigned int ,PTR unsigned char ,unsigned int ,)_Bool  size(2) Largest target is 1
;!		 -> I2C1_WriteRead(), 
;!
;!    sgp30_measure@result	PTR struct . size(2) Largest target is 5
;!		 -> main@air(BANK1[5]), 
;!
;!    sgp30_read_words@result_buf	PTR unsigned short  size(1) Largest target is 4
;!		 -> sgp30_get_baseline@words(COMMON[4]), sgp30_measure@words(BANK0[4]), sgp30_measure_raw@words(COMMON[4]), sgp30_self_test@result(BANK0[2]), 
;!
;!    sprintf@ap	PTR void [1] size(1) Largest target is 2
;!		 -> ?_sprintf(BANK0[2]), 
;!
;!    sprintf@fmt	PTR const unsigned char  size(2) Largest target is 17
;!		 -> STR_13(CODE[12]), STR_14(CODE[17]), STR_15(CODE[13]), STR_3(CODE[8]), 
;!
;!    sprintf@s	PTR unsigned char  size(1) Largest target is 17
;!		 -> main@line1(BANK1[17]), main@line2(BANK1[17]), main@line2_1045(BANK1[17]), 
;!
;!    strlen@a	PTR const unsigned char  size(2) Largest target is 17
;!		 -> main@line1(BANK1[17]), main@line2(BANK1[17]), main@line2_1045(BANK1[17]), STR_1(CODE[12]), 
;!		 -> STR_10(CODE[1]), STR_11(CODE[14]), STR_12(CODE[16]), STR_16(CODE[11]), 
;!		 -> STR_17(CODE[12]), STR_2(CODE[1]), STR_4(CODE[14]), STR_5(CODE[13]), 
;!		 -> STR_6(CODE[13]), STR_7(CODE[15]), STR_8(CODE[14]), STR_9(CODE[15]), 
;!
;!    strlen@s	PTR const unsigned char  size(2) Largest target is 17
;!		 -> main@line1(BANK1[17]), main@line2(BANK1[17]), main@line2_1045(BANK1[17]), STR_1(CODE[12]), 
;!		 -> STR_10(CODE[1]), STR_11(CODE[14]), STR_12(CODE[16]), STR_16(CODE[11]), 
;!		 -> STR_17(CODE[12]), STR_2(CODE[1]), STR_4(CODE[14]), STR_5(CODE[13]), 
;!		 -> STR_6(CODE[13]), STR_7(CODE[15]), STR_8(CODE[14]), STR_9(CODE[15]), 
;!
;!    vfpfcnvrt@ap	PTR PTR void  size(1) Largest target is 1
;!		 -> sprintf@ap(BANK0[1]), 
;!
;!    vfpfcnvrt@cp	PTR unsigned char  size(2) Largest target is 17
;!		 -> STR_13(CODE[12]), STR_14(CODE[17]), STR_15(CODE[13]), STR_3(CODE[8]), 
;!
;!    vfpfcnvrt@fmt	PTR PTR unsigned char  size(1) Largest target is 2
;!		 -> vfprintf@cfmt(BANK0[2]), 
;!
;!    vfpfcnvrt@fp	PTR struct _IO_FILE size(2) Largest target is 11
;!		 -> sprintf@f(BANK0[11]), 
;!
;!    vfprintf@ap	PTR PTR void  size(1) Largest target is 1
;!		 -> sprintf@ap(BANK0[1]), 
;!
;!    vfprintf@cfmt	PTR unsigned char  size(2) Largest target is 17
;!		 -> STR_13(CODE[12]), STR_14(CODE[17]), STR_15(CODE[13]), STR_3(CODE[8]), 
;!
;!    vfprintf@fmt	PTR const unsigned char  size(2) Largest target is 17
;!		 -> STR_13(CODE[12]), STR_14(CODE[17]), STR_15(CODE[13]), STR_3(CODE[8]), 
;!
;!    vfprintf@fp	PTR struct _IO_FILE size(2) Largest target is 11
;!		 -> sprintf@f(BANK0[11]), 
;!
;!    wait_for_idle@reg	PTR volatile unsigned char  size(1) Largest target is 1
;!		 -> SSP1CON2(SFR3[1]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    _main->_oled_init
;!    _vfpfcnvrt->___lwmod
;!    _sgp30_probe->_I2C_HW_Start
;!    _sgp30_probe->_I2C_HW_Stop
;!    _I2C_HW_Read->_I2C_HW_ReadByte
;!    _I2C_HW_Read->_I2C_HW_Start
;!    _I2C_HW_Read->_I2C_HW_Stop
;!    _I2C_HW_ReadByte->_wait_for_idle
;!    _I2C_HW_Write->_I2C_HW_Start
;!    _I2C_HW_Write->_I2C_HW_Stop
;!    _I2C_HW_Stop->_wait_for_idle
;!    _I2C_HW_Start->_wait_for_idle
;!    _I2C_HW_SendByte->_wait_bus_idle
;!    _I2C_HW_SendByte->_wait_for_if
;!    _oled_init->_oled_send
;!    _oled_display2->_strlen
;!    _oled_display1->_strlen
;!    _oled_set_cursor->_oled_send
;!    _oled_send->_oled_send_bit
;!    _INTERRUPT_Initialize->_INT_SetInterruptHandler
;!
;!Critical Paths under _INTERRUPT_InterruptManager in COMMON
;!
;!    _I2C1_ISR->_I2C1_EventHandler
;!    _I2C1_EventHandler->_I2C1_EVENT_ERROR
;!    _I2C1_EventHandler->_I2C1_EVENT_NACK
;!    _I2C1_EventHandler->_I2C1_EVENT_RX
;!    _I2C1_EventHandler->_I2C1_EVENT_TX
;!    _I2C1_ERROR_ISR->_I2C1_ErrorEventHandler
;!    _I2C1_ErrorEventHandler->_I2C1_EVENT_ERROR
;!    _I2C1_ErrorEventHandler->_I2C1_EVENT_NACK
;!    _I2C1_ErrorEventHandler->_I2C1_EVENT_RX
;!    _I2C1_ErrorEventHandler->_I2C1_EVENT_TX
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_sprintf
;!    _sprintf->_vfprintf
;!    _vfprintf->_vfpfcnvrt
;!    _vfpfcnvrt->_fputc
;!    _sgp30_self_test->_sgp30_read_words
;!    _sgp30_measure->_sgp30_read_words
;!    _sgp30_read_words->_I2C_HW_Read
;!    _I2C_HW_Read->_I2C_HW_ReadByte
;!    _sgp30_init->_sgp30_send_cmd
;!    _sgp30_send_cmd->_I2C_HW_Write
;!    _oled_init->_oled_send
;!    _oled_display2->_oled_set_cursor
;!    _oled_display1->_oled_set_cursor
;!    _oled_set_cursor->_oled_send
;!
;!Critical Paths under _INTERRUPT_InterruptManager in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _INTERRUPT_InterruptManager in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _INTERRUPT_InterruptManager in BANK2
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _INTERRUPT_InterruptManager in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK4
;!
;!    None.
;!
;!Critical Paths under _INTERRUPT_InterruptManager in BANK4
;!
;!    None.
;!
;!Critical Paths under _main in BANK5
;!
;!    None.
;!
;!Critical Paths under _INTERRUPT_InterruptManager in BANK5
;!
;!    None.
;!
;!Critical Paths under _main in BANK6
;!
;!    None.
;!
;!Critical Paths under _INTERRUPT_InterruptManager in BANK6
;!
;!    None.
;!
;!Critical Paths under _main in BANK7
;!
;!    None.
;!
;!Critical Paths under _INTERRUPT_InterruptManager in BANK7
;!
;!    None.
;!
;!Critical Paths under _main in BANK8
;!
;!    None.
;!
;!Critical Paths under _INTERRUPT_InterruptManager in BANK8
;!
;!    None.
;!
;!Critical Paths under _main in BANK9
;!
;!    None.
;!
;!Critical Paths under _INTERRUPT_InterruptManager in BANK9
;!
;!    None.
;!
;!Critical Paths under _main in BANK10
;!
;!    None.
;!
;!Critical Paths under _INTERRUPT_InterruptManager in BANK10
;!
;!    None.
;!
;!Critical Paths under _main in BANK11
;!
;!    None.
;!
;!Critical Paths under _INTERRUPT_InterruptManager in BANK11
;!
;!    None.
;!
;!Critical Paths under _main in BANK12
;!
;!    None.
;!
;!Critical Paths under _INTERRUPT_InterruptManager in BANK12
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 2, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                71    71      0   17022
;!                                             45 BANK0      2     2      0
;!                                              0 BANK1     69    69      0
;!                        _I2C_HW_Init
;!                  _SYSTEM_Initialize
;!                        _blink_error
;!                 _init_heartbeat_led
;!                      _oled_display1
;!                      _oled_display2
;!                          _oled_init
;!                         _sgp30_init
;!                      _sgp30_measure
;!                        _sgp30_probe
;!                    _sgp30_self_test
;!                            _sprintf
;! ---------------------------------------------------------------------------------
;! (1) _sprintf                                             19    14      5    1812
;!                                             28 BANK0     17    12      5
;!                           _vfprintf
;! ---------------------------------------------------------------------------------
;! (2) _vfprintf                                             8     3      5    1482
;!                                             20 BANK0      8     3      5
;!                          _vfpfcnvrt
;! ---------------------------------------------------------------------------------
;! (3) _vfpfcnvrt                                           16    12      4    1282
;!                                              5 BANK0     15    11      4
;!                            ___lwdiv
;!                            ___lwmod
;!                              _fputc
;! ---------------------------------------------------------------------------------
;! (4) _fputc                                                9     5      4     230
;!                                              3 COMMON     4     0      4
;!                                              0 BANK0      5     5      0
;!                              _putch
;! ---------------------------------------------------------------------------------
;! (5) _putch                                                1     1      0       0
;! ---------------------------------------------------------------------------------
;! (4) ___lwmod                                              5     1      4     161
;!                                              3 COMMON     5     1      4
;! ---------------------------------------------------------------------------------
;! (4) ___lwdiv                                              7     3      4     247
;!                                              3 COMMON     4     0      4
;!                                              0 BANK0      3     3      0
;! ---------------------------------------------------------------------------------
;! (1) _sgp30_self_test                                      4     4      0    4635
;!                                             27 BANK0      4     4      0
;!                   _sgp30_read_words
;!                     _sgp30_send_cmd
;! ---------------------------------------------------------------------------------
;! (1) _sgp30_probe                                          1     1      0     977
;!                                              0 BANK0      1     1      0
;!                    _I2C_HW_SendByte
;!                       _I2C_HW_Start
;!                        _I2C_HW_Stop
;! ---------------------------------------------------------------------------------
;! (1) _sgp30_measure                                        7     5      2    4796
;!                                             27 BANK0      7     5      2
;!                   _sgp30_read_words
;!                     _sgp30_send_cmd
;! ---------------------------------------------------------------------------------
;! (2) _sgp30_read_words                                    19    17      2    3108
;!                                              8 BANK0     19    17      2
;!                        _I2C_HW_Read
;!                             ___bmul
;!                          _sgp30_crc
;! ---------------------------------------------------------------------------------
;! (3) _sgp30_crc                                            7     6      1     464
;!                                              3 COMMON     1     0      1
;!                                              0 BANK0      6     6      0
;! ---------------------------------------------------------------------------------
;! (3) ___bmul                                               3     2      1     109
;!                                              3 COMMON     3     2      1
;! ---------------------------------------------------------------------------------
;! (3) _I2C_HW_Read                                          6     4      2    1840
;!                                              2 BANK0      6     4      2
;!                    _I2C_HW_ReadByte
;!                    _I2C_HW_SendByte
;!                       _I2C_HW_Start
;!                        _I2C_HW_Stop
;! ---------------------------------------------------------------------------------
;! (4) _I2C_HW_ReadByte                                      3     1      2     457
;!                                              7 COMMON     1     1      0
;!                                              0 BANK0      2     0      2
;!                      _wait_bus_idle
;!                      _wait_for_idle
;!                        _wait_for_if
;! ---------------------------------------------------------------------------------
;! (1) _sgp30_init                                           1     1      0    1459
;!                                             10 BANK0      1     1      0
;!                     _sgp30_send_cmd
;! ---------------------------------------------------------------------------------
;! (2) _sgp30_send_cmd                                       5     3      2    1459
;!                                              5 BANK0      5     3      2
;!                       _I2C_HW_Write
;! ---------------------------------------------------------------------------------
;! (3) _I2C_HW_Write                                         5     3      2    1268
;!                                              0 BANK0      5     3      2
;!                    _I2C_HW_SendByte
;!                       _I2C_HW_Start
;!                        _I2C_HW_Stop
;! ---------------------------------------------------------------------------------
;! (4) _I2C_HW_Stop                                          1     1      0     284
;!                                              7 COMMON     1     1      0
;!                _check_bus_collision
;!                      _wait_bus_idle
;!                      _wait_for_idle
;! ---------------------------------------------------------------------------------
;! (4) _I2C_HW_Start                                         1     1      0     284
;!                                              7 COMMON     1     1      0
;!                _check_bus_collision
;!                      _wait_bus_idle
;!                      _wait_for_idle
;! ---------------------------------------------------------------------------------
;! (5) _wait_for_idle                                        4     2      2     120
;!                                              3 COMMON     4     2      2
;! ---------------------------------------------------------------------------------
;! (4) _I2C_HW_SendByte                                      2     2      0     310
;!                                              5 COMMON     2     2      0
;!                _check_bus_collision
;!                      _wait_bus_idle
;!                        _wait_for_if
;! ---------------------------------------------------------------------------------
;! (5) _wait_for_if                                          2     2      0      34
;!                                              3 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! (5) _wait_bus_idle                                        2     2      0      34
;!                                              3 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! (5) _check_bus_collision                                  0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _oled_init                                            2     2      0     257
;!                                              6 COMMON     2     2      0
;!                          _oled_send
;! ---------------------------------------------------------------------------------
;! (1) _oled_display2                                        9     7      2    1048
;!                                              7 BANK0      9     7      2
;!                          _oled_send
;!                    _oled_set_cursor
;!                             _strlen
;! ---------------------------------------------------------------------------------
;! (1) _oled_display1                                        9     7      2    1048
;!                                              7 BANK0      9     7      2
;!                          _oled_send
;!                    _oled_set_cursor
;!                             _strlen
;! ---------------------------------------------------------------------------------
;! (2) _strlen                                               5     3      2      92
;!                                              3 COMMON     5     3      2
;! ---------------------------------------------------------------------------------
;! (2) _oled_set_cursor                                      5     4      1     412
;!                                              6 COMMON     1     0      1
;!                                              3 BANK0      4     4      0
;!                          _oled_send
;! ---------------------------------------------------------------------------------
;! (3) _oled_send                                            5     4      1     257
;!                                              4 COMMON     2     1      1
;!                                              0 BANK0      3     3      0
;!                      _oled_send_bit
;! ---------------------------------------------------------------------------------
;! (4) _oled_send_bit                                        1     1      0      47
;!                                              3 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _init_heartbeat_led                                   0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _blink_error                                          4     4      0      53
;!                                              3 COMMON     4     4      0
;! ---------------------------------------------------------------------------------
;! (1) _SYSTEM_Initialize                                    0     0      0      23
;!                   _CLOCK_Initialize
;!                    _I2C1_Initialize
;!               _INTERRUPT_Initialize
;!             _PIN_MANAGER_Initialize
;! ---------------------------------------------------------------------------------
;! (2) _PIN_MANAGER_Initialize                               0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _INTERRUPT_Initialize                                 0     0      0      23
;!            _INT_SetInterruptHandler
;! ---------------------------------------------------------------------------------
;! (3) _INT_SetInterruptHandler                              2     0      2      23
;!                                              3 COMMON     2     0      2
;! ---------------------------------------------------------------------------------
;! (2) _I2C1_Initialize                                      0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _CLOCK_Initialize                                     0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _I2C_HW_Init                                          1     1      0      29
;!                                              3 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 5
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (6) _INTERRUPT_InterruptManager                           0     0      0     196
;!                     _I2C1_ERROR_ISR
;!                           _I2C1_ISR
;! ---------------------------------------------------------------------------------
;! (7) _I2C1_ISR                                             0     0      0      98
;!                  _I2C1_EventHandler
;! ---------------------------------------------------------------------------------
;! (8) _I2C1_EventHandler                                    2     2      0      98
;!                                              1 COMMON     2     2      0
;!                         _I2C1_Close
;!                   _I2C1_EVENT_ERROR *
;!                    _I2C1_EVENT_IDLE *
;!                    _I2C1_EVENT_NACK *
;!                   _I2C1_EVENT_RESET *
;!                      _I2C1_EVENT_RX *
;!            _I2C1_EVENT_SEND_RD_ADDR *
;!            _I2C1_EVENT_SEND_WR_ADDR *
;!                    _I2C1_EVENT_STOP *
;!                      _I2C1_EVENT_TX *
;! ---------------------------------------------------------------------------------
;! (7) _I2C1_ERROR_ISR                                       0     0      0      98
;!             _I2C1_ErrorEventHandler
;! ---------------------------------------------------------------------------------
;! (8) _I2C1_ErrorEventHandler                               2     2      0      98
;!                                              1 COMMON     2     2      0
;!                   _I2C1_EVENT_ERROR *
;!                    _I2C1_EVENT_IDLE *
;!                    _I2C1_EVENT_NACK *
;!                   _I2C1_EVENT_RESET *
;!                      _I2C1_EVENT_RX *
;!            _I2C1_EVENT_SEND_RD_ADDR *
;!            _I2C1_EVENT_SEND_WR_ADDR *
;!                    _I2C1_EVENT_STOP *
;!                      _I2C1_EVENT_TX *
;! ---------------------------------------------------------------------------------
;! (9) _I2C1_EVENT_TX                                        1     1      0      26
;!                                              0 COMMON     1     1      0
;!                    _I2C1_EVENT_STOP
;! ---------------------------------------------------------------------------------
;! (9) _I2C1_EVENT_SEND_WR_ADDR                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (9) _I2C1_EVENT_SEND_RD_ADDR                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (9) _I2C1_EVENT_RX                                        1     1      0      24
;!                                              0 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (9) _I2C1_EVENT_NACK                                      1     1      0      24
;!                                              0 COMMON     1     1      0
;!                    _I2C1_EVENT_STOP
;! ---------------------------------------------------------------------------------
;! (10) _I2C1_EVENT_STOP                                     0     0      0       0
;!                         _I2C1_Close
;! ---------------------------------------------------------------------------------
;! (11) _I2C1_Close                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (9) _I2C1_EVENT_IDLE                                      0     0      0       0
;! ---------------------------------------------------------------------------------
;! (9) _I2C1_EVENT_ERROR                                     1     1      0      24
;!                                              0 COMMON     1     1      0
;!                   _I2C1_EVENT_RESET
;! ---------------------------------------------------------------------------------
;! (10) _I2C1_EVENT_RESET                                    0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 11
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _I2C_HW_Init
;!   _SYSTEM_Initialize
;!     _CLOCK_Initialize
;!     _I2C1_Initialize
;!     _INTERRUPT_Initialize
;!       _INT_SetInterruptHandler
;!     _PIN_MANAGER_Initialize
;!   _blink_error
;!   _init_heartbeat_led
;!   _oled_display1
;!     _oled_send
;!       _oled_send_bit
;!     _oled_set_cursor
;!       _oled_send
;!     _strlen
;!   _oled_display2
;!     _oled_send
;!     _oled_set_cursor
;!     _strlen
;!   _oled_init
;!     _oled_send
;!   _sgp30_init
;!     _sgp30_send_cmd
;!       _I2C_HW_Write
;!         _I2C_HW_SendByte
;!           _check_bus_collision
;!           _wait_bus_idle
;!           _wait_for_if
;!         _I2C_HW_Start
;!           _check_bus_collision
;!           _wait_bus_idle
;!           _wait_for_idle
;!         _I2C_HW_Stop
;!           _check_bus_collision
;!           _wait_bus_idle
;!           _wait_for_idle
;!   _sgp30_measure
;!     _sgp30_read_words
;!       _I2C_HW_Read
;!         _I2C_HW_ReadByte
;!           _wait_bus_idle
;!           _wait_for_idle
;!           _wait_for_if
;!         _I2C_HW_SendByte
;!         _I2C_HW_Start
;!         _I2C_HW_Stop
;!       ___bmul
;!       _sgp30_crc
;!     _sgp30_send_cmd
;!   _sgp30_probe
;!     _I2C_HW_SendByte
;!     _I2C_HW_Start
;!     _I2C_HW_Stop
;!   _sgp30_self_test
;!     _sgp30_read_words
;!     _sgp30_send_cmd
;!   _sprintf
;!     _vfprintf
;!       _vfpfcnvrt
;!         ___lwdiv
;!         ___lwmod
;!         _fputc
;!           _putch
;!
;! _INTERRUPT_InterruptManager (ROOT)
;!   _I2C1_ERROR_ISR
;!     _I2C1_ErrorEventHandler
;!       _I2C1_EVENT_ERROR *
;!         _I2C1_EVENT_RESET
;!       _I2C1_EVENT_IDLE *
;!       _I2C1_EVENT_NACK *
;!         _I2C1_EVENT_STOP
;!           _I2C1_Close
;!       _I2C1_EVENT_RESET *
;!       _I2C1_EVENT_RX *
;!       _I2C1_EVENT_SEND_RD_ADDR *
;!       _I2C1_EVENT_SEND_WR_ADDR *
;!       _I2C1_EVENT_STOP *
;!       _I2C1_EVENT_TX *
;!         _I2C1_EVENT_STOP
;!   _I2C1_ISR
;!     _I2C1_EventHandler
;!       _I2C1_Close
;!       _I2C1_EVENT_ERROR *
;!       _I2C1_EVENT_IDLE *
;!       _I2C1_EVENT_NACK *
;!       _I2C1_EVENT_RESET *
;!       _I2C1_EVENT_RX *
;!       _I2C1_EVENT_SEND_RD_ADDR *
;!       _I2C1_EVENT_SEND_WR_ADDR *
;!       _I2C1_EVENT_STOP *
;!       _I2C1_EVENT_TX *
;!

;!Address spaces:

;!Name               Size   Autos  Total    Usage
;!BITCOMMON           14      0       0      0.0%
;!BITBANK0            80      0       0      0.0%
;!BITBANK1            80      0       0      0.0%
;!BITBANK2            80      0       0      0.0%
;!BITBANK3            80      0       0      0.0%
;!BITBANK4            80      0       0      0.0%
;!BITBANK5            80      0       0      0.0%
;!BITBANK6            80      0       0      0.0%
;!BITBANK7            80      0       0      0.0%
;!BITBANK8            80      0       0      0.0%
;!BITBANK9            80      0       0      0.0%
;!BITBANK10           80      0       0      0.0%
;!BITBANK11           80      0       0      0.0%
;!BITBANK12           48      0       0      0.0%
;!BIGRAM            1008      0       0      0.0%
;!COMMON              14      8      11     78.6%
;!BANK0               80     47      76     95.0%
;!BANK1               80     69      69     86.2%
;!BANK2               80      0      32     40.0%
;!BANK3               80      0       0      0.0%
;!BANK4               80      0       0      0.0%
;!BANK5               80      0       0      0.0%
;!BANK6               80      0       0      0.0%
;!BANK7               80      0       0      0.0%
;!BANK8               80      0       0      0.0%
;!BANK9               80      0       0      0.0%
;!BANK10              80      0       0      0.0%
;!BANK11              80      0       0      0.0%
;!BANK12              48      0       0      0.0%
;!STACK                0      0       0      0.0%
;!DATA                 0      0     190      0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 54 in file "Main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  tvoc_limit      2   57[BANK1 ] unsigned short 
;;  tvoc_val        2   55[BANK1 ] unsigned short 
;;  line2          17    0[BANK1 ] unsigned char [17]
;;  line2          17   34[BANK1 ] unsigned char [17]
;;  line1          17   17[BANK1 ] unsigned char [17]
;;  air             5   64[BANK1 ] struct .
;;  thresholds      4   51[BANK1 ] struct .
;;  disp            3   61[BANK1 ] struct .
;;  probe_result    1   60[BANK1 ] enum E8057
;;  test_ok         1   59[BANK1 ] _Bool 
;; Return value:  Size  Location     Type
;;                  2  394[None  ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : B3F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0      69       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2      69       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       71 bytes
;; Hardware stack levels required when called: 11
;; This function calls:
;;		_I2C_HW_Init
;;		_SYSTEM_Initialize
;;		_blink_error
;;		_init_heartbeat_led
;;		_oled_display1
;;		_oled_display2
;;		_oled_init
;;		_sgp30_init
;;		_sgp30_measure
;;		_sgp30_probe
;;		_sgp30_self_test
;;		_sprintf
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,merge=1,split=1,group=0
	file	"Main.c"
	line	54
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"Main.c"
	line	54
	
_main:	
;incstack = 0
	callstack 5
; Regs used in _main: [wreg-fsr1h+status,2+status,0+pclath+cstack]
	line	55
	
l4471:	
;Main.c: 55:     SYSTEM_Initialize();
	fcall	_SYSTEM_Initialize
	line	57
	
l4473:	
;Main.c: 57:     init_heartbeat_led();
	fcall	_init_heartbeat_led
	line	60
;Main.c: 60:     _delay((unsigned long)((500)*(32000000U/4000.0)));
	asmopt push
asmopt off
movlw  21
	movlb 0	; select bank0
movwf	((??_main)+1)
movlw	75
movwf	((??_main))
	movlw	190
u3787:
decfsz	wreg
	goto	u3787
	decfsz	((??_main)),f
	goto	u3787
	decfsz	((??_main)+1),f
	goto	u3787
	nop
asmopt pop

	line	61
	
l4475:	
;Main.c: 61:     oled_init();
	fcall	_oled_init
	line	63
	
l4477:	
;Main.c: 63:     oled_display1("I2C init...");
	movlw	low(((STR_1)|8000h))
	movlb 0	; select bank0
	movwf	(oled_display1@str)
	movlw	high(((STR_1)|8000h))
	movwf	((oled_display1@str))+1
	fcall	_oled_display1
	line	64
	
l4479:	
;Main.c: 64:     oled_display2("");
	movlw	low(((STR_2)|8000h))
	movlb 0	; select bank0
	movwf	(oled_display2@str)
	movlw	high(((STR_2)|8000h))
	movwf	((oled_display2@str))+1
	fcall	_oled_display2
	line	70
	
l4481:	
;Main.c: 70:     I2C_HW_Init(((uint8_t)(((32000000UL) / (4UL * (100000UL))) - 1UL)));
	movlw	low(04Fh)
	fcall	_I2C_HW_Init
	line	71
;Main.c: 71:     _delay((unsigned long)((10)*(32000000U/4000.0)));
	asmopt push
asmopt off
movlw	104
	movlb 0	; select bank0
movwf	((??_main))
	movlw	228
u3797:
decfsz	wreg
	goto	u3797
	decfsz	((??_main)),f
	goto	u3797
	nop
asmopt pop

	line	80
	
l4483:	
;Main.c: 80:     I2C_Status probe_result = sgp30_probe();
	fcall	_sgp30_probe
	movlb 1	; select bank1
	movwf	(main@probe_result)^080h
	line	82
	
l4485:	
;Main.c: 82:     if (probe_result != I2C_OK) {
	movf	((main@probe_result)^080h),w
	btfsc	status,2
	goto	u3451
	goto	u3450
u3451:
	goto	l4495
u3450:
	line	86
	
l4487:	
;Main.c: 83:         char line2[17];;Main.c: 86:         sprintf(line2, "Err: %u", (unsigned)probe_result);
	movlw	(low(main@line2|((0x0)<<8)))&0ffh
	movlb 0	; select bank0
	movwf	(sprintf@s)
	movlw	low(((STR_3)|8000h))
	movwf	(sprintf@fmt)
	movlw	high(((STR_3)|8000h))
	movwf	((sprintf@fmt))+1
	movlb 1	; select bank1
	movf	(main@probe_result)^080h,w
	movlb 0	; select bank0
	movwf	(??_main)
	clrf	(??_main+1)
	movf	(0+(??_main)),w
	movwf	0+(?_sprintf)+03h
	movf	(1+(??_main)),w
	movwf	1+(?_sprintf)+03h
	fcall	_sprintf
	line	87
	
l4489:	
;Main.c: 87:         oled_display1("SGP30 no ACK!");
	movlw	low(((STR_4)|8000h))
	movlb 0	; select bank0
	movwf	(oled_display1@str)
	movlw	high(((STR_4)|8000h))
	movwf	((oled_display1@str))+1
	fcall	_oled_display1
	line	88
	
l4491:	
;Main.c: 88:         oled_display2(line2);
	movlw	low(main@line2)
	movlb 0	; select bank0
	movwf	(oled_display2@str)
	movlw	high(main@line2)
	movwf	(oled_display2@str+1)
	fcall	_oled_display2
	line	89
	
l4493:	
;Main.c: 89:         blink_error(2);
	movlw	low(02h)
	fcall	_blink_error
	line	92
	
l4495:	
;Main.c: 92:     oled_display1("SGP30 found!");
	movlw	low(((STR_5)|8000h))
	movlb 0	; select bank0
	movwf	(oled_display1@str)
	movlw	high(((STR_5)|8000h))
	movwf	((oled_display1@str))+1
	fcall	_oled_display1
	line	93
	
l4497:	
;Main.c: 93:     oled_display2("Self-test...");
	movlw	low(((STR_6)|8000h))
	movlb 0	; select bank0
	movwf	(oled_display2@str)
	movlw	high(((STR_6)|8000h))
	movwf	((oled_display2@str))+1
	fcall	_oled_display2
	line	94
	
l4499:	
;Main.c: 94:     _delay((unsigned long)((500)*(32000000U/4000.0)));
	asmopt push
asmopt off
movlw  21
	movlb 0	; select bank0
movwf	((??_main)+1)
movlw	75
movwf	((??_main))
	movlw	190
u3807:
decfsz	wreg
	goto	u3807
	decfsz	((??_main)),f
	goto	u3807
	decfsz	((??_main)+1),f
	goto	u3807
	nop
asmopt pop

	line	103
	
l4501:	
;Main.c: 103:     _Bool test_ok = sgp30_self_test();
	fcall	_sgp30_self_test
	movlb 1	; select bank1
	movwf	(main@test_ok)^080h
	line	105
	
l4503:	
;Main.c: 105:     if (!test_ok) {
	movf	((main@test_ok)^080h),w
	btfss	status,2
	goto	u3461
	goto	u3460
u3461:
	goto	l4509
u3460:
	line	106
	
l4505:	
;Main.c: 106:         oled_display1("Self-test FAIL");
	movlw	low(((STR_7)|8000h))
	movlb 0	; select bank0
	movwf	(oled_display1@str)
	movlw	high(((STR_7)|8000h))
	movwf	((oled_display1@str))+1
	fcall	_oled_display1
	line	107
;Main.c: 107:         oled_display2("Continuing...");
	movlw	low(((STR_8)|8000h))
	movlb 0	; select bank0
	movwf	(oled_display2@str)
	movlw	high(((STR_8)|8000h))
	movwf	((oled_display2@str))+1
	fcall	_oled_display2
	line	108
	
l4507:	
;Main.c: 108:         _delay((unsigned long)((2000)*(32000000U/4000.0)));
	asmopt push
asmopt off
movlw  82
	movlb 0	; select bank0
movwf	((??_main)+1)
movlw	43
movwf	((??_main))
	movlw	0
u3817:
decfsz	wreg
	goto	u3817
	decfsz	((??_main)),f
	goto	u3817
	decfsz	((??_main)+1),f
	goto	u3817
	nop
asmopt pop

	line	112
;Main.c: 112:     } else {
	goto	l4513
	line	113
	
l4509:	
;Main.c: 113:         oled_display1("Self-test PASS");
	movlw	low(((STR_9)|8000h))
	movlb 0	; select bank0
	movwf	(oled_display1@str)
	movlw	high(((STR_9)|8000h))
	movwf	((oled_display1@str))+1
	fcall	_oled_display1
	line	114
;Main.c: 114:         oled_display2("");
	movlw	low(((STR_10)|8000h))
	movlb 0	; select bank0
	movwf	(oled_display2@str)
	movlw	high(((STR_10)|8000h))
	movwf	((oled_display2@str))+1
	fcall	_oled_display2
	line	115
	
l4511:	
;Main.c: 115:         _delay((unsigned long)((1000)*(32000000U/4000.0)));
	asmopt push
asmopt off
movlw  41
	movlb 0	; select bank0
movwf	((??_main)+1)
movlw	150
movwf	((??_main))
	movlw	127
u3827:
decfsz	wreg
	goto	u3827
	decfsz	((??_main)),f
	goto	u3827
	decfsz	((??_main)+1),f
	goto	u3827
asmopt pop

	line	119
	
l4513:	
;Main.c: 119:     sgp30_init();
	fcall	_sgp30_init
	line	121
	
l4515:	
;Main.c: 121:     oled_display1("Warming up...");
	movlw	low(((STR_11)|8000h))
	movlb 0	; select bank0
	movwf	(oled_display1@str)
	movlw	high(((STR_11)|8000h))
	movwf	((oled_display1@str))+1
	fcall	_oled_display1
	line	122
	
l4517:	
;Main.c: 122:     oled_display2("15s init period");
	movlw	low(((STR_12)|8000h))
	movlb 0	; select bank0
	movwf	(oled_display2@str)
	movlw	high(((STR_12)|8000h))
	movwf	((oled_display2@str))+1
	fcall	_oled_display2
	line	130
	
l4519:	
;Main.c: 125:     sgp30_data_t air;;Main.c: 126:     char line1[17];;Main.c: 127:     char line2[17];;Main.c: 130:     display_state_t disp = { .needs_update = 1u,
	movlb 0	; select bank0
	movf	(main@F8423),w
	movlb 1	; select bank1
	movwf	(main@disp)^080h
	movlb 0	; select bank0
	movf	(main@F8423+1),w
	movlb 1	; select bank1
	movwf	(main@disp+1)^080h
	movlb 0	; select bank0
	movf	(main@F8423+2),w
	movlb 1	; select bank1
	movwf	(main@disp+2)^080h
	line	134
	
l4521:	
;Main.c: 134:     threshold_config_t thresholds = { .tvoc_warn_ppb = 200u,
	movlb 0	; select bank0
	movf	(main@F8425+3),w
	movlb 1	; select bank1
	movwf	(main@thresholds+3)^080h
	movlb 0	; select bank0
	movf	(main@F8425+2),w
	movlb 1	; select bank1
	movwf	(main@thresholds+2)^080h
	movlb 0	; select bank0
	movf	(main@F8425+1),w
	movlb 1	; select bank1
	movwf	(main@thresholds+1)^080h
	movlb 0	; select bank0
	movf	(main@F8425),w
	movlb 1	; select bank1
	movwf	(main@thresholds)^080h

	line	138
	
l4523:	
;Main.c: 138:         LATDbits.LATD0 = 1;
	movlb 0	; select bank0
	bsf	(27),0	;volatile
	line	140
	
l4525:	
;Main.c: 140:         if (sgp30_measure(&air) && air.valid) {
	movlw	low(main@air)
	movwf	(sgp30_measure@result)
	movlw	high(main@air)
	movwf	((sgp30_measure@result))+1
	fcall	_sgp30_measure
	xorlw	low(0)&0ffh
	skipnz
	goto	u3471
	goto	u3470
u3471:
	goto	l4549
u3470:
	
l4527:	
	movlb 1	; select bank1
	movf	(0+(main@air)^080h+04h),w
	btfsc	status,2
	goto	u3481
	goto	u3480
u3481:
	goto	l4549
u3480:
	line	142
	
l4529:	
;Main.c: 142:             uint16_t tvoc_val = air.tvoc;
	movf	1+(main@air)^080h+02h,w
	movwf	(main@tvoc_val+1)^080h
	movf	0+(main@air)^080h+02h,w
	movwf	(main@tvoc_val)^080h
	line	143
;Main.c: 143:             uint16_t tvoc_limit = thresholds.tvoc_warn_ppb;
	movf	(main@thresholds+1)^080h,w
	movwf	(main@tvoc_limit+1)^080h
	movf	(main@thresholds)^080h,w
	movwf	(main@tvoc_limit)^080h
	line	146
;Main.c: 146:             if (tvoc_val > tvoc_limit) {
	movf	(main@tvoc_val+1)^080h,w
	subwf	(main@tvoc_limit+1)^080h,w
	skipz
	goto	u3495
	movf	(main@tvoc_val)^080h,w
	subwf	(main@tvoc_limit)^080h,w
u3495:
	skipnc
	goto	u3491
	goto	u3490
u3491:
	goto	l4533
u3490:
	line	147
	
l4531:	
;Main.c: 147:                 disp.show_warning = 1u;
	movlw	01h
	movwf	0+(main@disp)^080h+01h
	line	148
;Main.c: 148:                 disp.screen_mode = 1u;
	movlw	01h
	movwf	0+(main@disp)^080h+02h
	line	149
;Main.c: 149:             } else {
	goto	l4535
	line	150
	
l4533:	
;Main.c: 150:                 disp.show_warning = 0u;
	clrf	0+(main@disp)^080h+01h
	line	151
;Main.c: 151:                 disp.screen_mode = 0u;
	clrf	0+(main@disp)^080h+02h
	line	155
	
l4535:	
;Main.c: 155:             sprintf(line1, "CO2: %u ppm", air.co2eq);
	movlw	(low(main@line1|((0x0)<<8)))&0ffh
	movlb 0	; select bank0
	movwf	(sprintf@s)
	movlw	low(((STR_13)|8000h))
	movwf	(sprintf@fmt)
	movlw	high(((STR_13)|8000h))
	movwf	((sprintf@fmt))+1
	movlb 1	; select bank1
	movf	(main@air+1)^080h,w
	movlb 0	; select bank0
	movwf	1+(?_sprintf)+03h
	movlb 1	; select bank1
	movf	(main@air)^080h,w
	movlb 0	; select bank0
	movwf	0+(?_sprintf)+03h
	fcall	_sprintf
	line	158
	
l4537:	
;Main.c: 158:             if (disp.show_warning) {
	movlb 1	; select bank1
	movf	(0+(main@disp)^080h+01h),w
	btfsc	status,2
	goto	u3501
	goto	u3500
u3501:
	goto	l4541
u3500:
	line	159
	
l4539:	
;Main.c: 159:                 sprintf(line2, "!TVOC HI: %u ppb", air.tvoc);
	movlw	(low(main@line2_1045|((0x0)<<8)))&0ffh
	movlb 0	; select bank0
	movwf	(sprintf@s)
	movlw	low(((STR_14)|8000h))
	movwf	(sprintf@fmt)
	movlw	high(((STR_14)|8000h))
	movwf	((sprintf@fmt))+1
	movlb 1	; select bank1
	movf	1+(main@air)^080h+02h,w
	movlb 0	; select bank0
	movwf	1+(?_sprintf)+03h
	movlb 1	; select bank1
	movf	0+(main@air)^080h+02h,w
	movlb 0	; select bank0
	movwf	0+(?_sprintf)+03h
	fcall	_sprintf
	line	160
;Main.c: 160:             } else {
	goto	l4543
	line	161
	
l4541:	
;Main.c: 161:                 sprintf(line2, "TVOC: %u ppb", air.tvoc);
	movlw	(low(main@line2_1045|((0x0)<<8)))&0ffh
	movlb 0	; select bank0
	movwf	(sprintf@s)
	movlw	low(((STR_15)|8000h))
	movwf	(sprintf@fmt)
	movlw	high(((STR_15)|8000h))
	movwf	((sprintf@fmt))+1
	movlb 1	; select bank1
	movf	1+(main@air)^080h+02h,w
	movlb 0	; select bank0
	movwf	1+(?_sprintf)+03h
	movlb 1	; select bank1
	movf	0+(main@air)^080h+02h,w
	movlb 0	; select bank0
	movwf	0+(?_sprintf)+03h
	fcall	_sprintf
	line	164
	
l4543:	
;Main.c: 164:             oled_display1(line1);
	movlw	low(main@line1)
	movlb 0	; select bank0
	movwf	(oled_display1@str)
	movlw	high(main@line1)
	movwf	(oled_display1@str+1)
	fcall	_oled_display1
	line	165
	
l4545:	
;Main.c: 165:             oled_display2(line2);
	movlw	low(main@line2_1045)
	movlb 0	; select bank0
	movwf	(oled_display2@str)
	movlw	high(main@line2_1045)
	movwf	(oled_display2@str+1)
	fcall	_oled_display2
	line	166
	
l4547:	
;Main.c: 166:             disp.needs_update = 0u;
	movlb 1	; select bank1
	clrf	(main@disp)^080h
	line	167
;Main.c: 167:         } else {
	goto	l4553
	line	168
	
l4549:	
;Main.c: 168:             oled_display1("Read error");
	movlw	low(((STR_16)|8000h))
	movlb 0	; select bank0
	movwf	(oled_display1@str)
	movlw	high(((STR_16)|8000h))
	movwf	((oled_display1@str))+1
	fcall	_oled_display1
	line	169
;Main.c: 169:             oled_display2("Retrying...");
	movlw	low(((STR_17)|8000h))
	movlb 0	; select bank0
	movwf	(oled_display2@str)
	movlw	high(((STR_17)|8000h))
	movwf	((oled_display2@str))+1
	fcall	_oled_display2
	line	170
	
l4551:	
;Main.c: 170:             disp.needs_update = 1u;
	movlw	01h
	movlb 1	; select bank1
	movwf	(main@disp)^080h
	line	173
	
l4553:	
;Main.c: 173:         _delay((unsigned long)((500)*(32000000U/4000.0)));
	asmopt push
asmopt off
movlw  21
	movlb 0	; select bank0
movwf	((??_main)+1)
movlw	75
movwf	((??_main))
	movlw	190
u3837:
decfsz	wreg
	goto	u3837
	decfsz	((??_main)),f
	goto	u3837
	decfsz	((??_main)+1),f
	goto	u3837
	nop
asmopt pop

	line	174
	
l4555:	
;Main.c: 174:         LATDbits.LATD0 = 0;
	movlb 0	; select bank0
	bcf	(27),0	;volatile
	line	175
	
l4557:	
;Main.c: 175:         _delay((unsigned long)((500)*(32000000U/4000.0)));
	asmopt push
asmopt off
movlw  21
	movlb 0	; select bank0
movwf	((??_main)+1)
movlw	75
movwf	((??_main))
	movlw	190
u3847:
decfsz	wreg
	goto	u3847
	decfsz	((??_main)),f
	goto	u3847
	decfsz	((??_main)+1),f
	goto	u3847
	nop
asmopt pop

	goto	l4523
	global	start
	ljmp	start
	callstack 0
	line	178
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,90
	global	_sprintf

;; *************** function _sprintf *****************
;; Defined at:
;;		line 9 in file "E:\MPXLab\XC8 Compiler\pic\sources\c99\common\nf_sprintf.c"
;; Parameters:    Size  Location     Type
;;  s               1   28[BANK0 ] PTR unsigned char 
;;		 -> main@line2_1045(17), main@line1(17), main@line2(17), 
;;  fmt             2   29[BANK0 ] PTR const unsigned char 
;;		 -> STR_15(13), STR_14(17), STR_13(12), STR_3(8), 
;; Auto vars:     Size  Location     Type
;;  f              11   34[BANK0 ] struct _IO_FILE
;;  ret             2    0        int 
;;  ap              1   33[BANK0 ] PTR void [1]
;;		 -> ?_sprintf(2), 
;; Return value:  Size  Location     Type
;;                  2   28[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       5       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0      12       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0      17       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       17 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 10
;; This function calls:
;;		_vfprintf
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=3
	file	"E:\MPXLab\XC8 Compiler\pic\sources\c99\common\nf_sprintf.c"
	line	9
global __ptext1
__ptext1:	;psect for function _sprintf
psect	text1
	file	"E:\MPXLab\XC8 Compiler\pic\sources\c99\common\nf_sprintf.c"
	line	9
	
_sprintf:	
;incstack = 0
	callstack 5
; Regs used in _sprintf: [wreg-fsr1h+status,2+status,0+pclath+cstack]
	line	15
	
l4413:	
	movlw	(low(?_sprintf|((0x0)<<8)+03h))&0ffh
	movlb 0	; select bank0
	movwf	(sprintf@ap)
	line	16
	movf	(sprintf@s),w
	movwf	(sprintf@f)
	clrf	(sprintf@f+1)
	line	17
	
l4415:	
	clrf	0+(sprintf@f)+02h
	clrf	1+(sprintf@f)+02h
	line	18
	
l4417:	
	clrf	0+(sprintf@f)+09h
	clrf	1+(sprintf@f)+09h
	line	19
	
l4419:	
	movlw	low(sprintf@f)
	movwf	(vfprintf@fp)
	movlw	high(sprintf@f)
	movwf	((vfprintf@fp))+1
	movf	(sprintf@fmt+1),w
	movwf	(vfprintf@fmt+1)
	movf	(sprintf@fmt),w
	movwf	(vfprintf@fmt)
	movlw	(low(sprintf@ap|((0x0)<<8)))&0ffh
	movwf	(vfprintf@ap)
	fcall	_vfprintf
	line	20
	
l4421:	
	movlb 0	; select bank0
	movf	(sprintf@s),w
	addwf	0+(sprintf@f)+02h,w
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	line	23
	
l1146:	
	return
	callstack 0
GLOBAL	__end_of_sprintf
	__end_of_sprintf:
	signat	_sprintf,4698
	global	_vfprintf

;; *************** function _vfprintf *****************
;; Defined at:
;;		line 1817 in file "E:\MPXLab\XC8 Compiler\pic\sources\c99\common\doprnt.c"
;; Parameters:    Size  Location     Type
;;  fp              2   20[BANK0 ] PTR struct _IO_FILE
;;		 -> sprintf@f(11), 
;;  fmt             2   22[BANK0 ] PTR const unsigned char 
;;		 -> STR_15(13), STR_14(17), STR_13(12), STR_3(8), 
;;  ap              1   24[BANK0 ] PTR PTR void 
;;		 -> sprintf@ap(1), 
;; Auto vars:     Size  Location     Type
;;  cfmt            2   26[BANK0 ] PTR unsigned char 
;;		 -> STR_15(13), STR_14(17), STR_13(12), STR_3(8), 
;; Return value:  Size  Location     Type
;;                  2   20[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       5       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       8       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 9
;; This function calls:
;;		_vfpfcnvrt
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=1
	file	"E:\MPXLab\XC8 Compiler\pic\sources\c99\common\doprnt.c"
	line	1817
global __ptext2
__ptext2:	;psect for function _vfprintf
psect	text2
	file	"E:\MPXLab\XC8 Compiler\pic\sources\c99\common\doprnt.c"
	line	1817
	
_vfprintf:	
;incstack = 0
	callstack 5
; Regs used in _vfprintf: [wreg-fsr1h+status,2+status,0+pclath+cstack]
	line	1822
	
l4317:	
;E:\MPXLab\XC8 Compiler\pic\sources\c99\common\doprnt.c: 1817: int vfprintf(FILE *fp, const char *fmt, va_list ap);E:\MPXLab\XC8 Compiler\pic\sources\c99\common\doprnt.c: 1818: {;E:\MPXLab\XC8 Compiler\pic\sources\c99\common\doprnt.c: 1820:     char *cfmt;;E:\MPXLab\XC8 Compiler\pic\sources\c99\common\doprnt.c: 1822:     cfmt = (char *)fmt;
	movlb 0	; select bank0
	movf	(vfprintf@fmt+1),w
	movwf	(vfprintf@cfmt+1)
	movf	(vfprintf@fmt),w
	movwf	(vfprintf@cfmt)
	line	1826
;E:\MPXLab\XC8 Compiler\pic\sources\c99\common\doprnt.c: 1826:     while (*cfmt) {
	goto	l4321
	line	1830
	
l4319:	
;E:\MPXLab\XC8 Compiler\pic\sources\c99\common\doprnt.c: 1830:    vfpfcnvrt(fp, &cfmt, ap);
	movf	(vfprintf@fp+1),w
	movwf	(vfpfcnvrt@fp+1)
	movf	(vfprintf@fp),w
	movwf	(vfpfcnvrt@fp)
	movlw	(low(vfprintf@cfmt|((0x0)<<8)))&0ffh
	movwf	(vfpfcnvrt@fmt)
	movf	(vfprintf@ap),w
	movwf	(vfpfcnvrt@ap)
	fcall	_vfpfcnvrt
	line	1826
	
l4321:	
;E:\MPXLab\XC8 Compiler\pic\sources\c99\common\doprnt.c: 1826:     while (*cfmt) {
	movlb 0	; select bank0
	movf	(vfprintf@cfmt),w
	movwf	fsr0l
	movf	((vfprintf@cfmt+1)),w
	movwf	fsr0h
	moviw	fsr0++
	btfss	status,2
	goto	u3331
	goto	u3330
u3331:
	goto	l4319
u3330:
	line	1835
	
l4323:	
;E:\MPXLab\XC8 Compiler\pic\sources\c99\common\doprnt.c: 1835:  return 0;
	clrf	(?_vfprintf)
	clrf	(?_vfprintf+1)
	line	1840
	
l1190:	
	return
	callstack 0
GLOBAL	__end_of_vfprintf
	__end_of_vfprintf:
	signat	_vfprintf,12410
	global	_vfpfcnvrt

;; *************** function _vfpfcnvrt *****************
;; Defined at:
;;		line 1177 in file "E:\MPXLab\XC8 Compiler\pic\sources\c99\common\doprnt.c"
;; Parameters:    Size  Location     Type
;;  fp              2    5[BANK0 ] PTR struct _IO_FILE
;;		 -> sprintf@f(11), 
;;  fmt             1    7[BANK0 ] PTR PTR unsigned char 
;;		 -> vfprintf@cfmt(2), 
;;  ap              1    8[BANK0 ] PTR PTR void 
;;		 -> sprintf@ap(1), 
;; Auto vars:     Size  Location     Type
;;  convarg         4   15[BANK0 ] struct .
;;  cp              2   13[BANK0 ] PTR unsigned char 
;;		 -> STR_15(13), STR_14(17), STR_13(12), STR_3(8), 
;;  c               1   19[BANK0 ] unsigned char 
;;  done            1    0        _Bool 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       7       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0      15       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 8
;; This function calls:
;;		___lwdiv
;;		___lwmod
;;		_fputc
;; This function is called by:
;;		_vfprintf
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1,group=1
	line	1177
global __ptext3
__ptext3:	;psect for function _vfpfcnvrt
psect	text3
	file	"E:\MPXLab\XC8 Compiler\pic\sources\c99\common\doprnt.c"
	line	1177
	
_vfpfcnvrt:	
;incstack = 0
	callstack 5
; Regs used in _vfpfcnvrt: [wreg-fsr1h+status,2+status,0+pclath+cstack]
	line	1201
	
l4215:	
;E:\MPXLab\XC8 Compiler\pic\sources\c99\common\doprnt.c: 1177: vfpfcnvrt(FILE *fp, char *fmt[], va_list ap);E:\MPXLab\XC8 Compiler\pic\sources\c99\common\doprnt.c: 1178: {;E:\MPXLab\XC8 Compiler\pic\sources\c99\common\doprnt.c: 1179:     char c, *cp;;E:\MPXLab\XC8 Compiler\pic\sources\c99\common\doprnt.c: 1180:     _Bool done;;E:\MPXLab\XC8 Compiler\pic\sources\c99\common\doprnt.c: 1188:  } convarg;;E:\MPXLab\XC8 Compiler\pic\sources\c99\common\doprnt.c: 1201:     if ((*fmt)[0] == '%') {
	movlb 0	; select bank0
	movf	(vfpfcnvrt@fmt),w
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_vfpfcnvrt)
	moviw	[1]fsr1
	movwf	(??_vfpfcnvrt+1)
	movf	(0+(??_vfpfcnvrt)),w
	movwf	fsr0l
	movf	((1+(??_vfpfcnvrt))),w
	movwf	fsr0h
	moviw	fsr0++
xorlw	37
	btfss	status,2
	goto	u3211
	goto	u3210
u3211:
	goto	l4253
u3210:
	line	1202
	
l4217:	
;E:\MPXLab\XC8 Compiler\pic\sources\c99\common\doprnt.c: 1202:         ++*fmt;
	movf	(vfpfcnvrt@fmt),w
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	line	1204
	
l4219:	
;E:\MPXLab\XC8 Compiler\pic\sources\c99\common\doprnt.c: 1204:         flags = width = 0;
	clrf	(_width)
	clrf	(_width+1)
	movlw	(low(0))&0ffh
	movwf	(_flags)
	line	1205
	
l4221:	
;E:\MPXLab\XC8 Compiler\pic\sources\c99\common\doprnt.c: 1205:         prec = -1;
	movlw	0FFh
	movwf	(_prec)
	movlw	0FFh
	movwf	((_prec))+1
	line	1291
	
l4223:	
;E:\MPXLab\XC8 Compiler\pic\sources\c99\common\doprnt.c: 1439:   if (0
	movf	(vfpfcnvrt@fmt),w
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movwf	(vfpfcnvrt@cp)
	moviw	[1]fsr1
	movwf	(vfpfcnvrt@cp+1)
	line	1439
	
l4225:	
	movf	(vfpfcnvrt@cp),w
	movwf	fsr0l
	movf	((vfpfcnvrt@cp+1)),w
	movwf	fsr0h
	moviw	fsr0++
xorlw	117
	btfss	status,2
	goto	u3221
	goto	u3220
u3221:
	goto	l4249
u3220:
	line	1495
	
l4227:	
;E:\MPXLab\XC8 Compiler\pic\sources\c99\common\doprnt.c: 1452:     ) {;E:\MPXLab\XC8 Compiler\pic\sources\c99\common\doprnt.c: 1495:    convarg.uint = (vfpf_uint_t)(unsigned int)(*(unsigned int *)__va_arg(*(unsigned int **)ap, (unsigned int)0));
	movf	(vfpfcnvrt@ap),w
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	movwf	fsr0l
	clrf fsr0h	
	
	movlw	02h
	addwf	indf1,f
	moviw	[0]fsr0
	movwf	(vfpfcnvrt@convarg)
	moviw	[1]fsr0
	movwf	(vfpfcnvrt@convarg+1)
	line	1497
	
l4229:	
;E:\MPXLab\XC8 Compiler\pic\sources\c99\common\doprnt.c: 1497:    *fmt = cp+1;
	movf	(vfpfcnvrt@cp),w
	addlw	01h
	movwf	(??_vfpfcnvrt)
	movlw	0
	addwfc	(vfpfcnvrt@cp+1),w
	movwf	1+(??_vfpfcnvrt)
	movf	(vfpfcnvrt@fmt),w
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(0+(??_vfpfcnvrt)),w
	movwi	[0]fsr1
	movf	(1+(??_vfpfcnvrt)),w
	movwi	[1]fsr1
	line	1498
;E:\MPXLab\XC8 Compiler\pic\sources\c99\common\doprnt.c: 1498:    switch (*cp) {
	goto	l4247
	line	1523
;E:\MPXLab\XC8 Compiler\pic\sources\c99\common\doprnt.c: 1523:     case 'u':
	
l1175:	
	line	1525
;E:\MPXLab\XC8 Compiler\pic\sources\c99\common\doprnt.c: 1525:      c = sizeof(dbuf);
	movlw	020h
	movwf	(vfpfcnvrt@c)
	line	1527
	
l4231:	
;E:\MPXLab\XC8 Compiler\pic\sources\c99\common\doprnt.c: 1527:       dbuf[--c] = (convarg.uint % 10) + '0';
	movlw	01h
	subwf	(vfpfcnvrt@c),f
	movf	((vfpfcnvrt@c)),w
	addlw	low(_dbuf|((0x1)<<8))&0ffh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	0Ah
	movwf	(___lwmod@divisor)
	movlw	0
	movwf	((___lwmod@divisor))+1
	movf	(vfpfcnvrt@convarg+1),w
	movwf	(___lwmod@dividend+1)
	movf	(vfpfcnvrt@convarg),w
	movwf	(___lwmod@dividend)
	fcall	___lwmod
	movf	(0+(?___lwmod)),w
	addlw	030h
	movwf	indf1
	line	1528
	
l4233:	
;E:\MPXLab\XC8 Compiler\pic\sources\c99\common\doprnt.c: 1528:       convarg.uint /= 10;
	movlw	0Ah
	movwf	(___lwdiv@divisor)
	movlw	0
	movwf	((___lwdiv@divisor))+1
	movlb 0	; select bank0
	movf	(vfpfcnvrt@convarg+1),w
	movwf	(___lwdiv@dividend+1)
	movf	(vfpfcnvrt@convarg),w
	movwf	(___lwdiv@dividend)
	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	movlb 0	; select bank0
	movwf	(vfpfcnvrt@convarg+1)
	movf	(0+(?___lwdiv)),w
	movwf	(vfpfcnvrt@convarg)
	line	1532
	
l4235:	
;E:\MPXLab\XC8 Compiler\pic\sources\c99\common\doprnt.c: 1532:      } while (convarg.uint != 0 && c != 0);
	movf	((vfpfcnvrt@convarg)),w
iorwf	((vfpfcnvrt@convarg+1)),w
	btfsc	status,2
	goto	u3231
	goto	u3230
u3231:
	goto	l4243
u3230:
	
l4237:	
	movf	((vfpfcnvrt@c)),w
	btfss	status,2
	goto	u3241
	goto	u3240
u3241:
	goto	l4231
u3240:
	goto	l4243
	line	1534
	
l4239:	
;E:\MPXLab\XC8 Compiler\pic\sources\c99\common\doprnt.c: 1534:       fputc(dbuf[c++], fp);
	movf	(vfpfcnvrt@c),w
	addlw	low(_dbuf|((0x1)<<8))&0ffh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_vfpfcnvrt)
	clrf	(??_vfpfcnvrt+1)
	movf	(0+(??_vfpfcnvrt)),w
	movwf	(fputc@c)
	movf	(1+(??_vfpfcnvrt)),w
	movwf	(fputc@c+1)
	movf	(vfpfcnvrt@fp+1),w
	movwf	(fputc@fp+1)
	movf	(vfpfcnvrt@fp),w
	movwf	(fputc@fp)
	fcall	_fputc
	
l4241:	
	movlw	low(01h)
	movlb 0	; select bank0
	addwf	(vfpfcnvrt@c),f
	line	1533
	
l4243:	
;E:\MPXLab\XC8 Compiler\pic\sources\c99\common\doprnt.c: 1533:      while (c != sizeof(dbuf)) {
		movlw	32
	xorwf	((vfpfcnvrt@c)),w
	btfss	status,2
	goto	u3251
	goto	u3250
u3251:
	goto	l4239
u3250:
	goto	l1183
	line	1589
	
l4247:	
	movf	(vfpfcnvrt@cp),w
	movwf	fsr0l
	movf	((vfpfcnvrt@cp+1)),w
	movwf	fsr0h
	movf	indf0,w ;code access
	; Switch size 1, requested type "simple"
; Number of cases is 1, Range of values is 117 to 117
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte           11     9 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	asmopt push
	asmopt off
	xorlw	117^0	; case 117
	skipnz
	goto	l1175
	goto	l4249
	asmopt pop

	line	1806
	
l4249:	
;E:\MPXLab\XC8 Compiler\pic\sources\c99\common\doprnt.c: 1806:         ++*fmt;
	movlb 0	; select bank0
	movf	(vfpfcnvrt@fmt),w
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	goto	l1183
	line	1811
	
l4253:	
;E:\MPXLab\XC8 Compiler\pic\sources\c99\common\doprnt.c: 1811:     fputc((int)(*fmt)[0], fp);
	movf	(vfpfcnvrt@fmt),w
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_vfpfcnvrt)
	moviw	[1]fsr1
	movwf	(??_vfpfcnvrt+1)
	movf	(0+(??_vfpfcnvrt)),w
	movwf	fsr0l
	movf	((1+(??_vfpfcnvrt))),w
	movwf	fsr0h
	movf	indf0,w ;code access
	movwf	(??_vfpfcnvrt+2)
	clrf	(??_vfpfcnvrt+1+2)
	movf	(0+(??_vfpfcnvrt+2)),w
	movwf	(fputc@c)
	movf	(1+(??_vfpfcnvrt+2)),w
	movwf	(fputc@c+1)
	movf	(vfpfcnvrt@fp+1),w
	movwf	(fputc@fp+1)
	movf	(vfpfcnvrt@fp),w
	movwf	(fputc@fp)
	fcall	_fputc
	goto	l4249
	line	1814
	
l1183:	
	return
	callstack 0
GLOBAL	__end_of_vfpfcnvrt
	__end_of_vfpfcnvrt:
	signat	_vfpfcnvrt,12409
	global	_fputc

;; *************** function _fputc *****************
;; Defined at:
;;		line 8 in file "E:\MPXLab\XC8 Compiler\pic\sources\c99\common\nf_fputc.c"
;; Parameters:    Size  Location     Type
;;  c               2    3[COMMON] int 
;;  fp              2    5[COMMON] PTR struct _IO_FILE
;;		 -> sprintf@f(11), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2    3[COMMON] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         4       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       5       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         4       5       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 7
;; This function calls:
;;		_putch
;; This function is called by:
;;		_vfpfcnvrt
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1,group=3
	file	"E:\MPXLab\XC8 Compiler\pic\sources\c99\common\nf_fputc.c"
	line	8
global __ptext4
__ptext4:	;psect for function _fputc
psect	text4
	file	"E:\MPXLab\XC8 Compiler\pic\sources\c99\common\nf_fputc.c"
	line	8
	
_fputc:	
;incstack = 0
	callstack 5
; Regs used in _fputc: [wreg-fsr1h+status,2+status,0+pclath+cstack]
	line	12
	
l2801:	
	movf	((fputc@fp)),w
iorwf	((fputc@fp+1)),w
	btfsc	status,2
	goto	u1741
	goto	u1740
u1741:
	goto	l2805
u1740:
	
l2803:	
	movf	((fputc@fp)),w
iorwf	((fputc@fp+1)),w
	btfss	status,2
	goto	u1751
	goto	u1750
u1751:
	goto	l2807
u1750:
	line	13
	
l2805:	
	movf	(fputc@c),w
	fcall	_putch
	line	14
	goto	l1202
	line	15
	
l2807:	
	movf	(fputc@fp),w
	movwf	fsr1l
	clrf	fsr1h
	addfsr	fsr1,09h
		moviw	fsr1++
	iorwf	indf1,w
	btfsc	status,2
	goto	u1761
	goto	u1760

u1761:
	goto	l2811
u1760:
	
l2809:	
	movf	(fputc@fp),w
	movwf	fsr1l
	clrf	fsr1h
	addfsr	fsr1,09h
	moviw	[0]fsr1
	movlb 0	; select bank0
	movwf	(??_fputc)
	moviw	[1]fsr1
	movwf	(??_fputc+1)
	movf	(fputc@fp),w
	movwf	fsr1l
	clrf	fsr1h
	addfsr	fsr1,02h
	moviw	[0]fsr1
	movwf	(??_fputc+2)
	moviw	[1]fsr1
	movwf	(??_fputc+1+2)
	movf	(1+(??_fputc+2)),w
	xorlw	80h
	movwf	(??_fputc+4)
	movf	(1+(??_fputc)),w
	xorlw	80h
	subwf	(??_fputc+4),w
	skipz
	goto	u1775
	movf	(0+(??_fputc)),w
	subwf	(0+(??_fputc+2)),w
u1775:

	skipnc
	goto	u1771
	goto	u1770
u1771:
	goto	l1202
u1770:
	line	18
	
l2811:	
	movf	(fputc@fp),w
	movwf	fsr1l
	clrf	fsr1h
	addfsr	fsr1,02h
	movf	(fputc@fp),w
	movwf	fsr0l
	movf	(fputc@fp+1),w
	movwf	fsr0h

	moviw	[0]fsr0
	movlb 0	; select bank0
	movwf	(??_fputc)
	moviw	[1]fsr0
	movwf	(??_fputc+1)
	moviw	[0]fsr1
	addwf	(0+(??_fputc)),w
	movwf	fsr0l
	moviw	[1]fsr1
	addwfc	(1+(??_fputc)),w
	movwf	fsr0l+1
	movf	(fputc@c),w
	movwf	indf0
	line	20
	
l2813:	
	movf	(fputc@fp),w
	movwf	fsr1l
	clrf	fsr1h
	addfsr	fsr1,02h
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	line	24
	
l1202:	
	return
	callstack 0
GLOBAL	__end_of_fputc
	__end_of_fputc:
	signat	_fputc,8314
	global	_putch

;; *************** function _putch *****************
;; Defined at:
;;		line 7 in file "E:\MPXLab\XC8 Compiler\pic\sources\c99\common\putch.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 6
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_fputc
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1,group=3
	file	"E:\MPXLab\XC8 Compiler\pic\sources\c99\common\putch.c"
	line	7
global __ptext5
__ptext5:	;psect for function _putch
psect	text5
	file	"E:\MPXLab\XC8 Compiler\pic\sources\c99\common\putch.c"
	line	7
	
_putch:	
;incstack = 0
	callstack 5
; Regs used in _putch: [wreg]
	line	9
	
l1213:	
	return
	callstack 0
GLOBAL	__end_of_putch
	__end_of_putch:
	signat	_putch,4217
	global	___lwmod

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 5 in file "E:\MPXLab\XC8 Compiler\pic\sources\c99\common\lwmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    3[COMMON] unsigned int 
;;  dividend        2    5[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1    7[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    3[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         4       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         5       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 6
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_vfpfcnvrt
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1,group=2
	file	"E:\MPXLab\XC8 Compiler\pic\sources\c99\common\lwmod.c"
	line	5
global __ptext6
__ptext6:	;psect for function ___lwmod
psect	text6
	file	"E:\MPXLab\XC8 Compiler\pic\sources\c99\common\lwmod.c"
	line	5
	
___lwmod:	
;incstack = 0
	callstack 6
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	12
	
l2779:	
	movf	((___lwmod@divisor)),w
iorwf	((___lwmod@divisor+1)),w
	btfsc	status,2
	goto	u1681
	goto	u1680
u1681:
	goto	l2797
u1680:
	line	13
	
l2781:	
	movlw	01h
	movwf	(___lwmod@counter)
	line	14
	goto	l2787
	line	15
	
l2783:	
	movlw	01h
	
u1695:
	lslf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	decfsz	wreg,f
	goto	u1695
	line	16
	
l2785:	
	movlw	low(01h)
	addwf	(___lwmod@counter),f
	line	14
	
l2787:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u1701
	goto	u1700
u1701:
	goto	l2783
u1700:
	line	19
	
l2789:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u1715
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u1715:
	skipc
	goto	u1711
	goto	u1710
u1711:
	goto	l2793
u1710:
	line	20
	
l2791:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	subwfb	(___lwmod@dividend+1),f
	line	21
	
l2793:	
	movlw	01h
	
u1725:
	lsrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	decfsz	wreg,f
	goto	u1725
	line	22
	
l2795:	
	movlw	01h
	subwf	(___lwmod@counter),f
	btfss	status,2
	goto	u1731
	goto	u1730
u1731:
	goto	l2789
u1730:
	line	24
	
l2797:	
	movf	(___lwmod@dividend+1),w
	movwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	movwf	(?___lwmod)
	line	25
	
l973:	
	return
	callstack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
	signat	___lwmod,8314
	global	___lwdiv

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 5 in file "E:\MPXLab\XC8 Compiler\pic\sources\c99\common\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    3[COMMON] unsigned int 
;;  dividend        2    5[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    1[BANK0 ] unsigned int 
;;  counter         1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    3[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         4       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         4       3       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 6
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_vfpfcnvrt
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1,group=2
	file	"E:\MPXLab\XC8 Compiler\pic\sources\c99\common\lwdiv.c"
	line	5
global __ptext7
__ptext7:	;psect for function ___lwdiv
psect	text7
	file	"E:\MPXLab\XC8 Compiler\pic\sources\c99\common\lwdiv.c"
	line	5
	
___lwdiv:	
;incstack = 0
	callstack 6
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	13
	
l4053:	
	movlb 0	; select bank0
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	14
	
l4055:	
	movf	((___lwdiv@divisor)),w
iorwf	((___lwdiv@divisor+1)),w
	btfsc	status,2
	goto	u2981
	goto	u2980
u2981:
	goto	l4075
u2980:
	line	15
	
l4057:	
	movlw	01h
	movwf	(___lwdiv@counter)
	line	16
	goto	l4063
	line	17
	
l4059:	
	movlw	01h
	
u2995:
	lslf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	decfsz	wreg,f
	goto	u2995
	line	18
	
l4061:	
	movlw	low(01h)
	addwf	(___lwdiv@counter),f
	line	16
	
l4063:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u3001
	goto	u3000
u3001:
	goto	l4059
u3000:
	line	21
	
l4065:	
	movlw	01h
	
u3015:
	lslf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	decfsz	wreg,f
	goto	u3015
	line	22
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u3025
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u3025:
	skipc
	goto	u3021
	goto	u3020
u3021:
	goto	l4071
u3020:
	line	23
	
l4067:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	subwfb	(___lwdiv@dividend+1),f
	line	24
	
l4069:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	line	26
	
l4071:	
	movlw	01h
	
u3035:
	lsrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	decfsz	wreg,f
	goto	u3035
	line	27
	
l4073:	
	movlw	01h
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u3041
	goto	u3040
u3041:
	goto	l4065
u3040:
	line	29
	
l4075:	
	movf	(___lwdiv@quotient+1),w
	movwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	movwf	(?___lwdiv)
	line	30
	
l963:	
	return
	callstack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
	global	_sgp30_self_test

;; *************** function _sgp30_self_test *****************
;; Defined at:
;;		line 197 in file "sgp30_sensor.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  result          2   29[BANK0 ] unsigned short [1]
;; Return value:  Size  Location     Type
;;                  1    wreg      _Bool 
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 7
;; This function calls:
;;		_sgp30_read_words
;;		_sgp30_send_cmd
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1,group=0
	file	"sgp30_sensor.c"
	line	197
global __ptext8
__ptext8:	;psect for function _sgp30_self_test
psect	text8
	file	"sgp30_sensor.c"
	line	197
	
_sgp30_self_test:	
;incstack = 0
	callstack 8
; Regs used in _sgp30_self_test: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	199
	
l4425:	
;sgp30_sensor.c: 199:     if (!sgp30_send_cmd(0x2032u))
	movlw	032h
	movlb 0	; select bank0
	movwf	(sgp30_send_cmd@cmd)
	movlw	020h
	movwf	((sgp30_send_cmd@cmd))+1
	fcall	_sgp30_send_cmd
	xorlw	low(0)&0ffh
	skipz
	goto	u3391
	goto	u3390
u3391:
	goto	l4431
u3390:
	line	200
	
l4427:	
;sgp30_sensor.c: 200:         return 0;
	movlw	low(0)
	goto	l536
	line	202
	
l4431:	
;sgp30_sensor.c: 202:     _delay((unsigned long)((220u)*(32000000U/4000.0)));
	asmopt push
asmopt off
movlw  9
	movlb 0	; select bank0
movwf	((??_sgp30_self_test)+1)
movlw	238
movwf	((??_sgp30_self_test))
	movlw	175
u3857:
decfsz	wreg
	goto	u3857
	decfsz	((??_sgp30_self_test)),f
	goto	u3857
	decfsz	((??_sgp30_self_test)+1),f
	goto	u3857
asmopt pop

	line	205
	
l4433:	
;sgp30_sensor.c: 204:     uint16_t result[1];;sgp30_sensor.c: 205:     if (!sgp30_read_words(result, 1u))
	movlw	(low(sgp30_self_test@result|((0x0)<<8)))&0ffh
	movlb 0	; select bank0
	movwf	(sgp30_read_words@result_buf)
	clrf	(sgp30_read_words@n_words)
	incf	(sgp30_read_words@n_words),f
	fcall	_sgp30_read_words
	xorlw	low(0)&0ffh
	skipz
	goto	u3401
	goto	u3400
u3401:
	goto	l4439
u3400:
	goto	l4427
	line	208
	
l4439:	
;sgp30_sensor.c: 208:     return (result[0] == 0xD400u);
		movlw	212
	movlb 0	; select bank0
	xorwf	((sgp30_self_test@result+1)),w
iorwf	((sgp30_self_test@result)),w
	btfsc	status,2
	goto	u3411
	goto	u3410
u3411:
	movlw	1
	goto	u3420
u3410:
	movlw	0
u3420:
	line	209
	
l536:	
	return
	callstack 0
GLOBAL	__end_of_sgp30_self_test
	__end_of_sgp30_self_test:
	signat	_sgp30_self_test,89
	global	_sgp30_probe

;; *************** function _sgp30_probe *****************
;; Defined at:
;;		line 42 in file "Main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  s               1    0[BANK0 ] enum E8057
;; Return value:  Size  Location     Type
;;                  1    wreg      enum E8057
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 7
;; This function calls:
;;		_I2C_HW_SendByte
;;		_I2C_HW_Start
;;		_I2C_HW_Stop
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1,group=0
	file	"Main.c"
	line	42
global __ptext9
__ptext9:	;psect for function _sgp30_probe
psect	text9
	file	"Main.c"
	line	42
	
_sgp30_probe:	
;incstack = 0
	callstack 8
; Regs used in _sgp30_probe: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	45
	
l4327:	
;Main.c: 44:     I2C_Status s;;Main.c: 45:     s = I2C_HW_Start();
	fcall	_I2C_HW_Start
	movlb 0	; select bank0
	movwf	(sgp30_probe@s)
	line	46
	
l4329:	
;Main.c: 46:     if (s != I2C_OK) { I2C_HW_Stop(); return s; }
	movf	((sgp30_probe@s)),w
	btfsc	status,2
	goto	u3341
	goto	u3340
u3341:
	goto	l4337
u3340:
	
l4331:	
	fcall	_I2C_HW_Stop
	
l4333:	
	movlb 0	; select bank0
	movf	(sgp30_probe@s),w
	goto	l390
	line	49
	
l4337:	
;Main.c: 49:     s = I2C_HW_SendByte((uint8_t)(((unsigned)0x58u << 1u) & 0xFEu));
	movlw	low(0B0h)
	fcall	_I2C_HW_SendByte
	movlb 0	; select bank0
	movwf	(sgp30_probe@s)
	goto	l4331
	line	52
	
l390:	
	return
	callstack 0
GLOBAL	__end_of_sgp30_probe
	__end_of_sgp30_probe:
	signat	_sgp30_probe,89
	global	_sgp30_measure

;; *************** function _sgp30_measure *****************
;; Defined at:
;;		line 96 in file "sgp30_sensor.c"
;; Parameters:    Size  Location     Type
;;  result          2   27[BANK0 ] PTR struct .
;;		 -> main@air(5), 
;; Auto vars:     Size  Location     Type
;;  words           4   30[BANK0 ] unsigned short [2]
;; Return value:  Size  Location     Type
;;                  1    wreg      _Bool 
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       7       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 10
;; This function calls:
;;		_sgp30_read_words
;;		_sgp30_send_cmd
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1,group=0
	file	"sgp30_sensor.c"
	line	96
global __ptext10
__ptext10:	;psect for function _sgp30_measure
psect	text10
	file	"sgp30_sensor.c"
	line	96
	
_sgp30_measure:	
;incstack = 0
	callstack 5
; Regs used in _sgp30_measure: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	98
	
l4449:	
;sgp30_sensor.c: 96: _Bool sgp30_measure(sgp30_data_t *result);sgp30_sensor.c: 97: {;sgp30_sensor.c: 98:     result->valid = 0;
	movlb 0	; select bank0
	movf	(sgp30_measure@result),w
	movwf	fsr1l
	clrf	fsr1h
	addfsr	fsr1,04h
	clrf	indf1
	line	100
	
l4451:	
;sgp30_sensor.c: 100:     if (!sgp30_send_cmd(0x2008u))
	movlw	08h
	movwf	(sgp30_send_cmd@cmd)
	movlw	020h
	movwf	((sgp30_send_cmd@cmd))+1
	fcall	_sgp30_send_cmd
	xorlw	low(0)&0ffh
	skipz
	goto	u3431
	goto	u3430
u3431:
	goto	l4457
u3430:
	line	101
	
l4453:	
;sgp30_sensor.c: 101:         return 0;
	movlw	low(0)
	goto	l509
	line	103
	
l4457:	
;sgp30_sensor.c: 103:     _delay((unsigned long)((12u)*(32000000U/4000.0)));
	asmopt push
asmopt off
movlw	125
	movlb 0	; select bank0
movwf	((??_sgp30_measure))
	movlw	171
u3867:
decfsz	wreg
	goto	u3867
	decfsz	((??_sgp30_measure)),f
	goto	u3867
	nop2
asmopt pop

	line	106
	
l4459:	
;sgp30_sensor.c: 105:     uint16_t words[2];;sgp30_sensor.c: 106:     if (!sgp30_read_words(words, 2u))
	movlw	(low(sgp30_measure@words|((0x0)<<8)))&0ffh
	movlb 0	; select bank0
	movwf	(sgp30_read_words@result_buf)
	movlw	low(02h)
	movwf	(sgp30_read_words@n_words)
	fcall	_sgp30_read_words
	xorlw	low(0)&0ffh
	skipz
	goto	u3441
	goto	u3440
u3441:
	goto	l4465
u3440:
	goto	l4453
	line	109
	
l4465:	
;sgp30_sensor.c: 109:     result->co2eq = words[0];
	movlb 0	; select bank0
	movf	(sgp30_measure@result),w
	movwf	fsr1l
	movf	(sgp30_measure@result+1),w
	movwf	fsr1h

	movf	(sgp30_measure@words),w
	movwi	[0]fsr1
	movf	(sgp30_measure@words+1),w
	movwi	[1]fsr1
	line	110
;sgp30_sensor.c: 110:     result->tvoc = words[1];
	movf	(sgp30_measure@result),w
	movwf	fsr1l
	clrf	fsr1h
	addfsr	fsr1,02h
	movf	0+(sgp30_measure@words)+02h,w
	movwi	[0]fsr1
	movf	1+(sgp30_measure@words)+02h,w
	movwi	[1]fsr1
	line	111
;sgp30_sensor.c: 111:     result->valid = 1;
	movf	(sgp30_measure@result),w
	movwf	fsr1l
	clrf	fsr1h
	addfsr	fsr1,04h
	movlw	01h
	movwf	indf1
	line	112
	
l4467:	
;sgp30_sensor.c: 112:     return 1;
	movlw	low(01h)
	line	113
	
l509:	
	return
	callstack 0
GLOBAL	__end_of_sgp30_measure
	__end_of_sgp30_measure:
	signat	_sgp30_measure,4217
	global	_sgp30_read_words

;; *************** function _sgp30_read_words *****************
;; Defined at:
;;		line 39 in file "sgp30_sensor.c"
;; Parameters:    Size  Location     Type
;;  result_buf      1    8[BANK0 ] PTR unsigned short 
;;		 -> sgp30_self_test@result(2), sgp30_get_baseline@words(4), sgp30_measure_raw@words(4), sgp30_measure@words(4), 
;;  n_words         1    9[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  idx             1   25[BANK0 ] unsigned char 
;;  lsb             1   24[BANK0 ] unsigned char 
;;  msb             1   23[BANK0 ] unsigned char 
;;  crc             1   22[BANK0 ] unsigned char 
;;  w               1   26[BANK0 ] unsigned char 
;;  raw             9   11[BANK0 ] unsigned char [9]
;;  s               1   21[BANK0 ] enum E7770
;;  total           1   20[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      _Bool 
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0      16       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0      19       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       19 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 6
;; This function calls:
;;		_I2C_HW_Read
;;		___bmul
;;		_sgp30_crc
;; This function is called by:
;;		_sgp30_measure
;;		_sgp30_self_test
;;		_sgp30_measure_raw
;;		_sgp30_get_baseline
;;		_sgp30_get_serial_id
;;		_sgp30_get_feature_set
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1,group=0
	line	39
global __ptext11
__ptext11:	;psect for function _sgp30_read_words
psect	text11
	file	"sgp30_sensor.c"
	line	39
	
_sgp30_read_words:	
;incstack = 0
	callstack 8
; Regs used in _sgp30_read_words: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	43
	
l4281:	
;sgp30_sensor.c: 39: static _Bool sgp30_read_words(uint16_t *result_buf, uint8_t n_words);sgp30_sensor.c: 40: {;sgp30_sensor.c: 42:     uint8_t raw[9];;sgp30_sensor.c: 43:     uint8_t total = (uint8_t)(n_words * 3u);
	movlw	low(03h)
	movwf	(___bmul@multiplicand)
	movlb 0	; select bank0
	movf	(sgp30_read_words@n_words),w
	fcall	___bmul
	movlb 0	; select bank0
	movwf	(sgp30_read_words@total)
	line	45
	
l4283:	
;sgp30_sensor.c: 45:     I2C_Status s = I2C_HW_Read(0x58u, raw, total);
	movlw	(low(sgp30_read_words@raw|((0x0)<<8)))&0ffh
	movwf	(I2C_HW_Read@buf)
	movf	(sgp30_read_words@total),w
	movwf	(I2C_HW_Read@len)
	movlw	low(058h)
	fcall	_I2C_HW_Read
	movlb 0	; select bank0
	movwf	(sgp30_read_words@s)
	line	46
	
l4285:	
;sgp30_sensor.c: 46:     if (s != I2C_OK)
	movf	((sgp30_read_words@s)),w
	btfsc	status,2
	goto	u3291
	goto	u3290
u3291:
	goto	l4291
u3290:
	line	47
	
l4287:	
;sgp30_sensor.c: 47:         return 0;
	movlw	low(0)
	goto	l492
	line	49
	
l4291:	
;sgp30_sensor.c: 49:     for (uint8_t w = 0u; w < n_words; w++) {
	clrf	(sgp30_read_words@w)
	goto	l4311
	line	50
	
l4293:	
;sgp30_sensor.c: 50:         uint8_t idx = (uint8_t)(w * 3u);
	movlw	low(03h)
	movwf	(___bmul@multiplicand)
	movf	(sgp30_read_words@w),w
	fcall	___bmul
	movlb 0	; select bank0
	movwf	(sgp30_read_words@idx)
	line	51
	
l4295:	
;sgp30_sensor.c: 51:         uint8_t msb = raw[idx];
	movf	(sgp30_read_words@idx),w
	addlw	low(sgp30_read_words@raw|((0x0)<<8))&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	movwf	(sgp30_read_words@msb)
	line	52
	
l4297:	
;sgp30_sensor.c: 52:         uint8_t lsb = raw[idx + 1u];
	movf	(sgp30_read_words@idx),w
	addlw	01h
	addlw	low(sgp30_read_words@raw|((0x0)<<8))&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	movwf	(sgp30_read_words@lsb)
	line	53
	
l4299:	
;sgp30_sensor.c: 53:         uint8_t crc = raw[idx + 2u];
	movf	(sgp30_read_words@idx),w
	addlw	02h
	addlw	low(sgp30_read_words@raw|((0x0)<<8))&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	movwf	(sgp30_read_words@crc)
	line	55
	
l4301:	
;sgp30_sensor.c: 55:         if (crc != sgp30_crc(msb, lsb))
	movf	(sgp30_read_words@lsb),w
	movwf	(sgp30_crc@byte2)
	movf	(sgp30_read_words@msb),w
	fcall	_sgp30_crc
	movlb 0	; select bank0
	xorwf	(sgp30_read_words@crc),w
	skipnz
	goto	u3301
	goto	u3300
u3301:
	goto	l4307
u3300:
	goto	l4287
	line	58
	
l4307:	
;sgp30_sensor.c: 58:         result_buf[w] = ((uint16_t)msb << 8u) | (uint16_t)lsb;
	movf	(sgp30_read_words@w),w
	movwf	(??_sgp30_read_words)
	movlw	01h
u3315:
	lslf	(??_sgp30_read_words),f
	decfsz	wreg,f
	goto	u3315
	movf	(sgp30_read_words@result_buf),w
	addwf	(0+(??_sgp30_read_words)),w
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(sgp30_read_words@lsb),w
	movwi	[0]fsr1
	movf	(sgp30_read_words@msb),w
	movwi	[1]fsr1
	line	59
	
l4309:	
;sgp30_sensor.c: 59:     }
	movlw	low(01h)
	addwf	(sgp30_read_words@w),f
	
l4311:	
	movf	(sgp30_read_words@n_words),w
	subwf	(sgp30_read_words@w),w
	skipc
	goto	u3321
	goto	u3320
u3321:
	goto	l4293
u3320:
	line	60
	
l4313:	
;sgp30_sensor.c: 60:     return 1;
	movlw	low(01h)
	line	61
	
l492:	
	return
	callstack 0
GLOBAL	__end_of_sgp30_read_words
	__end_of_sgp30_read_words:
	signat	_sgp30_read_words,8313
	global	_sgp30_crc

;; *************** function _sgp30_crc *****************
;; Defined at:
;;		line 8 in file "sgp30_sensor.c"
;; Parameters:    Size  Location     Type
;;  byte1           1    wreg     unsigned char 
;;  byte2           1    3[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  byte1           1    0[BANK0 ] unsigned char 
;;  bit             1    3[BANK0 ] unsigned char 
;;  i               1    4[BANK0 ] unsigned char 
;;  data            2    1[BANK0 ] unsigned char [2]
;;  crc             1    5[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       6       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         1       6       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 6
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sgp30_read_words
;;		_sgp30_send_cmd_with_data
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1,group=0
	line	8
global __ptext12
__ptext12:	;psect for function _sgp30_crc
psect	text12
	file	"sgp30_sensor.c"
	line	8
	
_sgp30_crc:	
;incstack = 0
	callstack 7
; Regs used in _sgp30_crc: [wreg+fsr1l+fsr1h+status,2+status,0]
;sgp30_crc@byte1 stored from wreg
	movlb 0	; select bank0
	movwf	(sgp30_crc@byte1)
	line	10
	
l4097:	
;sgp30_sensor.c: 8: static uint8_t sgp30_crc(uint8_t byte1, uint8_t byte2);sgp30_sensor.c: 9: {;sgp30_sensor.c: 10:     uint8_t crc = 0xFFu;
	movlw	0FFh
	movwf	(sgp30_crc@crc)
	line	11
	
l4099:	
;sgp30_sensor.c: 11:     uint8_t data[2] = { byte1, byte2 };
	clrf	(sgp30_crc@data)
	clrf	(sgp30_crc@data+1)
	
l4101:	
	movf	(sgp30_crc@byte1),w
	movwf	(sgp30_crc@data)
	
l4103:	
	movf	(sgp30_crc@byte2),w
	movwf	0+(sgp30_crc@data)+01h
	line	13
;sgp30_sensor.c: 13:     for (uint8_t i = 0u; i < 2u; i++) {
	clrf	(sgp30_crc@i)
	line	14
	
l4109:	
;sgp30_sensor.c: 14:         crc ^= data[i];
	movf	(sgp30_crc@i),w
	addlw	low(sgp30_crc@data|((0x0)<<8))&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	xorwf	(sgp30_crc@crc),f
	line	15
	
l4111:	
;sgp30_sensor.c: 15:         for (uint8_t bit = 0u; bit < 8u; bit++) {
	clrf	(sgp30_crc@bit)
	
l481:	
	line	16
;sgp30_sensor.c: 16:             if (crc & 0x80u)
	btfss	(sgp30_crc@crc),(7)&7
	goto	u3071
	goto	u3070
u3071:
	goto	l4119
u3070:
	line	17
	
l4117:	
;sgp30_sensor.c: 17:                 crc = (uint8_t)(((uint8_t)(crc << 1u)) ^ 0x31u);
	lslf	(sgp30_crc@crc),w
	xorlw	031h
	movwf	(sgp30_crc@crc)
	goto	l484
	line	19
	
l4119:	
;sgp30_sensor.c: 19:                 crc = (uint8_t)(crc << 1u);
	lslf	(sgp30_crc@crc),w
	movwf	(sgp30_crc@crc)
	
l484:	
	line	20
;sgp30_sensor.c: 20:         }
	movlw	low(01h)
	addwf	(sgp30_crc@bit),f
	
l4121:	
	movlw	low(08h)
	subwf	(sgp30_crc@bit),w
	skipc
	goto	u3081
	goto	u3080
u3081:
	goto	l481
u3080:
	line	21
	
l4123:	
;sgp30_sensor.c: 21:     }
	movlw	low(01h)
	addwf	(sgp30_crc@i),f
	
l4125:	
	movlw	low(02h)
	subwf	(sgp30_crc@i),w
	skipc
	goto	u3091
	goto	u3090
u3091:
	goto	l4109
u3090:
	line	22
	
l4127:	
;sgp30_sensor.c: 22:     return crc;
	movf	(sgp30_crc@crc),w
	line	23
	
l485:	
	return
	callstack 0
GLOBAL	__end_of_sgp30_crc
	__end_of_sgp30_crc:
	signat	_sgp30_crc,8313
	global	___bmul

;; *************** function ___bmul *****************
;; Defined at:
;;		line 4 in file "E:\MPXLab\XC8 Compiler\pic\sources\c99\common\Umul8.c"
;; Parameters:    Size  Location     Type
;;  multiplier      1    wreg     unsigned char 
;;  multiplicand    1    3[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  multiplier      1    5[COMMON] unsigned char 
;;  product         1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 6
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sgp30_read_words
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1,group=2
	file	"E:\MPXLab\XC8 Compiler\pic\sources\c99\common\Umul8.c"
	line	4
global __ptext13
__ptext13:	;psect for function ___bmul
psect	text13
	file	"E:\MPXLab\XC8 Compiler\pic\sources\c99\common\Umul8.c"
	line	4
	
___bmul:	
;incstack = 0
	callstack 7
; Regs used in ___bmul: [wreg+status,2+status,0]
;___bmul@multiplier stored from wreg
	movwf	(___bmul@multiplier)
	line	6
	
l3033:	
	clrf	(___bmul@product)
	line	43
	
l3035:	
	btfss	(___bmul@multiplier),(0)&7
	goto	u1991
	goto	u1990
u1991:
	goto	l3039
u1990:
	line	44
	
l3037:	
	movf	(___bmul@multiplicand),w
	addwf	(___bmul@product),f
	line	45
	
l3039:	
	clrc
	rlf	(___bmul@multiplicand),f

	line	46
	
l3041:	
	clrc
	rrf	(___bmul@multiplier),f

	line	47
	movf	((___bmul@multiplier)),w
	btfss	status,2
	goto	u2001
	goto	u2000
u2001:
	goto	l3035
u2000:
	line	50
	
l3043:	
	movf	(___bmul@product),w
	line	51
	
l709:	
	return
	callstack 0
GLOBAL	__end_of___bmul
	__end_of___bmul:
	signat	___bmul,8313
	global	_I2C_HW_Read

;; *************** function _I2C_HW_Read *****************
;; Defined at:
;;		line 240 in file "I2C.c"
;; Parameters:    Size  Location     Type
;;  addr            1    wreg     unsigned char 
;;  buf             1    2[BANK0 ] PTR unsigned char 
;;		 -> sgp30_read_words@raw(9), 
;;  len             1    3[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  addr            1    4[BANK0 ] unsigned char 
;;  ack             1    5[BANK0 ] _Bool 
;;  i               1    6[BANK0 ] unsigned char 
;;  s               1    7[BANK0 ] enum E7732
;; Return value:  Size  Location     Type
;;                  1    wreg      enum E7770
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       6       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 8
;; This function calls:
;;		_I2C_HW_ReadByte
;;		_I2C_HW_SendByte
;;		_I2C_HW_Start
;;		_I2C_HW_Stop
;; This function is called by:
;;		_sgp30_read_words
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1,group=0
	file	"I2C.c"
	line	240
global __ptext14
__ptext14:	;psect for function _I2C_HW_Read
psect	text14
	file	"I2C.c"
	line	240
	
_I2C_HW_Read:	
;incstack = 0
	callstack 5
; Regs used in _I2C_HW_Read: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;I2C_HW_Read@addr stored from wreg
	movlb 0	; select bank0
	movwf	(I2C_HW_Read@addr)
	line	244
	
l4169:	
;I2C.c: 240: I2C_Status I2C_HW_Read(uint8_t addr, uint8_t *buf, uint8_t len);I2C.c: 241: {;I2C.c: 242:     I2C_Status s;;I2C.c: 244:     if (len == 0u) return I2C_OK;
	movf	((I2C_HW_Read@len)),w
	btfss	status,2
	goto	u3141
	goto	u3140
u3141:
	goto	l4175
u3140:
	
l4171:	
	movlw	low(0)
	goto	l646
	line	246
	
l4175:	
;I2C.c: 246:     s = I2C_HW_Start();
	fcall	_I2C_HW_Start
	movlb 0	; select bank0
	movwf	(I2C_HW_Read@s)
	line	247
	
l4177:	
;I2C.c: 247:     if (s != I2C_OK) return s;
	movf	((I2C_HW_Read@s)),w
	btfsc	status,2
	goto	u3151
	goto	u3150
u3151:
	goto	l4183
u3150:
	
l4179:	
	movlb 0	; select bank0
	movf	(I2C_HW_Read@s),w
	goto	l646
	line	249
	
l4183:	
;I2C.c: 249:     s = I2C_HW_SendByte((uint8_t)(((unsigned)addr << 1u) | 0x01u));
	setc
	rlf	(I2C_HW_Read@addr),w
	fcall	_I2C_HW_SendByte
	movlb 0	; select bank0
	movwf	(I2C_HW_Read@s)
	line	250
	
l4185:	
;I2C.c: 250:     if (s != I2C_OK) { I2C_HW_Stop(); return s; }
	movf	((I2C_HW_Read@s)),w
	btfsc	status,2
	goto	u3161
	goto	u3160
u3161:
	goto	l4193
u3160:
	
l4187:	
	fcall	_I2C_HW_Stop
	goto	l4179
	line	252
	
l4193:	
;I2C.c: 252:     for (uint8_t i = 0u; i < len; i++) {
	clrf	(I2C_HW_Read@i)
	goto	l4209
	line	253
	
l4195:	
;I2C.c: 253:         _Bool ack = (i < (uint8_t)(len - 1u));
	movf	(I2C_HW_Read@len),w
	addlw	0FFh
	subwf	(I2C_HW_Read@i),w
	skipc
	goto	u3171
	goto	u3170
u3171:
	movlw	1
	goto	u3180
u3170:
	movlw	0
u3180:
	movwf	(I2C_HW_Read@ack)
	line	254
	
l4197:	
;I2C.c: 254:         s = I2C_HW_ReadByte(&buf[i], ack);
	movf	(I2C_HW_Read@buf),w
	addwf	(I2C_HW_Read@i),w
	movwf	(I2C_HW_ReadByte@byte)
	movf	(I2C_HW_Read@ack),w
	movwf	(I2C_HW_ReadByte@send_ack)
	fcall	_I2C_HW_ReadByte
	movlb 0	; select bank0
	movwf	(I2C_HW_Read@s)
	line	255
	
l4199:	
;I2C.c: 255:         if (s != I2C_OK) { I2C_HW_Stop(); return s; }
	movf	((I2C_HW_Read@s)),w
	btfsc	status,2
	goto	u3191
	goto	u3190
u3191:
	goto	l4207
u3190:
	goto	l4187
	line	256
	
l4207:	
;I2C.c: 256:     }
	movlw	low(01h)
	addwf	(I2C_HW_Read@i),f
	
l4209:	
	movf	(I2C_HW_Read@len),w
	subwf	(I2C_HW_Read@i),w
	skipc
	goto	u3201
	goto	u3200
u3201:
	goto	l4195
u3200:
	line	258
	
l4211:	
;I2C.c: 258:     return I2C_HW_Stop();
	fcall	_I2C_HW_Stop
	line	259
	
l646:	
	return
	callstack 0
GLOBAL	__end_of_I2C_HW_Read
	__end_of_I2C_HW_Read:
	signat	_I2C_HW_Read,12409
	global	_I2C_HW_ReadByte

;; *************** function _I2C_HW_ReadByte *****************
;; Defined at:
;;		line 190 in file "I2C.c"
;; Parameters:    Size  Location     Type
;;  byte            1    0[BANK0 ] PTR unsigned char 
;;		 -> sgp30_read_words@raw(9), 
;;  send_ack        1    1[BANK0 ] _Bool 
;; Auto vars:     Size  Location     Type
;;  s               1    7[COMMON] enum E7732
;; Return value:  Size  Location     Type
;;                  1    wreg      enum E7732
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         1       2       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 7
;; This function calls:
;;		_wait_bus_idle
;;		_wait_for_idle
;;		_wait_for_if
;; This function is called by:
;;		_I2C_HW_Read
;;		_I2C_HW_WriteRead
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1,group=0
	line	190
global __ptext15
__ptext15:	;psect for function _I2C_HW_ReadByte
psect	text15
	file	"I2C.c"
	line	190
	
_I2C_HW_ReadByte:	
;incstack = 0
	callstack 5
; Regs used in _I2C_HW_ReadByte: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	194
	
l4019:	
;I2C.c: 190: I2C_Status I2C_HW_ReadByte(uint8_t *byte, _Bool send_ack);I2C.c: 191: {;I2C.c: 192:     I2C_Status s;;I2C.c: 194:     s = wait_bus_idle();
	fcall	_wait_bus_idle
	movwf	(I2C_HW_ReadByte@s)
	line	195
	
l4021:	
;I2C.c: 195:     if (s != I2C_OK) return s;
	movf	((I2C_HW_ReadByte@s)),w
	btfsc	status,2
	goto	u2931
	goto	u2930
u2931:
	goto	l630
u2930:
	
l4023:	
	movf	(I2C_HW_ReadByte@s),w
	goto	l631
	
l630:	
	line	199
;I2C.c: 199:     SSP1CON1bits.SSPOV = 0;
	movlb 3	; select bank3
	bcf	(400)^0180h,6	;volatile
	line	201
;I2C.c: 201:     SSP1CON2bits.RCEN = 1;
	bsf	(401)^0180h,3	;volatile
	line	203
	
l4027:	
;I2C.c: 203:     s = wait_for_if();
	fcall	_wait_for_if
	movwf	(I2C_HW_ReadByte@s)
	line	204
	
l4029:	
;I2C.c: 204:     if (s != I2C_OK) return s;
	movf	((I2C_HW_ReadByte@s)),w
	btfsc	status,2
	goto	u2941
	goto	u2940
u2941:
	goto	l4035
u2940:
	goto	l4023
	line	206
	
l4035:	
;I2C.c: 206:     *byte = SSP1BUF;
	movlb 0	; select bank0
	movf	(I2C_HW_ReadByte@byte),w
	movwf	fsr1l
	clrf fsr1h	
	
	movlb 3	; select bank3
	movf	(396)^0180h,w	;volatile
	movwf	indf1
	line	209
	
l4037:	
;I2C.c: 209:     SSP1CON2bits.ACKDT = send_ack ? 0 : 1;
	movlb 0	; select bank0
	movf	((I2C_HW_ReadByte@send_ack)),w
	btfsc	status,2
	goto	u2951
	goto	u2950
	
u2951:
	movlb 3	; select bank3
	bsf	(401)^0180h,5	;volatile
	goto	u2964
u2950:
	movlb 3	; select bank3
	bcf	(401)^0180h,5	;volatile
u2964:
	line	210
	
l4039:	
;I2C.c: 210:     SSP1CON2bits.ACKEN = 1;
	bsf	(401)^0180h,4	;volatile
	line	212
	
l4041:	
;I2C.c: 212:     s = wait_for_idle((volatile uint8_t *)&SSP1CON2, 0x10u);
	movlw	(low(401|((0x1)<<8)))&0ffh
	movwf	(wait_for_idle@reg)
	movlw	low(010h)
	movwf	(wait_for_idle@mask)
	fcall	_wait_for_idle
	movwf	(I2C_HW_ReadByte@s)
	line	213
	
l4043:	
;I2C.c: 213:     if (s != I2C_OK) return s;
	movf	((I2C_HW_ReadByte@s)),w
	btfsc	status,2
	goto	u2971
	goto	u2970
u2971:
	goto	l4049
u2970:
	goto	l4023
	line	215
	
l4049:	
;I2C.c: 215:     return I2C_OK;
	movlw	low(0)
	line	216
	
l631:	
	return
	callstack 0
GLOBAL	__end_of_I2C_HW_ReadByte
	__end_of_I2C_HW_ReadByte:
	signat	_I2C_HW_ReadByte,8313
	global	_sgp30_init

;; *************** function _sgp30_init *****************
;; Defined at:
;;		line 89 in file "sgp30_sensor.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 10
;; This function calls:
;;		_sgp30_send_cmd
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text16,local,class=CODE,delta=2,merge=1,group=0
	file	"sgp30_sensor.c"
	line	89
global __ptext16
__ptext16:	;psect for function _sgp30_init
psect	text16
	file	"sgp30_sensor.c"
	line	89
	
_sgp30_init:	
;incstack = 0
	callstack 5
; Regs used in _sgp30_init: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	91
	
l4443:	
;sgp30_sensor.c: 91:     _delay((unsigned long)((10u)*(32000000U/4000.0)));
	asmopt push
asmopt off
movlw	104
	movlb 0	; select bank0
movwf	((??_sgp30_init))
	movlw	228
u3877:
decfsz	wreg
	goto	u3877
	decfsz	((??_sgp30_init)),f
	goto	u3877
	nop
asmopt pop

	line	92
	
l4445:	
;sgp30_sensor.c: 92:     sgp30_send_cmd(0x2003u);
	movlw	03h
	movlb 0	; select bank0
	movwf	(sgp30_send_cmd@cmd)
	movlw	020h
	movwf	((sgp30_send_cmd@cmd))+1
	fcall	_sgp30_send_cmd
	line	93
	
l4447:	
;sgp30_sensor.c: 93:     _delay((unsigned long)((10u)*(32000000U/4000.0)));
	asmopt push
asmopt off
movlw	104
	movlb 0	; select bank0
movwf	((??_sgp30_init))
	movlw	228
u3887:
decfsz	wreg
	goto	u3887
	decfsz	((??_sgp30_init)),f
	goto	u3887
	nop
asmopt pop

	line	94
	
l505:	
	return
	callstack 0
GLOBAL	__end_of_sgp30_init
	__end_of_sgp30_init:
	signat	_sgp30_init,89
	global	_sgp30_send_cmd

;; *************** function _sgp30_send_cmd *****************
;; Defined at:
;;		line 29 in file "sgp30_sensor.c"
;; Parameters:    Size  Location     Type
;;  cmd             2    5[BANK0 ] unsigned short 
;; Auto vars:     Size  Location     Type
;;  buf             2    8[BANK0 ] unsigned char [2]
;;  s               1    7[BANK0 ] enum E7770
;; Return value:  Size  Location     Type
;;                  1    wreg      _Bool 
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       5       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 6
;; This function calls:
;;		_I2C_HW_Write
;; This function is called by:
;;		_sgp30_init
;;		_sgp30_measure
;;		_sgp30_self_test
;;		_sgp30_measure_raw
;;		_sgp30_get_baseline
;;		_sgp30_get_serial_id
;;		_sgp30_get_feature_set
;; This function uses a non-reentrant model
;;
psect	text17,local,class=CODE,delta=2,merge=1,group=0
	line	29
global __ptext17
__ptext17:	;psect for function _sgp30_send_cmd
psect	text17
	file	"sgp30_sensor.c"
	line	29
	
_sgp30_send_cmd:	
;incstack = 0
	callstack 8
; Regs used in _sgp30_send_cmd: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	32
	
l4271:	
;sgp30_sensor.c: 29: static _Bool sgp30_send_cmd(uint16_t cmd);sgp30_sensor.c: 30: {;sgp30_sensor.c: 31:     uint8_t buf[2];;sgp30_sensor.c: 32:     buf[0] = (uint8_t)(cmd >> 8u);
	movlb 0	; select bank0
	movf	(sgp30_send_cmd@cmd+1),w
	movwf	(sgp30_send_cmd@buf)
	line	33
	
l4273:	
;sgp30_sensor.c: 33:     buf[1] = (uint8_t)(cmd & 0xFFu);
	movf	(sgp30_send_cmd@cmd),w
	movwf	0+(sgp30_send_cmd@buf)+01h
	line	35
	
l4275:	
;sgp30_sensor.c: 35:     I2C_Status s = I2C_HW_Write(0x58u, buf, 2u);
	movlw	(low(sgp30_send_cmd@buf|((0x0)<<8)))&0ffh
	movwf	(I2C_HW_Write@data)
	movlw	low(02h)
	movwf	(I2C_HW_Write@len)
	movlw	low(058h)
	fcall	_I2C_HW_Write
	movlb 0	; select bank0
	movwf	(sgp30_send_cmd@s)
	line	36
	
l4277:	
;sgp30_sensor.c: 36:     return (s == I2C_OK);
	movf	((sgp30_send_cmd@s)),w
	btfsc	status,2
	goto	u3271
	goto	u3270
u3271:
	movlw	1
	goto	u3280
u3270:
	movlw	0
u3280:
	line	37
	
l488:	
	return
	callstack 0
GLOBAL	__end_of_sgp30_send_cmd
	__end_of_sgp30_send_cmd:
	signat	_sgp30_send_cmd,4217
	global	_I2C_HW_Write

;; *************** function _I2C_HW_Write *****************
;; Defined at:
;;		line 222 in file "I2C.c"
;; Parameters:    Size  Location     Type
;;  addr            1    wreg     unsigned char 
;;  data            1    0[BANK0 ] PTR const unsigned char 
;;		 -> sgp30_soft_reset@reset_byte(1), sgp30_send_cmd_with_data@buf(8), sgp30_send_cmd@buf(2), 
;;  len             1    1[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  addr            1    2[BANK0 ] unsigned char 
;;  i               1    3[BANK0 ] unsigned char 
;;  s               1    4[BANK0 ] enum E7732
;; Return value:  Size  Location     Type
;;                  1    wreg      enum E7770
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       5       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 8
;; This function calls:
;;		_I2C_HW_SendByte
;;		_I2C_HW_Start
;;		_I2C_HW_Stop
;; This function is called by:
;;		_sgp30_send_cmd
;;		_sgp30_send_cmd_with_data
;;		_sgp30_soft_reset
;; This function uses a non-reentrant model
;;
psect	text18,local,class=CODE,delta=2,merge=1,group=0
	file	"I2C.c"
	line	222
global __ptext18
__ptext18:	;psect for function _I2C_HW_Write
psect	text18
	file	"I2C.c"
	line	222
	
_I2C_HW_Write:	
;incstack = 0
	callstack 5
; Regs used in _I2C_HW_Write: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;I2C_HW_Write@addr stored from wreg
	movlb 0	; select bank0
	movwf	(I2C_HW_Write@addr)
	line	226
	
l4131:	
;I2C.c: 222: I2C_Status I2C_HW_Write(uint8_t addr, const uint8_t *data, uint8_t len);I2C.c: 223: {;I2C.c: 224:     I2C_Status s;;I2C.c: 226:     s = I2C_HW_Start();
	fcall	_I2C_HW_Start
	movlb 0	; select bank0
	movwf	(I2C_HW_Write@s)
	line	227
	
l4133:	
;I2C.c: 227:     if (s != I2C_OK) return s;
	movf	((I2C_HW_Write@s)),w
	btfsc	status,2
	goto	u3101
	goto	u3100
u3101:
	goto	l4139
u3100:
	
l4135:	
	movlb 0	; select bank0
	movf	(I2C_HW_Write@s),w
	goto	l637
	line	229
	
l4139:	
;I2C.c: 229:     s = I2C_HW_SendByte((uint8_t)(((unsigned)addr << 1u) & 0xFEu));
	lslf	(I2C_HW_Write@addr),w
	andlw	0FEh
	fcall	_I2C_HW_SendByte
	movlb 0	; select bank0
	movwf	(I2C_HW_Write@s)
	line	230
	
l4141:	
;I2C.c: 230:     if (s != I2C_OK) { I2C_HW_Stop(); return s; }
	movf	((I2C_HW_Write@s)),w
	btfsc	status,2
	goto	u3111
	goto	u3110
u3111:
	goto	l4149
u3110:
	
l4143:	
	fcall	_I2C_HW_Stop
	goto	l4135
	line	232
	
l4149:	
;I2C.c: 232:     for (uint8_t i = 0u; i < len; i++) {
	clrf	(I2C_HW_Write@i)
	goto	l4163
	line	233
	
l4151:	
;I2C.c: 233:         s = I2C_HW_SendByte(data[i]);
	movf	(I2C_HW_Write@data),w
	addwf	(I2C_HW_Write@i),w
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	fcall	_I2C_HW_SendByte
	movlb 0	; select bank0
	movwf	(I2C_HW_Write@s)
	line	234
	
l4153:	
;I2C.c: 234:         if (s != I2C_OK) { I2C_HW_Stop(); return s; }
	movf	((I2C_HW_Write@s)),w
	btfsc	status,2
	goto	u3121
	goto	u3120
u3121:
	goto	l4161
u3120:
	goto	l4143
	line	235
	
l4161:	
;I2C.c: 235:     }
	movlw	low(01h)
	addwf	(I2C_HW_Write@i),f
	
l4163:	
	movf	(I2C_HW_Write@len),w
	subwf	(I2C_HW_Write@i),w
	skipc
	goto	u3131
	goto	u3130
u3131:
	goto	l4151
u3130:
	line	237
	
l4165:	
;I2C.c: 237:     return I2C_HW_Stop();
	fcall	_I2C_HW_Stop
	line	238
	
l637:	
	return
	callstack 0
GLOBAL	__end_of_I2C_HW_Write
	__end_of_I2C_HW_Write:
	signat	_I2C_HW_Write,12409
	global	_I2C_HW_Stop

;; *************** function _I2C_HW_Stop *****************
;; Defined at:
;;		line 159 in file "I2C.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  s               1    7[COMMON] enum E7732
;; Return value:  Size  Location     Type
;;                  1    wreg      enum E8057
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 6
;; This function calls:
;;		_check_bus_collision
;;		_wait_bus_idle
;;		_wait_for_idle
;; This function is called by:
;;		_sgp30_probe
;;		_I2C_HW_Write
;;		_I2C_HW_Read
;;		_I2C_HW_WriteRead
;; This function uses a non-reentrant model
;;
psect	text19,local,class=CODE,delta=2,merge=1,group=0
	line	159
global __ptext19
__ptext19:	;psect for function _I2C_HW_Stop
psect	text19
	file	"I2C.c"
	line	159
	
_I2C_HW_Stop:	
;incstack = 0
	callstack 6
; Regs used in _I2C_HW_Stop: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	162
	
l3961:	
;I2C.c: 160:     I2C_Status s;;I2C.c: 162:     s = wait_bus_idle();
	fcall	_wait_bus_idle
	movwf	(I2C_HW_Stop@s)
	line	163
	
l3963:	
;I2C.c: 163:     if (s != I2C_OK) return s;
	movf	((I2C_HW_Stop@s)),w
	btfsc	status,2
	goto	u2861
	goto	u2860
u2861:
	goto	l618
u2860:
	
l3965:	
	movf	(I2C_HW_Stop@s),w
	goto	l619
	
l618:	
	line	165
;I2C.c: 165:     SSP1CON2bits.PEN = 1;
	movlb 3	; select bank3
	bsf	(401)^0180h,2	;volatile
	line	166
	
l3969:	
;I2C.c: 166:     s = wait_for_idle((volatile uint8_t *)&SSP1CON2, 0x04u);
	movlw	(low(401|((0x1)<<8)))&0ffh
	movwf	(wait_for_idle@reg)
	movlw	low(04h)
	movwf	(wait_for_idle@mask)
	fcall	_wait_for_idle
	movwf	(I2C_HW_Stop@s)
	line	167
	
l3971:	
;I2C.c: 167:     if (s != I2C_OK) return s;
	movf	((I2C_HW_Stop@s)),w
	btfsc	status,2
	goto	u2871
	goto	u2870
u2871:
	goto	l3977
u2870:
	goto	l3965
	line	168
	
l3977:	
;I2C.c: 168:     return check_bus_collision();
	fcall	_check_bus_collision
	line	169
	
l619:	
	return
	callstack 0
GLOBAL	__end_of_I2C_HW_Stop
	__end_of_I2C_HW_Stop:
	signat	_I2C_HW_Stop,89
	global	_I2C_HW_Start

;; *************** function _I2C_HW_Start *****************
;; Defined at:
;;		line 135 in file "I2C.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  s               1    7[COMMON] enum E7732
;; Return value:  Size  Location     Type
;;                  1    wreg      enum E8057
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 6
;; This function calls:
;;		_check_bus_collision
;;		_wait_bus_idle
;;		_wait_for_idle
;; This function is called by:
;;		_sgp30_probe
;;		_I2C_HW_Write
;;		_I2C_HW_Read
;;		_I2C_HW_WriteRead
;; This function uses a non-reentrant model
;;
psect	text20,local,class=CODE,delta=2,merge=1,group=0
	line	135
global __ptext20
__ptext20:	;psect for function _I2C_HW_Start
psect	text20
	file	"I2C.c"
	line	135
	
_I2C_HW_Start:	
;incstack = 0
	callstack 6
; Regs used in _I2C_HW_Start: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	138
	
l3941:	
;I2C.c: 136:     I2C_Status s;;I2C.c: 138:     s = wait_bus_idle();
	fcall	_wait_bus_idle
	movwf	(I2C_HW_Start@s)
	line	139
	
l3943:	
;I2C.c: 139:     if (s != I2C_OK) return s;
	movf	((I2C_HW_Start@s)),w
	btfsc	status,2
	goto	u2841
	goto	u2840
u2841:
	goto	l608
u2840:
	
l3945:	
	movf	(I2C_HW_Start@s),w
	goto	l609
	
l608:	
	line	141
;I2C.c: 141:     SSP1CON2bits.SEN = 1;
	movlb 3	; select bank3
	bsf	(401)^0180h,0	;volatile
	line	142
	
l3949:	
;I2C.c: 142:     s = wait_for_idle((volatile uint8_t *)&SSP1CON2, 0x01u);
	movlw	(low(401|((0x1)<<8)))&0ffh
	movwf	(wait_for_idle@reg)
	clrf	(wait_for_idle@mask)
	incf	(wait_for_idle@mask),f
	fcall	_wait_for_idle
	movwf	(I2C_HW_Start@s)
	line	143
	
l3951:	
;I2C.c: 143:     if (s != I2C_OK) return s;
	movf	((I2C_HW_Start@s)),w
	btfsc	status,2
	goto	u2851
	goto	u2850
u2851:
	goto	l3957
u2850:
	goto	l3945
	line	144
	
l3957:	
;I2C.c: 144:     return check_bus_collision();
	fcall	_check_bus_collision
	line	145
	
l609:	
	return
	callstack 0
GLOBAL	__end_of_I2C_HW_Start
	__end_of_I2C_HW_Start:
	signat	_I2C_HW_Start,89
	global	_wait_for_idle

;; *************** function _wait_for_idle *****************
;; Defined at:
;;		line 34 in file "I2C.c"
;; Parameters:    Size  Location     Type
;;  reg             1    3[COMMON] PTR volatile unsigned ch
;;		 -> SSP1CON2(1), 
;;  mask            1    4[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  cnt             2    5[COMMON] unsigned short 
;; Return value:  Size  Location     Type
;;                  1    wreg      enum E7732
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 6
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_I2C_HW_Start
;;		_I2C_HW_Stop
;;		_I2C_HW_ReadByte
;;		_I2C_HW_RepeatedStart
;; This function uses a non-reentrant model
;;
psect	text21,local,class=CODE,delta=2,merge=1,group=0
	line	34
global __ptext21
__ptext21:	;psect for function _wait_for_idle
psect	text21
	file	"I2C.c"
	line	34
	
_wait_for_idle:	
;incstack = 0
	callstack 5
; Regs used in _wait_for_idle: [wreg+fsr1l+fsr1h+status,2+status,0]
	line	35
	
l3899:	
;I2C.c: 35:     uint16_t cnt = 10000u;
	movlw	010h
	movwf	(wait_for_idle@cnt)
	movlw	027h
	movwf	((wait_for_idle@cnt))+1
	line	36
;I2C.c: 36:     while (*reg & mask) {
	goto	l3907
	line	37
	
l3901:	
;I2C.c: 37:         if (--cnt == 0u) return I2C_TIMEOUT;
	movlw	01h
	subwf	(wait_for_idle@cnt),f
	movlw	0
	subwfb	(wait_for_idle@cnt+1),f
	movf	(((wait_for_idle@cnt))),w
iorwf	(((wait_for_idle@cnt+1))),w
	btfss	status,2
	goto	u2781
	goto	u2780
u2781:
	goto	l3907
u2780:
	
l3903:	
	movlw	low(03h)
	goto	l584
	line	36
	
l3907:	
;I2C.c: 36:     while (*reg & mask) {
	movf	(wait_for_idle@reg),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	andwf	(wait_for_idle@mask),w
	btfss	status,2
	goto	u2791
	goto	u2790
u2791:
	goto	l3901
u2790:
	
l585:	
	line	39
;I2C.c: 39:     PIR3bits.SSP1IF = 0;
	movlb 14	; select bank14
	bcf	(1807)^0700h,0	;volatile
	line	40
	
l3909:	
;I2C.c: 40:     return I2C_OK;
	movlw	low(0)
	line	41
	
l584:	
	return
	callstack 0
GLOBAL	__end_of_wait_for_idle
	__end_of_wait_for_idle:
	signat	_wait_for_idle,8313
	global	_I2C_HW_SendByte

;; *************** function _I2C_HW_SendByte *****************
;; Defined at:
;;		line 171 in file "I2C.c"
;; Parameters:    Size  Location     Type
;;  byte            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  byte            1    5[COMMON] unsigned char 
;;  s               1    6[COMMON] enum E7732
;; Return value:  Size  Location     Type
;;                  1    wreg      enum E8057
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 6
;; This function calls:
;;		_check_bus_collision
;;		_wait_bus_idle
;;		_wait_for_if
;; This function is called by:
;;		_sgp30_probe
;;		_I2C_HW_Write
;;		_I2C_HW_Read
;;		_I2C_HW_WriteRead
;; This function uses a non-reentrant model
;;
psect	text22,local,class=CODE,delta=2,merge=1,group=0
	line	171
global __ptext22
__ptext22:	;psect for function _I2C_HW_SendByte
psect	text22
	file	"I2C.c"
	line	171
	
_I2C_HW_SendByte:	
;incstack = 0
	callstack 6
; Regs used in _I2C_HW_SendByte: [wreg+status,2+status,0+pclath+cstack]
;I2C_HW_SendByte@byte stored from wreg
	movwf	(I2C_HW_SendByte@byte)
	line	175
	
l3981:	
;I2C.c: 171: I2C_Status I2C_HW_SendByte(uint8_t byte);I2C.c: 172: {;I2C.c: 173:     I2C_Status s;;I2C.c: 175:     s = wait_bus_idle();
	fcall	_wait_bus_idle
	movwf	(I2C_HW_SendByte@s)
	line	176
	
l3983:	
;I2C.c: 176:     if (s != I2C_OK) return s;
	movf	((I2C_HW_SendByte@s)),w
	btfsc	status,2
	goto	u2881
	goto	u2880
u2881:
	goto	l3989
u2880:
	
l3985:	
	movf	(I2C_HW_SendByte@s),w
	goto	l624
	line	178
	
l3989:	
;I2C.c: 178:     SSP1BUF = byte;
	movf	(I2C_HW_SendByte@byte),w
	movlb 3	; select bank3
	movwf	(396)^0180h	;volatile
	line	180
	
l3991:	
;I2C.c: 180:     s = wait_for_if();
	fcall	_wait_for_if
	movwf	(I2C_HW_SendByte@s)
	line	181
	
l3993:	
;I2C.c: 181:     if (s != I2C_OK) return s;
	movf	((I2C_HW_SendByte@s)),w
	btfsc	status,2
	goto	u2891
	goto	u2890
u2891:
	goto	l3999
u2890:
	goto	l3985
	line	183
	
l3999:	
;I2C.c: 183:     s = check_bus_collision();
	fcall	_check_bus_collision
	movwf	(I2C_HW_SendByte@s)
	line	184
	
l4001:	
;I2C.c: 184:     if (s != I2C_OK) return s;
	movf	((I2C_HW_SendByte@s)),w
	btfsc	status,2
	goto	u2901
	goto	u2900
u2901:
	goto	l626
u2900:
	goto	l3985
	
l626:	
	line	186
;I2C.c: 186:     if (SSP1CON2bits.ACKSTAT) return I2C_NACK;
	movlb 3	; select bank3
	btfss	(401)^0180h,6	;volatile
	goto	u2911
	goto	u2910
u2911:
	goto	l4011
u2910:
	
l4007:	
	movlw	low(01h)
	goto	l624
	line	187
	
l4011:	
;I2C.c: 187:     return I2C_OK;
	movlw	low(0)
	line	188
	
l624:	
	return
	callstack 0
GLOBAL	__end_of_I2C_HW_SendByte
	__end_of_I2C_HW_SendByte:
	signat	_I2C_HW_SendByte,4217
	global	_wait_for_if

;; *************** function _wait_for_if *****************
;; Defined at:
;;		line 25 in file "I2C.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  cnt             2    3[COMMON] unsigned short 
;; Return value:  Size  Location     Type
;;                  1    wreg      enum E7732
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 6
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_I2C_HW_SendByte
;;		_I2C_HW_ReadByte
;; This function uses a non-reentrant model
;;
psect	text23,local,class=CODE,delta=2,merge=1,group=0
	line	25
global __ptext23
__ptext23:	;psect for function _wait_for_if
psect	text23
	file	"I2C.c"
	line	25
	
_wait_for_if:	
;incstack = 0
	callstack 5
; Regs used in _wait_for_if: [wreg+status,2+status,0]
	line	26
	
l3887:	
;I2C.c: 26:     uint16_t cnt = 10000u;
	movlw	010h
	movwf	(wait_for_if@cnt)
	movlw	027h
	movwf	((wait_for_if@cnt))+1
	line	27
;I2C.c: 27:     while (!PIR3bits.SSP1IF) {
	goto	l574
	line	28
	
l3889:	
;I2C.c: 28:         if (--cnt == 0u) return I2C_TIMEOUT;
	movlw	01h
	subwf	(wait_for_if@cnt),f
	movlw	0
	subwfb	(wait_for_if@cnt+1),f
	movf	(((wait_for_if@cnt))),w
iorwf	(((wait_for_if@cnt+1))),w
	btfss	status,2
	goto	u2761
	goto	u2760
u2761:
	goto	l574
u2760:
	
l3891:	
	movlw	low(03h)
	goto	l577
	line	29
;I2C.c: 29:     }
	
l574:	
	line	27
;I2C.c: 27:     while (!PIR3bits.SSP1IF) {
	movlb 14	; select bank14
	btfss	(1807)^0700h,0	;volatile
	goto	u2771
	goto	u2770
u2771:
	goto	l3889
u2770:
	
l578:	
	line	30
;I2C.c: 30:     PIR3bits.SSP1IF = 0;
	bcf	(1807)^0700h,0	;volatile
	line	31
	
l3895:	
;I2C.c: 31:     return I2C_OK;
	movlw	low(0)
	line	32
	
l577:	
	return
	callstack 0
GLOBAL	__end_of_wait_for_if
	__end_of_wait_for_if:
	signat	_wait_for_if,89
	global	_wait_bus_idle

;; *************** function _wait_bus_idle *****************
;; Defined at:
;;		line 57 in file "I2C.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  cnt             2    3[COMMON] unsigned short 
;; Return value:  Size  Location     Type
;;                  1    wreg      enum E7732
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 6
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_I2C_HW_Start
;;		_I2C_HW_Stop
;;		_I2C_HW_SendByte
;;		_I2C_HW_ReadByte
;;		_I2C_HW_RepeatedStart
;; This function uses a non-reentrant model
;;
psect	text24,local,class=CODE,delta=2,merge=1,group=0
	line	57
global __ptext24
__ptext24:	;psect for function _wait_bus_idle
psect	text24
	file	"I2C.c"
	line	57
	
_wait_bus_idle:	
;incstack = 0
	callstack 5
; Regs used in _wait_bus_idle: [wreg+status,2+status,0]
	line	58
	
l3925:	
;I2C.c: 58:     uint16_t cnt = 10000u;
	movlw	010h
	movwf	(wait_bus_idle@cnt)
	movlw	027h
	movwf	((wait_bus_idle@cnt))+1
	line	62
;I2C.c: 62:     while ((SSP1CON2 & 0x1Fu) || (SSP1STAT & 0x04u)) {
	goto	l3933
	line	63
	
l3927:	
;I2C.c: 63:         if (--cnt == 0u) return I2C_TIMEOUT;
	movlw	01h
	subwf	(wait_bus_idle@cnt),f
	movlw	0
	subwfb	(wait_bus_idle@cnt+1),f
	movf	(((wait_bus_idle@cnt))),w
iorwf	(((wait_bus_idle@cnt+1))),w
	btfss	status,2
	goto	u2811
	goto	u2810
u2811:
	goto	l3933
u2810:
	
l3929:	
	movlw	low(03h)
	goto	l595
	line	62
	
l3933:	
;I2C.c: 62:     while ((SSP1CON2 & 0x1Fu) || (SSP1STAT & 0x04u)) {
	movlb 3	; select bank3
	movf	(401)^0180h,w	;volatile
	andlw	01Fh
	btfss	status,2
	goto	u2821
	goto	u2820
u2821:
	goto	l3927
u2820:
	
l3935:	
	btfsc	(399)^0180h,(2)&7	;volatile
	goto	u2831
	goto	u2830
u2831:
	goto	l3927
u2830:
	line	65
	
l3937:	
;I2C.c: 65:     return I2C_OK;
	movlw	low(0)
	line	66
	
l595:	
	return
	callstack 0
GLOBAL	__end_of_wait_bus_idle
	__end_of_wait_bus_idle:
	signat	_wait_bus_idle,89
	global	_check_bus_collision

;; *************** function _check_bus_collision *****************
;; Defined at:
;;		line 43 in file "I2C.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      enum E7732
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 6
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_I2C_HW_Start
;;		_I2C_HW_Stop
;;		_I2C_HW_SendByte
;;		_I2C_HW_RepeatedStart
;; This function uses a non-reentrant model
;;
psect	text25,local,class=CODE,delta=2,merge=1,group=0
	line	43
global __ptext25
__ptext25:	;psect for function _check_bus_collision
psect	text25
	file	"I2C.c"
	line	43
	
_check_bus_collision:	
;incstack = 0
	callstack 5
; Regs used in _check_bus_collision: [wreg]
	line	44
	
l3913:	
;I2C.c: 44:     if (PIR3bits.BCL1IF) {
	movlb 14	; select bank14
	btfss	(1807)^0700h,1	;volatile
	goto	u2801
	goto	u2800
u2801:
	goto	l3921
u2800:
	line	45
	
l3915:	
;I2C.c: 45:         PIR3bits.BCL1IF = 0;
	bcf	(1807)^0700h,1	;volatile
	line	46
	
l3917:	
;I2C.c: 46:         return I2C_BUS_COLL;
	movlw	low(02h)
	goto	l589
	line	48
	
l3921:	
;I2C.c: 48:     return I2C_OK;
	movlw	low(0)
	line	49
	
l589:	
	return
	callstack 0
GLOBAL	__end_of_check_bus_collision
	__end_of_check_bus_collision:
	signat	_check_bus_collision,89
	global	_oled_init

;; *************** function _oled_init *****************
;; Defined at:
;;		line 54 in file "oled.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 7
;; This function calls:
;;		_oled_send
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text26,local,class=CODE,delta=2,merge=1,group=0
	file	"oled.c"
	line	54
global __ptext26
__ptext26:	;psect for function _oled_init
psect	text26
	file	"oled.c"
	line	54
	
_oled_init:	
;incstack = 0
	callstack 8
; Regs used in _oled_init: [wreg+status,2+status,0+pclath+cstack]
	line	55
	
l4345:	
;oled.c: 55:    LATCbits.LATC7 = 1;
	movlb 0	; select bank0
	bsf	(26),7	;volatile
	line	56
	
l4347:	
;oled.c: 56:     _delay((unsigned long)((100)*(32000000U/4000.0)));
	asmopt push
asmopt off
movlw  5
movwf	((??_oled_init)+1)
movlw	15
movwf	((??_oled_init))
	movlw	241
u3897:
decfsz	wreg
	goto	u3897
	decfsz	((??_oled_init)),f
	goto	u3897
	decfsz	((??_oled_init)+1),f
	goto	u3897
	nop
asmopt pop

	line	58
	
l4349:	
;oled.c: 58:     oled_send (0, 0x38);
	movlw	low(038h)
	movwf	(oled_send@data)
	movlw	low(0)
	fcall	_oled_send
	line	59
	
l4351:	
;oled.c: 59:     _delay((unsigned long)((10)*(32000000U/4000.0)));
	asmopt push
asmopt off
movlw	104
movwf	((??_oled_init))
	movlw	228
u3907:
decfsz	wreg
	goto	u3907
	decfsz	((??_oled_init)),f
	goto	u3907
	nop2
asmopt pop

	line	60
;oled.c: 60:     oled_send (0, 0x08);
	movlw	low(08h)
	movwf	(oled_send@data)
	movlw	low(0)
	fcall	_oled_send
	line	61
	
l4353:	
;oled.c: 61:     _delay((unsigned long)((10)*(32000000U/4000.0)));
	asmopt push
asmopt off
movlw	104
movwf	((??_oled_init))
	movlw	228
u3917:
decfsz	wreg
	goto	u3917
	decfsz	((??_oled_init)),f
	goto	u3917
	nop2
asmopt pop

	line	62
	
l4355:	
;oled.c: 62:     oled_send (0, 0x01);
	clrf	(oled_send@data)
	incf	(oled_send@data),f
	movlw	low(0)
	fcall	_oled_send
	line	63
;oled.c: 63:     _delay((unsigned long)((20)*(32000000U/4000.0)));
	asmopt push
asmopt off
movlw	208
movwf	((??_oled_init))
	movlw	202
u3927:
decfsz	wreg
	goto	u3927
	decfsz	((??_oled_init)),f
	goto	u3927
asmopt pop

	line	64
	
l4357:	
;oled.c: 64:     oled_send (0, 0x06);
	movlw	low(06h)
	movwf	(oled_send@data)
	movlw	low(0)
	fcall	_oled_send
	line	65
	
l4359:	
;oled.c: 65:     _delay((unsigned long)((10)*(32000000U/4000.0)));
	asmopt push
asmopt off
movlw	104
movwf	((??_oled_init))
	movlw	228
u3937:
decfsz	wreg
	goto	u3937
	decfsz	((??_oled_init)),f
	goto	u3937
	nop2
asmopt pop

	line	66
;oled.c: 66:     oled_send (0, 0x0C);
	movlw	low(0Ch)
	movwf	(oled_send@data)
	movlw	low(0)
	fcall	_oled_send
	line	67
	
l4361:	
;oled.c: 67:     _delay((unsigned long)((1)*(32000000U/4000.0)));
	asmopt push
asmopt off
movlw	11
movwf	((??_oled_init))
	movlw	98
u3947:
decfsz	wreg
	goto	u3947
	decfsz	((??_oled_init)),f
	goto	u3947
	nop2
asmopt pop

	line	68
	
l4363:	
;oled.c: 68:     oled_send (0, 0x02);
	movlw	low(02h)
	movwf	(oled_send@data)
	movlw	low(0)
	fcall	_oled_send
	line	69
;oled.c: 69:     _delay((unsigned long)((2)*(32000000U/4000.0)));
	asmopt push
asmopt off
movlw	21
movwf	((??_oled_init))
	movlw	198
u3957:
decfsz	wreg
	goto	u3957
	decfsz	((??_oled_init)),f
	goto	u3957
	nop2
asmopt pop

	line	70
	
l432:	
	return
	callstack 0
GLOBAL	__end_of_oled_init
	__end_of_oled_init:
	signat	_oled_init,89
	global	_oled_display2

;; *************** function _oled_display2 *****************
;; Defined at:
;;		line 109 in file "oled.c"
;; Parameters:    Size  Location     Type
;;  str             2    7[BANK0 ] PTR const unsigned char 
;;		 -> STR_17(12), main@line2_1045(17), STR_12(16), STR_10(1), 
;;		 -> STR_8(14), STR_6(13), main@line2(17), STR_2(1), 
;; Auto vars:     Size  Location     Type
;;  i               2   14[BANK0 ] int 
;;  len             1   11[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       5       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       9       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 7
;; This function calls:
;;		_oled_send
;;		_oled_set_cursor
;;		_strlen
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text27,local,class=CODE,delta=2,merge=1,group=0
	line	109
global __ptext27
__ptext27:	;psect for function _oled_display2
psect	text27
	file	"oled.c"
	line	109
	
_oled_display2:	
;incstack = 0
	callstack 8
; Regs used in _oled_display2: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	111
	
l4389:	
;oled.c: 111:     oled_set_cursor(1,0);
	clrf	(oled_set_cursor@col)
	movlw	low(01h)
	fcall	_oled_set_cursor
	line	113
	
l4391:	
;oled.c: 113:     uint8_t len = (uint8_t)strlen(str);
	movlb 0	; select bank0
	movf	(oled_display2@str+1),w
	movwf	(strlen@s+1)
	movf	(oled_display2@str),w
	movwf	(strlen@s)
	fcall	_strlen
	movf	(0+(?_strlen)),w
	movlb 0	; select bank0
	movwf	(oled_display2@len)
	line	115
	
l4393:	
;oled.c: 115:     for(int i = 0; i < 16; i++){
	clrf	(oled_display2@i)
	clrf	(oled_display2@i+1)
	line	116
	
l4399:	
;oled.c: 116:         oled_send(1, (uint8_t)((i < len) ? (uint8_t)str[i] : ' '));
	movlb 0	; select bank0
	movf	(oled_display2@i+1),w
	xorlw	80h
	movwf	(??_oled_display2)
	movlw	80h
	subwf	(??_oled_display2),w
	skipz
	goto	u3375
	movf	(oled_display2@len),w
	subwf	(oled_display2@i),w
u3375:

	skipc
	goto	u3371
	goto	u3370
u3371:
	goto	l4403
u3370:
	
l4401:	
	movlw	020h
	movlb 0	; select bank0
	movwf	(_oled_display2$1160)
	movlw	0
	movwf	((_oled_display2$1160))+1
	goto	l4405
	
l4403:	
	movlb 0	; select bank0
	movf	(oled_display2@str),w
	addwf	(oled_display2@i),w
	movwf	fsr0l
	movf	(oled_display2@str+1),w
	addwfc	(oled_display2@i+1),w
	movwf	fsr0h
	movf	indf0,w ;code access
	movwf	(??_oled_display2)
	clrf	(??_oled_display2+1)
	movf	(0+(??_oled_display2)),w
	movwf	(_oled_display2$1160)
	movf	(1+(??_oled_display2)),w
	movwf	(_oled_display2$1160+1)
	
l4405:	
	movf	(_oled_display2$1160),w
	movwf	(oled_send@data)
	movlw	low(01h)
	fcall	_oled_send
	line	117
	
l4407:	
;oled.c: 117:         _delay((unsigned long)((50)*(32000000U/4000000.0)));
	asmopt push
asmopt off
	movlw	133
u3967:
decfsz	wreg
	goto	u3967
	nop
asmopt pop

	line	118
	
l4409:	
;oled.c: 118:     }
	movlw	01h
	movlb 0	; select bank0
	addwf	(oled_display2@i),f
	movlw	0
	addwfc	(oled_display2@i+1),f
	
l4411:	
	movf	(oled_display2@i+1),w
	xorlw	80h
	movwf	(??_oled_display2)
	movlw	(0)^80h
	subwf	(??_oled_display2),w
	skipz
	goto	u3385
	movlw	010h
	subwf	(oled_display2@i),w
u3385:

	skipc
	goto	u3381
	goto	u3380
u3381:
	goto	l4399
u3380:
	line	119
	
l468:	
	return
	callstack 0
GLOBAL	__end_of_oled_display2
	__end_of_oled_display2:
	signat	_oled_display2,4217
	global	_oled_display1

;; *************** function _oled_display1 *****************
;; Defined at:
;;		line 96 in file "oled.c"
;; Parameters:    Size  Location     Type
;;  str             2    7[BANK0 ] PTR const unsigned char 
;;		 -> STR_16(11), main@line1(17), STR_11(14), STR_9(15), 
;;		 -> STR_7(15), STR_5(13), STR_4(14), STR_1(12), 
;; Auto vars:     Size  Location     Type
;;  i               2   14[BANK0 ] int 
;;  len             1   11[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       5       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       9       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 8
;; This function calls:
;;		_oled_send
;;		_oled_set_cursor
;;		_strlen
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text28,local,class=CODE,delta=2,merge=1,group=0
	line	96
global __ptext28
__ptext28:	;psect for function _oled_display1
psect	text28
	file	"oled.c"
	line	96
	
_oled_display1:	
;incstack = 0
	callstack 7
; Regs used in _oled_display1: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	98
	
l4365:	
;oled.c: 98:     oled_set_cursor(0,0);
	clrf	(oled_set_cursor@col)
	movlw	low(0)
	fcall	_oled_set_cursor
	line	100
	
l4367:	
;oled.c: 100:     uint8_t len = (uint8_t)strlen(str);
	movlb 0	; select bank0
	movf	(oled_display1@str+1),w
	movwf	(strlen@s+1)
	movf	(oled_display1@str),w
	movwf	(strlen@s)
	fcall	_strlen
	movf	(0+(?_strlen)),w
	movlb 0	; select bank0
	movwf	(oled_display1@len)
	line	102
	
l4369:	
;oled.c: 102:     for(int i = 0; i < 16; i++){
	clrf	(oled_display1@i)
	clrf	(oled_display1@i+1)
	line	103
	
l4375:	
;oled.c: 103:         oled_send(1, (uint8_t)((i < len) ? (uint8_t)str[i] : ' '));
	movlb 0	; select bank0
	movf	(oled_display1@i+1),w
	xorlw	80h
	movwf	(??_oled_display1)
	movlw	80h
	subwf	(??_oled_display1),w
	skipz
	goto	u3355
	movf	(oled_display1@len),w
	subwf	(oled_display1@i),w
u3355:

	skipc
	goto	u3351
	goto	u3350
u3351:
	goto	l4379
u3350:
	
l4377:	
	movlw	020h
	movlb 0	; select bank0
	movwf	(_oled_display1$1155)
	movlw	0
	movwf	((_oled_display1$1155))+1
	goto	l4381
	
l4379:	
	movlb 0	; select bank0
	movf	(oled_display1@str),w
	addwf	(oled_display1@i),w
	movwf	fsr0l
	movf	(oled_display1@str+1),w
	addwfc	(oled_display1@i+1),w
	movwf	fsr0h
	movf	indf0,w ;code access
	movwf	(??_oled_display1)
	clrf	(??_oled_display1+1)
	movf	(0+(??_oled_display1)),w
	movwf	(_oled_display1$1155)
	movf	(1+(??_oled_display1)),w
	movwf	(_oled_display1$1155+1)
	
l4381:	
	movf	(_oled_display1$1155),w
	movwf	(oled_send@data)
	movlw	low(01h)
	fcall	_oled_send
	line	104
	
l4383:	
;oled.c: 104:         _delay((unsigned long)((50)*(32000000U/4000000.0)));
	asmopt push
asmopt off
	movlw	133
u3977:
decfsz	wreg
	goto	u3977
	nop
asmopt pop

	line	105
	
l4385:	
;oled.c: 105:     }
	movlw	01h
	movlb 0	; select bank0
	addwf	(oled_display1@i),f
	movlw	0
	addwfc	(oled_display1@i+1),f
	
l4387:	
	movf	(oled_display1@i+1),w
	xorlw	80h
	movwf	(??_oled_display1)
	movlw	(0)^80h
	subwf	(??_oled_display1),w
	skipz
	goto	u3365
	movlw	010h
	subwf	(oled_display1@i),w
u3365:

	skipc
	goto	u3361
	goto	u3360
u3361:
	goto	l4375
u3360:
	line	106
	
l459:	
	return
	callstack 0
GLOBAL	__end_of_oled_display1
	__end_of_oled_display1:
	signat	_oled_display1,4217
	global	_strlen

;; *************** function _strlen *****************
;; Defined at:
;;		line 5 in file "E:\MPXLab\XC8 Compiler\pic\sources\c99\common\strlen.c"
;; Parameters:    Size  Location     Type
;;  s               2    3[COMMON] PTR const unsigned char 
;;		 -> STR_17(12), STR_16(11), main@line2_1045(17), main@line1(17), 
;;		 -> STR_12(16), STR_11(14), STR_10(1), STR_9(15), 
;;		 -> STR_8(14), STR_7(15), STR_6(13), STR_5(13), 
;;		 -> STR_4(14), main@line2(17), STR_2(1), STR_1(12), 
;; Auto vars:     Size  Location     Type
;;  a               2    6[COMMON] PTR const unsigned char 
;;		 -> STR_17(12), STR_16(11), main@line2_1045(17), main@line1(17), 
;;		 -> STR_12(16), STR_11(14), STR_10(1), STR_9(15), 
;;		 -> STR_8(14), STR_7(15), STR_6(13), STR_5(13), 
;;		 -> STR_4(14), main@line2(17), STR_2(1), STR_1(12), 
;; Return value:  Size  Location     Type
;;                  2    3[COMMON] unsigned int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         5       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 6
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_oled_display1
;;		_oled_display2
;; This function uses a non-reentrant model
;;
psect	text29,local,class=CODE,delta=2,merge=1,group=3
	file	"E:\MPXLab\XC8 Compiler\pic\sources\c99\common\strlen.c"
	line	5
global __ptext29
__ptext29:	;psect for function _strlen
psect	text29
	file	"E:\MPXLab\XC8 Compiler\pic\sources\c99\common\strlen.c"
	line	5
	
_strlen:	
;incstack = 0
	callstack 8
; Regs used in _strlen: [wreg-fsr0h+status,2+status,0]
	line	7
	
l3197:	
	movf	(strlen@s+1),w
	movwf	(strlen@a+1)
	movf	(strlen@s),w
	movwf	(strlen@a)
	line	8
	goto	l3201
	line	9
	
l3199:	
	movlw	01h
	addwf	(strlen@s),f
	movlw	0
	addwfc	(strlen@s+1),f
	line	8
	
l3201:	
	movf	(strlen@s),w
	movwf	fsr0l
	movf	((strlen@s+1)),w
	movwf	fsr0h
	moviw	fsr0++
	btfss	status,2
	goto	u2121
	goto	u2120
u2121:
	goto	l3199
u2120:
	line	11
	
l3203:	
	movf	(strlen@a),w
	subwf	(strlen@s),w
	movwf	(?_strlen)
	movf	(strlen@a+1),w
	subwfb	(strlen@s+1),w
	movwf	1+(?_strlen)
	line	12
	
l1219:	
	return
	callstack 0
GLOBAL	__end_of_strlen
	__end_of_strlen:
	signat	_strlen,4218
	global	_oled_set_cursor

;; *************** function _oled_set_cursor *****************
;; Defined at:
;;		line 79 in file "oled.c"
;; Parameters:    Size  Location     Type
;;  line            1    wreg     unsigned char 
;;  col             1    6[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  line            1    3[BANK0 ] unsigned char 
;;  addr            1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         1       4       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 6
;; This function calls:
;;		_oled_send
;; This function is called by:
;;		_oled_display1
;;		_oled_display2
;; This function uses a non-reentrant model
;;
psect	text30,local,class=CODE,delta=2,merge=1,group=0
	file	"oled.c"
	line	79
global __ptext30
__ptext30:	;psect for function _oled_set_cursor
psect	text30
	file	"oled.c"
	line	79
	
_oled_set_cursor:	
;incstack = 0
	callstack 8
; Regs used in _oled_set_cursor: [wreg+status,2+status,0+pclath+cstack]
;oled_set_cursor@line stored from wreg
	movlb 0	; select bank0
	movwf	(oled_set_cursor@line)
	line	80
	
l4259:	
;oled.c: 80:     uint8_t addr = (line == 0) ? 0x00 : 0x40;
	movf	((oled_set_cursor@line)),w
	btfsc	status,2
	goto	u3261
	goto	u3260
u3261:
	goto	l4263
u3260:
	
l4261:	
	movlw	040h
	movwf	(_oled_set_cursor$1146)
	movlw	0
	movwf	((_oled_set_cursor$1146))+1
	goto	l4265
	
l4263:	
	clrf	(_oled_set_cursor$1146)
	clrf	(_oled_set_cursor$1146+1)
	
l4265:	
	movf	(_oled_set_cursor$1146),w
	movwf	(oled_set_cursor@addr)
	line	81
	
l4267:	
;oled.c: 81:     oled_send (0, 0x80 | (addr + (col & 0x0F)));
	movf	(oled_set_cursor@col),w
	andlw	0Fh
	addwf	(oled_set_cursor@addr),w
	iorlw	080h
	movwf	(oled_send@data)
	movlw	low(0)
	fcall	_oled_send
	line	82
	
l4269:	
;oled.c: 82:     _delay((unsigned long)((50)*(32000000U/4000000.0)));
	asmopt push
asmopt off
	movlw	133
u3987:
decfsz	wreg
	goto	u3987
	nop
asmopt pop

	line	83
	
l442:	
	return
	callstack 0
GLOBAL	__end_of_oled_set_cursor
	__end_of_oled_set_cursor:
	signat	_oled_set_cursor,8313
	global	_oled_send

;; *************** function _oled_send *****************
;; Defined at:
;;		line 36 in file "oled.c"
;; Parameters:    Size  Location     Type
;;  rs              1    wreg     unsigned char 
;;  data            1    4[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  rs              1    0[BANK0 ] unsigned char 
;;  i               2    1[BANK0 ] int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       3       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 6
;; This function calls:
;;		_oled_send_bit
;; This function is called by:
;;		_oled_init
;;		_oled_set_cursor
;;		_oled_display1
;;		_oled_display2
;;		_oled_clear
;;		_oled_print
;; This function uses a non-reentrant model
;;
psect	text31,local,class=CODE,delta=2,merge=1,group=0
	line	36
global __ptext31
__ptext31:	;psect for function _oled_send
psect	text31
	file	"oled.c"
	line	36
	
_oled_send:	
;incstack = 0
	callstack 7
; Regs used in _oled_send: [wreg+status,2+status,0+pclath+cstack]
;oled_send@rs stored from wreg
	movlb 0	; select bank0
	movwf	(oled_send@rs)
	line	37
	
l4079:	
;oled.c: 37:     LATCbits.LATC7 = 0;
	bcf	(26),7	;volatile
	line	38
;oled.c: 38:     _delay((unsigned long)((1)*(32000000U/4000000.0)));
		asmopt push
	asmopt off
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	asmopt pop

	line	41
	
l4081:	
;oled.c: 41:     oled_send_bit(rs & 0x01);
	movlb 0	; select bank0
	movf	(oled_send@rs),w
	andlw	01h
	fcall	_oled_send_bit
	line	43
;oled.c: 43:     oled_send_bit(0);
	movlw	low(0)
	fcall	_oled_send_bit
	line	45
	
l4083:	
;oled.c: 45:     for (int i = 7; i >= 0; i--) {
	movlw	07h
	movlb 0	; select bank0
	movwf	(oled_send@i)
	movlw	0
	movwf	((oled_send@i))+1
	line	46
	
l4089:	
;oled.c: 46:         oled_send_bit((data >> i) & 0x01);
	movf	(oled_send@data),w
	movwf	(??_oled_send)
	incf	(oled_send@i),w
	goto	u3054
u3055:
	lsrf	(??_oled_send),f
u3054:
	decfsz	wreg,f
	goto	u3055
	movf	(0+(??_oled_send)),w
	andlw	01h
	fcall	_oled_send_bit
	line	47
	
l4091:	
;oled.c: 47:     }
	movlw	0FFh
	movlb 0	; select bank0
	addwf	(oled_send@i),f
	movlw	0FFh
	addwfc	(oled_send@i+1),f
	
l4093:	
	btfss	(oled_send@i+1),7
	goto	u3061
	goto	u3060
u3061:
	goto	l4089
u3060:
	
l428:	
	line	49
;oled.c: 49:     _delay((unsigned long)((1)*(32000000U/4000000.0)));
		asmopt push
	asmopt off
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	asmopt pop

	line	50
;oled.c: 50:     LATCbits.LATC7 = 1;
	movlb 0	; select bank0
	bsf	(26),7	;volatile
	line	51
	
l4095:	
;oled.c: 51:     _delay((unsigned long)((100)*(32000000U/4000000.0)));
	asmopt push
asmopt off
	movlw	160
u3997:
	nop2
decfsz	wreg
	goto	u3997
asmopt pop

	line	52
	
l429:	
	return
	callstack 0
GLOBAL	__end_of_oled_send
	__end_of_oled_send:
	signat	_oled_send,8313
	global	_oled_send_bit

;; *************** function _oled_send_bit *****************
;; Defined at:
;;		line 23 in file "oled.c"
;; Parameters:    Size  Location     Type
;;  bit             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  bit             1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 6
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_oled_send
;; This function uses a non-reentrant model
;;
psect	text32,local,class=CODE,delta=2,merge=1,group=0
	line	23
global __ptext32
__ptext32:	;psect for function _oled_send_bit
psect	text32
	file	"oled.c"
	line	23
	
_oled_send_bit:	
;incstack = 0
	callstack 6
; Regs used in _oled_send_bit: [wreg+status,2+status,0]
;oled_send_bit@bit stored from wreg
	movwf	(oled_send_bit@bit)
	line	24
	
l4015:	
;oled.c: 24:     if (bit)
	movf	((oled_send_bit@bit)),w
	btfsc	status,2
	goto	u2921
	goto	u2920
u2921:
	goto	l422
u2920:
	line	25
	
l4017:	
;oled.c: 25:         LATBbits.LATB0 = 1;
	movlb 0	; select bank0
	bsf	(25),0	;volatile
	goto	l423
	line	26
;oled.c: 26:     else
	
l422:	
	line	27
;oled.c: 27:         LATBbits.LATB0 = 0;
	movlb 0	; select bank0
	bcf	(25),0	;volatile
	
l423:	
	line	28
;oled.c: 28:     _delay((unsigned long)((1)*(32000000U/4000000.0)));
		asmopt push
	asmopt off
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	asmopt pop

	line	29
;oled.c: 29:     LATBbits.LATB1 = 1;
	movlb 0	; select bank0
	bsf	(25),1	;volatile
	line	30
;oled.c: 30:     _delay((unsigned long)((1)*(32000000U/4000000.0)));
		asmopt push
	asmopt off
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	asmopt pop

	line	31
;oled.c: 31:     LATBbits.LATB1 = 0;
	movlb 0	; select bank0
	bcf	(25),1	;volatile
	line	32
;oled.c: 32:     _delay((unsigned long)((1)*(32000000U/4000000.0)));
		asmopt push
	asmopt off
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	asmopt pop

	line	33
	
l424:	
	return
	callstack 0
GLOBAL	__end_of_oled_send_bit
	__end_of_oled_send_bit:
	signat	_oled_send_bit,4217
	global	_init_heartbeat_led

;; *************** function _init_heartbeat_led *****************
;; Defined at:
;;		line 19 in file "Main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 6
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text33,local,class=CODE,delta=2,merge=1,group=0
	file	"Main.c"
	line	19
global __ptext33
__ptext33:	;psect for function _init_heartbeat_led
psect	text33
	file	"Main.c"
	line	19
	
_init_heartbeat_led:	
;incstack = 0
	callstack 9
; Regs used in _init_heartbeat_led: []
	line	20
	
l3271:	
;Main.c: 20:     TRISDbits.TRISD0 = 0;
	movlb 0	; select bank0
	bcf	(21),0	;volatile
	line	21
;Main.c: 21:     ANSELDbits.ANSD0 = 0;
	movlb 62	; select bank62
	bcf	(8025)^01F00h,0	;volatile
	line	22
;Main.c: 22:     LATDbits.LATD0 = 1;
	movlb 0	; select bank0
	bsf	(27),0	;volatile
	line	23
	
l377:	
	return
	callstack 0
GLOBAL	__end_of_init_heartbeat_led
	__end_of_init_heartbeat_led:
	signat	_init_heartbeat_led,89
	global	_blink_error

;; *************** function _blink_error *****************
;; Defined at:
;;		line 27 in file "Main.c"
;; Parameters:    Size  Location     Type
;;  count           1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  count           1    5[COMMON] unsigned char 
;;  i               1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 6
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text34,local,class=CODE,delta=2,merge=1,group=0
	line	27
global __ptext34
__ptext34:	;psect for function _blink_error
psect	text34
	file	"Main.c"
	line	27
	
_blink_error:	
;incstack = 0
	callstack 9
; Regs used in _blink_error: [wreg+status,2+status,0]
;blink_error@count stored from wreg
	movwf	(blink_error@count)
	line	29
;Main.c: 27: static void blink_error(uint8_t count);Main.c: 28: {;Main.c: 29:     while (1) {
	
l380:	
	line	30
	
l3273:	
;Main.c: 30:         for (uint8_t i = 0u; i < count; i++) {
	clrf	(blink_error@i)
	goto	l3281
	
l382:	
	line	31
;Main.c: 31:             LATDbits.LATD0 = 1;
	movlb 0	; select bank0
	bsf	(27),0	;volatile
	line	32
	
l3275:	
;Main.c: 32:             _delay((unsigned long)((100)*(32000000U/4000.0)));
	asmopt push
asmopt off
movlw  5
movwf	((??_blink_error)+1)
movlw	15
movwf	((??_blink_error))
	movlw	241
u4007:
decfsz	wreg
	goto	u4007
	decfsz	((??_blink_error)),f
	goto	u4007
	decfsz	((??_blink_error)+1),f
	goto	u4007
	nop
asmopt pop

	line	33
	
l3277:	
;Main.c: 33:             LATDbits.LATD0 = 0;
	movlb 0	; select bank0
	bcf	(27),0	;volatile
	line	34
;Main.c: 34:             _delay((unsigned long)((100)*(32000000U/4000.0)));
	asmopt push
asmopt off
movlw  5
movwf	((??_blink_error)+1)
movlw	15
movwf	((??_blink_error))
	movlw	241
u4017:
decfsz	wreg
	goto	u4017
	decfsz	((??_blink_error)),f
	goto	u4017
	decfsz	((??_blink_error)+1),f
	goto	u4017
	nop
asmopt pop

	line	35
	
l3279:	
;Main.c: 35:         }
	movlw	low(01h)
	addwf	(blink_error@i),f
	
l3281:	
	movf	(blink_error@count),w
	subwf	(blink_error@i),w
	skipc
	goto	u2201
	goto	u2200
u2201:
	goto	l382
u2200:
	line	36
	
l3283:	
;Main.c: 36:         _delay((unsigned long)((800)*(32000000U/4000.0)));
	asmopt push
asmopt off
movlw  33
movwf	((??_blink_error)+1)
movlw	120
movwf	((??_blink_error))
	movlw	152
u4027:
decfsz	wreg
	goto	u4027
	decfsz	((??_blink_error)),f
	goto	u4027
	decfsz	((??_blink_error)+1),f
	goto	u4027
	nop2
asmopt pop

	goto	l380
	return
	callstack 0
	line	38
GLOBAL	__end_of_blink_error
	__end_of_blink_error:
	signat	_blink_error,4217
	global	_SYSTEM_Initialize

;; *************** function _SYSTEM_Initialize *****************
;; Defined at:
;;		line 39 in file "mcc_generated_files/system/src/system.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 8
;; This function calls:
;;		_CLOCK_Initialize
;;		_I2C1_Initialize
;;		_INTERRUPT_Initialize
;;		_PIN_MANAGER_Initialize
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text35,local,class=CODE,delta=2,merge=1,group=0
	file	"mcc_generated_files/system/src/system.c"
	line	39
global __ptext35
__ptext35:	;psect for function _SYSTEM_Initialize
psect	text35
	file	"mcc_generated_files/system/src/system.c"
	line	39
	
_SYSTEM_Initialize:	
;incstack = 0
	callstack 7
; Regs used in _SYSTEM_Initialize: [wreg+status,2+status,0+pclath+cstack]
	line	41
	
l3267:	
;mcc_generated_files/system/src/system.c: 41:     CLOCK_Initialize();
	fcall	_CLOCK_Initialize
	line	42
;mcc_generated_files/system/src/system.c: 42:     PIN_MANAGER_Initialize();
	fcall	_PIN_MANAGER_Initialize
	line	43
;mcc_generated_files/system/src/system.c: 43:     I2C1_Initialize();
	fcall	_I2C1_Initialize
	line	44
	
l3269:	
;mcc_generated_files/system/src/system.c: 44:     INTERRUPT_Initialize();
	fcall	_INTERRUPT_Initialize
	line	45
	
l282:	
	return
	callstack 0
GLOBAL	__end_of_SYSTEM_Initialize
	__end_of_SYSTEM_Initialize:
	signat	_SYSTEM_Initialize,89
	global	_PIN_MANAGER_Initialize

;; *************** function _PIN_MANAGER_Initialize *****************
;; Defined at:
;;		line 38 in file "mcc_generated_files/system/src/pins.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 6
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_SYSTEM_Initialize
;; This function uses a non-reentrant model
;;
psect	text36,local,class=CODE,delta=2,merge=1,group=0
	file	"mcc_generated_files/system/src/pins.c"
	line	38
global __ptext36
__ptext36:	;psect for function _PIN_MANAGER_Initialize
psect	text36
	file	"mcc_generated_files/system/src/pins.c"
	line	38
	
_PIN_MANAGER_Initialize:	
;incstack = 0
	callstack 8
; Regs used in _PIN_MANAGER_Initialize: [status,2]
	line	43
	
l3121:	
;mcc_generated_files/system/src/pins.c: 43:     LATA = 0x0;
	movlb 0	; select bank0
	clrf	(24)	;volatile
	line	44
;mcc_generated_files/system/src/pins.c: 44:     LATB = 0x0;
	clrf	(25)	;volatile
	line	45
	
l3123:	
;mcc_generated_files/system/src/pins.c: 45:     LATC = 0x30;
	movlw	030h
	movwf	(26)	;volatile
	line	46
;mcc_generated_files/system/src/pins.c: 46:     LATD = 0x0;
	clrf	(27)	;volatile
	line	47
;mcc_generated_files/system/src/pins.c: 47:     LATE = 0x0;
	clrf	(28)	;volatile
	line	52
	
l3125:	
;mcc_generated_files/system/src/pins.c: 52:     TRISA = 0xFF;
	movlw	0FFh
	movwf	(18)	;volatile
	line	53
	
l3127:	
;mcc_generated_files/system/src/pins.c: 53:     TRISB = 0xFC;
	movlw	0FCh
	movwf	(19)	;volatile
	line	54
	
l3129:	
;mcc_generated_files/system/src/pins.c: 54:     TRISC = 0x7F;
	movlw	07Fh
	movwf	(20)	;volatile
	line	55
	
l3131:	
;mcc_generated_files/system/src/pins.c: 55:     TRISD = 0xFF;
	movlw	0FFh
	movwf	(21)	;volatile
	line	56
	
l3133:	
;mcc_generated_files/system/src/pins.c: 56:     TRISE = 0xF;
	movlw	0Fh
	movwf	(22)	;volatile
	line	61
	
l3135:	
;mcc_generated_files/system/src/pins.c: 61:     ANSELA = 0xFF;
	movlw	0FFh
	movlb 62	; select bank62
	movwf	(7992)^01F00h	;volatile
	line	62
	
l3137:	
;mcc_generated_files/system/src/pins.c: 62:     ANSELB = 0xFC;
	movlw	0FCh
	movwf	(8003)^01F00h	;volatile
	line	63
	
l3139:	
;mcc_generated_files/system/src/pins.c: 63:     ANSELC = 0x4F;
	movlw	04Fh
	movwf	(8014)^01F00h	;volatile
	line	64
	
l3141:	
;mcc_generated_files/system/src/pins.c: 64:     ANSELD = 0xFF;
	movlw	0FFh
	movwf	(8025)^01F00h	;volatile
	line	65
	
l3143:	
;mcc_generated_files/system/src/pins.c: 65:     ANSELE = 0x7;
	movlw	07h
	movwf	(8036)^01F00h	;volatile
	line	70
;mcc_generated_files/system/src/pins.c: 70:     WPUA = 0x0;
	clrf	(7993)^01F00h	;volatile
	line	71
;mcc_generated_files/system/src/pins.c: 71:     WPUB = 0x0;
	clrf	(8004)^01F00h	;volatile
	line	72
;mcc_generated_files/system/src/pins.c: 72:     WPUC = 0x0;
	clrf	(8015)^01F00h	;volatile
	line	73
;mcc_generated_files/system/src/pins.c: 73:     WPUD = 0x0;
	clrf	(8026)^01F00h	;volatile
	line	74
;mcc_generated_files/system/src/pins.c: 74:     WPUE = 0x0;
	clrf	(8037)^01F00h	;volatile
	line	80
;mcc_generated_files/system/src/pins.c: 80:     ODCONA = 0x0;
	clrf	(7994)^01F00h	;volatile
	line	81
;mcc_generated_files/system/src/pins.c: 81:     ODCONB = 0x0;
	clrf	(8005)^01F00h	;volatile
	line	82
;mcc_generated_files/system/src/pins.c: 82:     ODCONC = 0x0;
	clrf	(8016)^01F00h	;volatile
	line	83
;mcc_generated_files/system/src/pins.c: 83:     ODCOND = 0x0;
	clrf	(8027)^01F00h	;volatile
	line	84
;mcc_generated_files/system/src/pins.c: 84:     ODCONE = 0x0;
	clrf	(8038)^01F00h	;volatile
	line	88
	
l3145:	
;mcc_generated_files/system/src/pins.c: 88:     SLRCONA = 0xFF;
	movlw	0FFh
	movwf	(7995)^01F00h	;volatile
	line	89
	
l3147:	
;mcc_generated_files/system/src/pins.c: 89:     SLRCONB = 0xFF;
	movlw	0FFh
	movwf	(8006)^01F00h	;volatile
	line	90
	
l3149:	
;mcc_generated_files/system/src/pins.c: 90:     SLRCONC = 0xFF;
	movlw	0FFh
	movwf	(8017)^01F00h	;volatile
	line	91
	
l3151:	
;mcc_generated_files/system/src/pins.c: 91:     SLRCOND = 0xFF;
	movlw	0FFh
	movwf	(8028)^01F00h	;volatile
	line	92
	
l3153:	
;mcc_generated_files/system/src/pins.c: 92:     SLRCONE = 0x7;
	movlw	07h
	movwf	(8039)^01F00h	;volatile
	line	96
	
l3155:	
;mcc_generated_files/system/src/pins.c: 96:     INLVLA = 0xFF;
	movlw	0FFh
	movwf	(7996)^01F00h	;volatile
	line	97
	
l3157:	
;mcc_generated_files/system/src/pins.c: 97:     INLVLB = 0xFF;
	movlw	0FFh
	movwf	(8007)^01F00h	;volatile
	line	98
	
l3159:	
;mcc_generated_files/system/src/pins.c: 98:     INLVLC = 0xFF;
	movlw	0FFh
	movwf	(8018)^01F00h	;volatile
	line	99
	
l3161:	
;mcc_generated_files/system/src/pins.c: 99:     INLVLD = 0xFF;
	movlw	0FFh
	movwf	(8029)^01F00h	;volatile
	line	100
	
l3163:	
;mcc_generated_files/system/src/pins.c: 100:     INLVLE = 0xF;
	movlw	0Fh
	movwf	(8040)^01F00h	;volatile
	line	105
	
l3165:	
;mcc_generated_files/system/src/pins.c: 105:     SSP1CLKPPS = 0x14;
	movlw	014h
	movlb 61	; select bank61
	movwf	(7877)^01E80h	;volatile
	line	106
	
l3167:	
;mcc_generated_files/system/src/pins.c: 106:     RC4PPS = 0x15;
	movlw	015h
	movlb 62	; select bank62
	movwf	(7972)^01F00h	;volatile
	line	107
	
l3169:	
;mcc_generated_files/system/src/pins.c: 107:     SSP1DATPPS = 0x15;
	movlw	015h
	movlb 61	; select bank61
	movwf	(7878)^01E80h	;volatile
	line	108
	
l3171:	
;mcc_generated_files/system/src/pins.c: 108:     RC5PPS = 0x16;
	movlw	016h
	movlb 62	; select bank62
	movwf	(7973)^01F00h	;volatile
	line	117
;mcc_generated_files/system/src/pins.c: 117:     IOCAP = 0x0;
	clrf	(7997)^01F00h	;volatile
	line	118
;mcc_generated_files/system/src/pins.c: 118:     IOCAN = 0x0;
	clrf	(7998)^01F00h	;volatile
	line	119
;mcc_generated_files/system/src/pins.c: 119:     IOCAF = 0x0;
	clrf	(7999)^01F00h	;volatile
	line	120
;mcc_generated_files/system/src/pins.c: 120:     IOCBP = 0x0;
	clrf	(8008)^01F00h	;volatile
	line	121
;mcc_generated_files/system/src/pins.c: 121:     IOCBN = 0x0;
	clrf	(8009)^01F00h	;volatile
	line	122
;mcc_generated_files/system/src/pins.c: 122:     IOCBF = 0x0;
	clrf	(8010)^01F00h	;volatile
	line	123
;mcc_generated_files/system/src/pins.c: 123:     IOCCP = 0x0;
	clrf	(8019)^01F00h	;volatile
	line	124
;mcc_generated_files/system/src/pins.c: 124:     IOCCN = 0x0;
	clrf	(8020)^01F00h	;volatile
	line	125
;mcc_generated_files/system/src/pins.c: 125:     IOCCF = 0x0;
	clrf	(8021)^01F00h	;volatile
	line	126
;mcc_generated_files/system/src/pins.c: 126:     IOCEP = 0x0;
	clrf	(8041)^01F00h	;volatile
	line	127
;mcc_generated_files/system/src/pins.c: 127:     IOCEN = 0x0;
	clrf	(8042)^01F00h	;volatile
	line	128
;mcc_generated_files/system/src/pins.c: 128:     IOCEF = 0x0;
	clrf	(8043)^01F00h	;volatile
	line	131
	
l268:	
	return
	callstack 0
GLOBAL	__end_of_PIN_MANAGER_Initialize
	__end_of_PIN_MANAGER_Initialize:
	signat	_PIN_MANAGER_Initialize,89
	global	_INTERRUPT_Initialize

;; *************** function _INTERRUPT_Initialize *****************
;; Defined at:
;;		line 40 in file "mcc_generated_files/system/src/interrupt.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 7
;; This function calls:
;;		_INT_SetInterruptHandler
;; This function is called by:
;;		_SYSTEM_Initialize
;; This function uses a non-reentrant model
;;
psect	text37,local,class=CODE,delta=2,merge=1,group=0
	file	"mcc_generated_files/system/src/interrupt.c"
	line	40
global __ptext37
__ptext37:	;psect for function _INTERRUPT_Initialize
psect	text37
	file	"mcc_generated_files/system/src/interrupt.c"
	line	40
	
_INTERRUPT_Initialize:	
;incstack = 0
	callstack 7
; Regs used in _INTERRUPT_Initialize: [wreg+status,2+status,0+pclath+cstack]
	line	43
	
l3181:	
;mcc_generated_files/system/src/interrupt.c: 43:     (PIR0bits.INTF = 0);
	movlb 14	; select bank14
	bcf	(1804)^0700h,0	;volatile
	line	45
	
l3183:	
;mcc_generated_files/system/src/interrupt.c: 45:     INT_SetInterruptHandler(INT_DefaultInterruptHandler);
	movlw	low(_INT_DefaultInterruptHandler)
	movwf	(INT_SetInterruptHandler@InterruptHandler)
	movlw	high(_INT_DefaultInterruptHandler)
	movwf	((INT_SetInterruptHandler@InterruptHandler))+1
	fcall	_INT_SetInterruptHandler
	line	48
	
l318:	
	return
	callstack 0
GLOBAL	__end_of_INTERRUPT_Initialize
	__end_of_INTERRUPT_Initialize:
	signat	_INTERRUPT_Initialize,89
	global	_INT_SetInterruptHandler

;; *************** function _INT_SetInterruptHandler *****************
;; Defined at:
;;		line 99 in file "mcc_generated_files/system/src/interrupt.c"
;; Parameters:    Size  Location     Type
;;  InterruptHan    2    3[COMMON] PTR FTN()void 
;;		 -> INT_DefaultInterruptHandler(1), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 6
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_INTERRUPT_Initialize
;; This function uses a non-reentrant model
;;
psect	text38,local,class=CODE,delta=2,merge=1,group=0
	line	99
global __ptext38
__ptext38:	;psect for function _INT_SetInterruptHandler
psect	text38
	file	"mcc_generated_files/system/src/interrupt.c"
	line	99
	
_INT_SetInterruptHandler:	
;incstack = 0
	callstack 7
; Regs used in _INT_SetInterruptHandler: [wreg]
	line	100
	
l2895:	
;mcc_generated_files/system/src/interrupt.c: 100:     INT_InterruptHandler = InterruptHandler;
	movf	(INT_SetInterruptHandler@InterruptHandler+1),w
	movlb 0	; select bank0
	movwf	(_INT_InterruptHandler+1)
	movf	(INT_SetInterruptHandler@InterruptHandler),w
	movwf	(_INT_InterruptHandler)
	line	101
	
l339:	
	return
	callstack 0
GLOBAL	__end_of_INT_SetInterruptHandler
	__end_of_INT_SetInterruptHandler:
	signat	_INT_SetInterruptHandler,4217
	global	_I2C1_Initialize

;; *************** function _I2C1_Initialize *****************
;; Defined at:
;;		line 84 in file "mcc_generated_files/i2c_host/src/mssp1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 6
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_SYSTEM_Initialize
;; This function uses a non-reentrant model
;;
psect	text39,local,class=CODE,delta=2,merge=1,group=0
	file	"mcc_generated_files/i2c_host/src/mssp1.c"
	line	84
global __ptext39
__ptext39:	;psect for function _I2C1_Initialize
psect	text39
	file	"mcc_generated_files/i2c_host/src/mssp1.c"
	line	84
	
_I2C1_Initialize:	
;incstack = 0
	callstack 8
; Regs used in _I2C1_Initialize: [status,2]
	line	87
	
l3091:	
;mcc_generated_files/i2c_host/src/mssp1.c: 87:     SSP1STAT = 0x80;
	movlw	080h
	movlb 3	; select bank3
	movwf	(399)^0180h	;volatile
	line	89
;mcc_generated_files/i2c_host/src/mssp1.c: 89:     SSP1CON1 = 0x8;
	movlw	08h
	movwf	(400)^0180h	;volatile
	line	91
	
l3093:	
;mcc_generated_files/i2c_host/src/mssp1.c: 91:     SSP1CON2 = 0x0;
	clrf	(401)^0180h	;volatile
	line	93
;mcc_generated_files/i2c_host/src/mssp1.c: 93:     SSP1CON3 = 0x0;
	clrf	(402)^0180h	;volatile
	line	95
	
l3095:	
;mcc_generated_files/i2c_host/src/mssp1.c: 95:     SSP1ADD = 0x4F;
	movlw	04Fh
	movwf	(397)^0180h	;volatile
	line	96
	
l3097:	
;mcc_generated_files/i2c_host/src/mssp1.c: 96:     PIE3bits.SSP1IE = 1;
	movlb 14	; select bank14
	bsf	(1817)^0700h,0	;volatile
	line	97
	
l3099:	
;mcc_generated_files/i2c_host/src/mssp1.c: 97:     PIE3bits.BCL1IE = 1;
	bsf	(1817)^0700h,1	;volatile
	line	98
	
l3101:	
;mcc_generated_files/i2c_host/src/mssp1.c: 98:     SSP1CON1bits.SSPEN = 1;
	movlb 3	; select bank3
	bsf	(400)^0180h,5	;volatile
	line	99
	
l75:	
	return
	callstack 0
GLOBAL	__end_of_I2C1_Initialize
	__end_of_I2C1_Initialize:
	signat	_I2C1_Initialize,89
	global	_CLOCK_Initialize

;; *************** function _CLOCK_Initialize *****************
;; Defined at:
;;		line 39 in file "mcc_generated_files/system/src/clock.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 6
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_SYSTEM_Initialize
;; This function uses a non-reentrant model
;;
psect	text40,local,class=CODE,delta=2,merge=1,group=0
	file	"mcc_generated_files/system/src/clock.c"
	line	39
global __ptext40
__ptext40:	;psect for function _CLOCK_Initialize
psect	text40
	file	"mcc_generated_files/system/src/clock.c"
	line	39
	
_CLOCK_Initialize:	
;incstack = 0
	callstack 8
; Regs used in _CLOCK_Initialize: [status,2]
	line	42
	
l3173:	
;mcc_generated_files/system/src/clock.c: 42:     OSCCON1 = (0 << 0x0)
	movlw	060h
	movlb 17	; select bank17
	movwf	(2189)^0880h	;volatile
	line	44
	
l3175:	
;mcc_generated_files/system/src/clock.c: 44:     OSCCON3 = (0 << 0x6)
	clrf	(2191)^0880h	;volatile
	line	46
;mcc_generated_files/system/src/clock.c: 46:     OSCEN = (0 << 0x7)
	clrf	(2193)^0880h	;volatile
	line	52
	
l3177:	
;mcc_generated_files/system/src/clock.c: 52:     OSCFRQ = (6 << 0x0);
	movlw	06h
	movwf	(2195)^0880h	;volatile
	line	53
	
l3179:	
;mcc_generated_files/system/src/clock.c: 53:     OSCTUNE = (32 << 0x0);
	movlw	020h
	movwf	(2194)^0880h	;volatile
	line	55
	
l295:	
	return
	callstack 0
GLOBAL	__end_of_CLOCK_Initialize
	__end_of_CLOCK_Initialize:
	signat	_CLOCK_Initialize,89
	global	_I2C_HW_Init

;; *************** function _I2C_HW_Init *****************
;; Defined at:
;;		line 72 in file "I2C.c"
;; Parameters:    Size  Location     Type
;;  brg             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  brg             1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 6
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_I2C_HW_BusRecovery
;; This function uses a non-reentrant model
;;
psect	text41,local,class=CODE,delta=2,merge=1,group=0
	file	"I2C.c"
	line	72
global __ptext41
__ptext41:	;psect for function _I2C_HW_Init
psect	text41
	file	"I2C.c"
	line	72
	
_I2C_HW_Init:	
;incstack = 0
	callstack 9
; Regs used in _I2C_HW_Init: [wreg+status,2]
;I2C_HW_Init@brg stored from wreg
	movwf	(I2C_HW_Init@brg)
	line	75
	
l3371:	
;I2C.c: 72: void I2C_HW_Init(uint8_t brg);I2C.c: 73: {;I2C.c: 75:     SSP1CON1 = 0x00;
	movlb 3	; select bank3
	clrf	(400)^0180h	;volatile
	line	77
;I2C.c: 77:     SSP1STAT = 0x00;
	clrf	(399)^0180h	;volatile
	line	78
	
l3373:	
;I2C.c: 78:     SSP1CON3 = 0x08;
	movlw	08h
	movwf	(402)^0180h	;volatile
	line	79
	
l3375:	
;I2C.c: 79:     SSP1CON1 = 0x08;
	movlw	08h
	movwf	(400)^0180h	;volatile
	line	80
	
l3377:	
;I2C.c: 80:     SSP1ADD = brg;
	movf	(I2C_HW_Init@brg),w
	movwf	(397)^0180h	;volatile
	line	83
	
l3379:	
;I2C.c: 83:     PIR3bits.SSP1IF = 0;
	movlb 14	; select bank14
	bcf	(1807)^0700h,0	;volatile
	line	84
	
l3381:	
;I2C.c: 84:     PIR3bits.BCL1IF = 0;
	bcf	(1807)^0700h,1	;volatile
	line	87
	
l3383:	
;I2C.c: 87:     SSP1CON1 |= 0x20;
	movlb 3	; select bank3
	bsf	(400)^0180h+(5/8),(5)&7	;volatile
	line	88
	
l599:	
	return
	callstack 0
GLOBAL	__end_of_I2C_HW_Init
	__end_of_I2C_HW_Init:
	signat	_I2C_HW_Init,4217
	global	_INTERRUPT_InterruptManager

;; *************** function _INTERRUPT_InterruptManager *****************
;; Defined at:
;;		line 57 in file "mcc_generated_files/system/src/interrupt.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 5
;; This function calls:
;;		_I2C1_ERROR_ISR
;;		_I2C1_ISR
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
psect	intentry
	file	"mcc_generated_files/system/src/interrupt.c"
	line	57
	
_INTERRUPT_InterruptManager:	
;incstack = 0
	callstack 5
	bsf int$flags,0 ;set compiler interrupt flag (level 1)
; Regs used in _INTERRUPT_InterruptManager: [wreg-fsr1h+status,2+status,0+pclath+cstack]
psect	intentry
	pagesel	$
	global ___int_sp
	movlw low(___int_sp)
	movwf fsr1l
	movlw high(___int_sp)
	movwf fsr1h
	line	60
	
i1l3527:	
;mcc_generated_files/system/src/interrupt.c: 60:     if(INTCONbits.PEIE == 1)
	btfss	(11),6	;volatile
	goto	u235_21
	goto	u235_20
u235_21:
	goto	i1l329
u235_20:
	line	62
	
i1l3529:	
;mcc_generated_files/system/src/interrupt.c: 61:     {;mcc_generated_files/system/src/interrupt.c: 62:         if(PIE3bits.BCL1IE == 1 && PIR3bits.BCL1IF == 1)
	movlb 14	; select bank14
	btfss	(1817)^0700h,1	;volatile
	goto	u236_21
	goto	u236_20
u236_21:
	goto	i1l324
u236_20:
	
i1l3531:	
	btfss	(1807)^0700h,1	;volatile
	goto	u237_21
	goto	u237_20
u237_21:
	goto	i1l324
u237_20:
	line	64
	
i1l3533:	
;mcc_generated_files/system/src/interrupt.c: 63:         {;mcc_generated_files/system/src/interrupt.c: 64:             I2C1_ERROR_ISR();
	fcall	_I2C1_ERROR_ISR
	line	65
;mcc_generated_files/system/src/interrupt.c: 65:         }
	goto	i1l329
	line	66
;mcc_generated_files/system/src/interrupt.c: 66:         else if(PIE3bits.SSP1IE == 1 && PIR3bits.SSP1IF == 1)
	
i1l324:	
	btfss	(1817)^0700h,0	;volatile
	goto	u238_21
	goto	u238_20
u238_21:
	goto	i1l329
u238_20:
	
i1l3535:	
	btfss	(1807)^0700h,0	;volatile
	goto	u239_21
	goto	u239_20
u239_21:
	goto	i1l329
u239_20:
	line	68
	
i1l3537:	
;mcc_generated_files/system/src/interrupt.c: 67:         {;mcc_generated_files/system/src/interrupt.c: 68:             I2C1_ISR();
	fcall	_I2C1_ISR
	line	79
;mcc_generated_files/system/src/interrupt.c: 69:         }
	
i1l329:	
	bcf int$flags,0 ;clear compiler interrupt flag (level 1)
	retfie
	callstack 0
GLOBAL	__end_of_INTERRUPT_InterruptManager
	__end_of_INTERRUPT_InterruptManager:
	signat	_INTERRUPT_InterruptManager,89
	global	_I2C1_ISR

;; *************** function _I2C1_ISR *****************
;; Defined at:
;;		line 189 in file "mcc_generated_files/i2c_host/src/mssp1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_I2C1_EventHandler
;; This function is called by:
;;		_INTERRUPT_InterruptManager
;; This function uses a non-reentrant model
;;
psect	text43,local,class=CODE,delta=2,merge=1,group=0
	file	"mcc_generated_files/i2c_host/src/mssp1.c"
	line	189
global __ptext43
__ptext43:	;psect for function _I2C1_ISR
psect	text43
	file	"mcc_generated_files/i2c_host/src/mssp1.c"
	line	189
	
_I2C1_ISR:	
;incstack = 0
	callstack 7
; Regs used in _I2C1_ISR: [wreg-fsr1h+status,2+status,0+pclath+cstack]
	line	191
	
i1l3263:	
;mcc_generated_files/i2c_host/src/mssp1.c: 191:     I2C1_EventHandler();
	fcall	_I2C1_EventHandler
	line	192
	
i1l103:	
	return
	callstack 0
GLOBAL	__end_of_I2C1_ISR
	__end_of_I2C1_ISR:
	signat	_I2C1_ISR,89
	global	_I2C1_EventHandler

;; *************** function _I2C1_EventHandler *****************
;; Defined at:
;;		line 227 in file "mcc_generated_files/i2c_host/src/mssp1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_I2C1_Close
;;		_I2C1_EVENT_ERROR
;;		_I2C1_EVENT_IDLE
;;		_I2C1_EVENT_NACK
;;		_I2C1_EVENT_RESET
;;		_I2C1_EVENT_RX
;;		_I2C1_EVENT_SEND_RD_ADDR
;;		_I2C1_EVENT_SEND_WR_ADDR
;;		_I2C1_EVENT_STOP
;;		_I2C1_EVENT_TX
;; This function is called by:
;;		_I2C1_ISR
;; This function uses a non-reentrant model
;;
psect	text44,local,class=CODE,delta=2,merge=1,group=0
	line	227
global __ptext44
__ptext44:	;psect for function _I2C1_EventHandler
psect	text44
	file	"mcc_generated_files/i2c_host/src/mssp1.c"
	line	227
	
_I2C1_EventHandler:	
;incstack = 0
	callstack 7
; Regs used in _I2C1_EventHandler: [wreg-fsr1h+status,2+status,0+pclath+cstack]
	line	229
	
i1l3103:	
;mcc_generated_files/i2c_host/src/mssp1.c: 229:     PIR3bits.SSP1IF = 0;
	movlb 14	; select bank14
	bcf	(1807)^0700h,0	;volatile
	line	230
;mcc_generated_files/i2c_host/src/mssp1.c: 230:     if (0U != SSP1STATbits.P)
	movlb 3	; select bank3
	btfss	(399)^0180h,4	;volatile
	goto	u206_21
	goto	u206_20
u206_21:
	goto	i1l118
u206_20:
	line	232
	
i1l3105:	
;mcc_generated_files/i2c_host/src/mssp1.c: 231:     {;mcc_generated_files/i2c_host/src/mssp1.c: 232:         I2C1_Close();
	fcall	_I2C1_Close
	line	233
;mcc_generated_files/i2c_host/src/mssp1.c: 233:     }
	goto	i1l3115
	line	234
;mcc_generated_files/i2c_host/src/mssp1.c: 234:     else
	
i1l118:	
	line	236
;mcc_generated_files/i2c_host/src/mssp1.c: 235:     {;mcc_generated_files/i2c_host/src/mssp1.c: 236:         if ((SSP1STATbits.D_nA == 0U) && (SSP1CON2bits.ACKSTAT == 1U))
	btfsc	(399)^0180h,5	;volatile
	goto	u207_21
	goto	u207_20
u207_21:
	goto	i1l120
u207_20:
	
i1l3107:	
	btfss	(401)^0180h,6	;volatile
	goto	u208_21
	goto	u208_20
u208_21:
	goto	i1l120
u208_20:
	line	238
	
i1l3109:	
;mcc_generated_files/i2c_host/src/mssp1.c: 237:         {;mcc_generated_files/i2c_host/src/mssp1.c: 238:             i2c1Status.state = I2C_STATE_NACK;
	movlw	05h
	movlb 0	; select bank0
	movwf	0+(_i2c1Status)+0Dh	;volatile
	line	239
;mcc_generated_files/i2c_host/src/mssp1.c: 239:             i2c1Status.errorState = I2C_ERROR_ADDR_NACK;
	movlw	01h
	movwf	0+(_i2c1Status)+0Ch	;volatile
	line	240
;mcc_generated_files/i2c_host/src/mssp1.c: 240:         }
	goto	i1l3115
	line	241
;mcc_generated_files/i2c_host/src/mssp1.c: 241:         else if ((SSP1STATbits.D_nA == 1U) && (SSP1CON2bits.ACKSTAT == 1U))
	
i1l120:	
	btfss	(399)^0180h,5	;volatile
	goto	u209_21
	goto	u209_20
u209_21:
	goto	i1l3115
u209_20:
	
i1l3111:	
	btfss	(401)^0180h,6	;volatile
	goto	u210_21
	goto	u210_20
u210_21:
	goto	i1l3115
u210_20:
	line	243
	
i1l3113:	
;mcc_generated_files/i2c_host/src/mssp1.c: 242:         {;mcc_generated_files/i2c_host/src/mssp1.c: 243:             i2c1Status.state = I2C_STATE_NACK;
	movlw	05h
	movlb 0	; select bank0
	movwf	0+(_i2c1Status)+0Dh	;volatile
	line	244
;mcc_generated_files/i2c_host/src/mssp1.c: 244:             i2c1Status.errorState = I2C_ERROR_DATA_NACK;
	movlw	02h
	movwf	0+(_i2c1Status)+0Ch	;volatile
	line	252
;mcc_generated_files/i2c_host/src/mssp1.c: 245:         }
	
i1l3115:	
;mcc_generated_files/i2c_host/src/mssp1.c: 252:     i2c1Status.state = i2c1_eventTable[i2c1Status.state]();
	movlb 0	; select bank0
	movf	0+(_i2c1Status)+0Dh,w	;volatile
	movwf	(??_I2C1_EventHandler)
	clrf	(??_I2C1_EventHandler+1)
	lslf	(??_I2C1_EventHandler),f
	rlf	(??_I2C1_EventHandler+1),f
	movlw	low(_i2c1_eventTable)
	addwf	(0+(??_I2C1_EventHandler)),w
	movwf	fsr0l
	movlw	high(_i2c1_eventTable)
	addwfc	(1+(??_I2C1_EventHandler)),w
	iorlw	0x80
	movwf	fsr0h
	moviw	[1]fsr0
	movwf	pclath
	moviw	[0]fsr0
	callw
	pagesel	$
	movlb 0	; select bank0
	movwf	0+(_i2c1Status)+0Dh	;volatile
	line	253
	
i1l124:	
	return
	callstack 0
GLOBAL	__end_of_I2C1_EventHandler
	__end_of_I2C1_EventHandler:
	signat	_I2C1_EventHandler,89
	global	_I2C1_ERROR_ISR

;; *************** function _I2C1_ERROR_ISR *****************
;; Defined at:
;;		line 194 in file "mcc_generated_files/i2c_host/src/mssp1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_I2C1_ErrorEventHandler
;; This function is called by:
;;		_INTERRUPT_InterruptManager
;; This function uses a non-reentrant model
;;
psect	text45,local,class=CODE,delta=2,merge=1,group=0
	line	194
global __ptext45
__ptext45:	;psect for function _I2C1_ERROR_ISR
psect	text45
	file	"mcc_generated_files/i2c_host/src/mssp1.c"
	line	194
	
_I2C1_ERROR_ISR:	
;incstack = 0
	callstack 5
; Regs used in _I2C1_ERROR_ISR: [wreg-fsr1h+status,2+status,0+pclath+cstack]
	line	196
	
i1l3265:	
;mcc_generated_files/i2c_host/src/mssp1.c: 196:     I2C1_ErrorEventHandler();
	fcall	_I2C1_ErrorEventHandler
	line	197
	
i1l106:	
	return
	callstack 0
GLOBAL	__end_of_I2C1_ERROR_ISR
	__end_of_I2C1_ERROR_ISR:
	signat	_I2C1_ERROR_ISR,89
	global	_I2C1_ErrorEventHandler

;; *************** function _I2C1_ErrorEventHandler *****************
;; Defined at:
;;		line 255 in file "mcc_generated_files/i2c_host/src/mssp1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_I2C1_EVENT_ERROR
;;		_I2C1_EVENT_IDLE
;;		_I2C1_EVENT_NACK
;;		_I2C1_EVENT_RESET
;;		_I2C1_EVENT_RX
;;		_I2C1_EVENT_SEND_RD_ADDR
;;		_I2C1_EVENT_SEND_WR_ADDR
;;		_I2C1_EVENT_STOP
;;		_I2C1_EVENT_TX
;; This function is called by:
;;		_I2C1_ERROR_ISR
;; This function uses a non-reentrant model
;;
psect	text46,local,class=CODE,delta=2,merge=1,group=0
	line	255
global __ptext46
__ptext46:	;psect for function _I2C1_ErrorEventHandler
psect	text46
	file	"mcc_generated_files/i2c_host/src/mssp1.c"
	line	255
	
_I2C1_ErrorEventHandler:	
;incstack = 0
	callstack 5
; Regs used in _I2C1_ErrorEventHandler: [wreg-fsr1h+status,2+status,0+pclath+cstack]
	line	257
	
i1l3117:	
;mcc_generated_files/i2c_host/src/mssp1.c: 257:     i2c1Status.state = I2C_STATE_ERROR;
	movlw	06h
	movlb 0	; select bank0
	movwf	0+(_i2c1Status)+0Dh	;volatile
	line	258
;mcc_generated_files/i2c_host/src/mssp1.c: 258:     i2c1Status.errorState = I2C_ERROR_BUS_COLLISION;
	movlw	03h
	movwf	0+(_i2c1Status)+0Ch	;volatile
	line	259
;mcc_generated_files/i2c_host/src/mssp1.c: 259:     PIR3bits.BCL1IF = 0;
	movlb 14	; select bank14
	bcf	(1807)^0700h,1	;volatile
	line	260
	
i1l3119:	
;mcc_generated_files/i2c_host/src/mssp1.c: 261:     I2C1_Callback();
	movlb 0	; select bank0
	movf	0+(_i2c1Status)+0Dh,w	;volatile
	movwf	(??_I2C1_ErrorEventHandler)
	clrf	(??_I2C1_ErrorEventHandler+1)
	lslf	(??_I2C1_ErrorEventHandler),f
	rlf	(??_I2C1_ErrorEventHandler+1),f
	movlw	low(_i2c1_eventTable)
	addwf	(0+(??_I2C1_ErrorEventHandler)),w
	movwf	fsr0l
	movlw	high(_i2c1_eventTable)
	addwfc	(1+(??_I2C1_ErrorEventHandler)),w
	iorlw	0x80
	movwf	fsr0h
	moviw	[1]fsr0
	movwf	pclath
	moviw	[0]fsr0
	callw
	pagesel	$
	movlb 0	; select bank0
	movwf	0+(_i2c1Status)+0Dh	;volatile
	line	262
	
i1l127:	
	return
	callstack 0
GLOBAL	__end_of_I2C1_ErrorEventHandler
	__end_of_I2C1_ErrorEventHandler:
	signat	_I2C1_ErrorEventHandler,89
	global	_I2C1_EVENT_TX
	global	_I2C1_EVENT_IDLE
	global	_I2C1_EVENT_SEND_RD_ADDR
	global	_I2C1_EVENT_SEND_WR_ADDR
	global	_I2C1_EVENT_RX
	global	_I2C1_EVENT_NACK
	global	_I2C1_EVENT_ERROR
	global	_I2C1_EVENT_STOP
	global	_I2C1_EVENT_RESET

;; *************** function _I2C1_EVENT_RESET *****************
;; Defined at:
;;		line 365 in file "mcc_generated_files/i2c_host/src/mssp1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      enum E7741
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_I2C1_EVENT_ERROR
;;		_I2C1_EventHandler
;;		_I2C1_ErrorEventHandler
;; This function uses a non-reentrant model
;;
psect	text47,local,class=CODE,delta=2,merge=1,group=0
	line	365
global __ptext47
__ptext47:	;psect for function _I2C1_EVENT_RESET
psect	text47
	file	"mcc_generated_files/i2c_host/src/mssp1.c"
	line	365
	
_I2C1_EVENT_RESET:	
;incstack = 0
	callstack 6
; Regs used in _I2C1_EVENT_RESET: [wreg+status,2]
	line	367
	
i1l2633:	
;mcc_generated_files/i2c_host/src/mssp1.c: 367:     SSP1CON1bits.SSPEN = 0;
	movlb 3	; select bank3
	bcf	(400)^0180h,5	;volatile
	line	368
;mcc_generated_files/i2c_host/src/mssp1.c: 368:     SSP1CON1bits.SSPEN = 1;
	bsf	(400)^0180h,5	;volatile
	line	369
	
i1l2635:	
;mcc_generated_files/i2c_host/src/mssp1.c: 369:     i2c1Status.busy = 0;
	movlb 0	; select bank0
	clrf	(_i2c1Status)	;volatile
	line	370
	
i1l2637:	
;mcc_generated_files/i2c_host/src/mssp1.c: 370:     return I2C_STATE_IDLE;
	movlw	low(0)
	line	371
	
i1l163:	
	return
	callstack 0
GLOBAL	__end_of_I2C1_EVENT_RESET
	__end_of_I2C1_EVENT_RESET:
	signat	_I2C1_EVENT_RESET,89

;; *************** function _I2C1_EVENT_STOP *****************
;; Defined at:
;;		line 358 in file "mcc_generated_files/i2c_host/src/mssp1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      enum E7741
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		_I2C1_Close
;; This function is called by:
;;		_I2C1_EVENT_TX
;;		_I2C1_EVENT_NACK
;;		_I2C1_EventHandler
;;		_I2C1_ErrorEventHandler
;; This function uses a non-reentrant model
;;
psect	text48,local,class=CODE,delta=2,merge=1,group=0
	line	358
global __ptext48
__ptext48:	;psect for function _I2C1_EVENT_STOP
psect	text48
	file	"mcc_generated_files/i2c_host/src/mssp1.c"
	line	358
	
_I2C1_EVENT_STOP:	
;incstack = 0
	callstack 6
; Regs used in _I2C1_EVENT_STOP: [wreg+status,2+status,0+pclath+cstack]
	line	360
	
i1l2625:	
;mcc_generated_files/i2c_host/src/mssp1.c: 360:     SSP1CON2bits.PEN = 1;
	movlb 3	; select bank3
	bsf	(401)^0180h,2	;volatile
	line	361
	
i1l2627:	
;mcc_generated_files/i2c_host/src/mssp1.c: 361:     I2C1_Close();
	fcall	_I2C1_Close
	line	362
	
i1l2629:	
;mcc_generated_files/i2c_host/src/mssp1.c: 362:     return I2C_STATE_IDLE;
	movlw	low(0)
	line	363
	
i1l160:	
	return
	callstack 0
GLOBAL	__end_of_I2C1_EVENT_STOP
	__end_of_I2C1_EVENT_STOP:
	signat	_I2C1_EVENT_STOP,89

;; *************** function _I2C1_EVENT_ERROR *****************
;; Defined at:
;;		line 351 in file "mcc_generated_files/i2c_host/src/mssp1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  retEventStat    1    0[COMMON] enum E7741
;; Return value:  Size  Location     Type
;;                  1    wreg      enum E7741
;; Registers used:
;;		wreg, status,2, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		_I2C1_EVENT_RESET
;; This function is called by:
;;		_I2C1_EventHandler
;;		_I2C1_ErrorEventHandler
;; This function uses a non-reentrant model
;;
psect	text49,local,class=CODE,delta=2,merge=1,group=0
	line	351
global __ptext49
__ptext49:	;psect for function _I2C1_EVENT_ERROR
psect	text49
	file	"mcc_generated_files/i2c_host/src/mssp1.c"
	line	351
	
_I2C1_EVENT_ERROR:	
;incstack = 0
	callstack 7
; Regs used in _I2C1_EVENT_ERROR: [wreg+status,2+pclath+cstack]
	line	353
	
i1l2887:	
	line	354
	
i1l2889:	
;mcc_generated_files/i2c_host/src/mssp1.c: 354:     retEventState = I2C1_EVENT_RESET();
	fcall	_I2C1_EVENT_RESET
	movwf	(I2C1_EVENT_ERROR@retEventState)
	line	355
	
i1l2891:	
;mcc_generated_files/i2c_host/src/mssp1.c: 355:     return retEventState;
	movf	(I2C1_EVENT_ERROR@retEventState),w
	line	356
	
i1l157:	
	return
	callstack 0
GLOBAL	__end_of_I2C1_EVENT_ERROR
	__end_of_I2C1_EVENT_ERROR:
	signat	_I2C1_EVENT_ERROR,89

;; *************** function _I2C1_EVENT_NACK *****************
;; Defined at:
;;		line 344 in file "mcc_generated_files/i2c_host/src/mssp1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  retEventStat    1    0[COMMON] enum E7741
;; Return value:  Size  Location     Type
;;                  1    wreg      enum E7741
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		_I2C1_EVENT_STOP
;; This function is called by:
;;		_I2C1_EventHandler
;;		_I2C1_ErrorEventHandler
;; This function uses a non-reentrant model
;;
psect	text50,local,class=CODE,delta=2,merge=1,group=0
	line	344
global __ptext50
__ptext50:	;psect for function _I2C1_EVENT_NACK
psect	text50
	file	"mcc_generated_files/i2c_host/src/mssp1.c"
	line	344
	
_I2C1_EVENT_NACK:	
;incstack = 0
	callstack 7
; Regs used in _I2C1_EVENT_NACK: [wreg+status,2+status,0+pclath+cstack]
	line	346
	
i1l2879:	
	line	347
	
i1l2881:	
;mcc_generated_files/i2c_host/src/mssp1.c: 347:     retEventState = I2C1_EVENT_STOP();
	fcall	_I2C1_EVENT_STOP
	movwf	(I2C1_EVENT_NACK@retEventState)
	line	348
	
i1l2883:	
;mcc_generated_files/i2c_host/src/mssp1.c: 348:     return retEventState;
	movf	(I2C1_EVENT_NACK@retEventState),w
	line	349
	
i1l154:	
	return
	callstack 0
GLOBAL	__end_of_I2C1_EVENT_NACK
	__end_of_I2C1_EVENT_NACK:
	signat	_I2C1_EVENT_NACK,89

;; *************** function _I2C1_EVENT_RX *****************
;; Defined at:
;;		line 309 in file "mcc_generated_files/i2c_host/src/mssp1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  retEventStat    1    0[COMMON] enum E7741
;; Return value:  Size  Location     Type
;;                  1    wreg      enum E7741
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_I2C1_EventHandler
;;		_I2C1_ErrorEventHandler
;; This function uses a non-reentrant model
;;
psect	text51,local,class=CODE,delta=2,merge=1,group=0
	line	309
global __ptext51
__ptext51:	;psect for function _I2C1_EVENT_RX
psect	text51
	file	"mcc_generated_files/i2c_host/src/mssp1.c"
	line	309
	
_I2C1_EVENT_RX:	
;incstack = 0
	callstack 7
; Regs used in _I2C1_EVENT_RX: [wreg+fsr1l+fsr1h+status,2+status,0]
	line	311
	
i1l2861:	
;mcc_generated_files/i2c_host/src/mssp1.c: 311:     i2c_host_event_states_t retEventState = I2C_STATE_RX;
	movlw	04h
	movwf	(I2C1_EVENT_RX@retEventState)
	line	313
;mcc_generated_files/i2c_host/src/mssp1.c: 313:     if (1U == SSP1STATbits.BF)
	movlb 3	; select bank3
	btfss	(399)^0180h,0	;volatile
	goto	u180_21
	goto	u180_20
u180_21:
	goto	i1l146
u180_20:
	line	315
	
i1l2863:	
;mcc_generated_files/i2c_host/src/mssp1.c: 314:     {;mcc_generated_files/i2c_host/src/mssp1.c: 315:         if (i2c1Status.readLength > 0U)
	movlb 0	; select bank0
	movf	(0+(_i2c1Status)+09h),w	;volatile
iorwf	(1+(_i2c1Status)+09h),w	;volatile
	btfsc	status,2
	goto	u181_21
	goto	u181_20
u181_21:
	goto	i1l2871
u181_20:
	line	317
	
i1l2865:	
;mcc_generated_files/i2c_host/src/mssp1.c: 316:         {;mcc_generated_files/i2c_host/src/mssp1.c: 317:             *i2c1Status.readPtr = SSP1BUF;
	movf	0+(_i2c1Status)+07h,w	;volatile
	movwf	fsr1l
	movf	1+(_i2c1Status)+07h,w	;volatile
	movwf	fsr1h

	movlb 3	; select bank3
	movf	(396)^0180h,w	;volatile
	movwf	indf1
	line	318
	
i1l2867:	
;mcc_generated_files/i2c_host/src/mssp1.c: 318:             i2c1Status.readPtr++;
	movlw	01h
	movlb 0	; select bank0
	addwf	0+(_i2c1Status)+07h,f	;volatile
	movlw	0
	addwfc	1+(_i2c1Status)+07h,f	;volatile
	line	319
	
i1l2869:	
;mcc_generated_files/i2c_host/src/mssp1.c: 319:             i2c1Status.readLength--;
	movlw	01h
	subwf	0+(_i2c1Status)+09h,f	;volatile
	movlw	0
	subwfb	1+(_i2c1Status)+09h,f	;volatile
	line	323
	
i1l2871:	
;mcc_generated_files/i2c_host/src/mssp1.c: 323:         if (i2c1Status.readLength > 0U)
	movf	(0+(_i2c1Status)+09h),w	;volatile
iorwf	(1+(_i2c1Status)+09h),w	;volatile
	btfsc	status,2
	goto	u182_21
	goto	u182_20
u182_21:
	goto	i1l148
u182_20:
	line	325
	
i1l2873:	
;mcc_generated_files/i2c_host/src/mssp1.c: 324:         {;mcc_generated_files/i2c_host/src/mssp1.c: 325:             SSP1CON2bits.ACKDT = 0;
	movlb 3	; select bank3
	bcf	(401)^0180h,5	;volatile
	line	326
;mcc_generated_files/i2c_host/src/mssp1.c: 326:             SSP1CON2bits.ACKEN = 1;
	bsf	(401)^0180h,4	;volatile
	line	327
;mcc_generated_files/i2c_host/src/mssp1.c: 327:         }
	goto	i1l2875
	line	328
;mcc_generated_files/i2c_host/src/mssp1.c: 328:         else
	
i1l148:	
	line	330
;mcc_generated_files/i2c_host/src/mssp1.c: 329:         {;mcc_generated_files/i2c_host/src/mssp1.c: 330:             SSP1CON2bits.RSEN = 0;
	movlb 3	; select bank3
	bcf	(401)^0180h,1	;volatile
	line	331
;mcc_generated_files/i2c_host/src/mssp1.c: 331:             SSP1CON2bits.ACKDT = 1;
	bsf	(401)^0180h,5	;volatile
	line	332
;mcc_generated_files/i2c_host/src/mssp1.c: 332:             SSP1CON2bits.ACKEN = 1;
	bsf	(401)^0180h,4	;volatile
	line	333
;mcc_generated_files/i2c_host/src/mssp1.c: 333:             retEventState = I2C_STATE_STOP;
	movlw	07h
	movwf	(I2C1_EVENT_RX@retEventState)
	goto	i1l2875
	line	337
;mcc_generated_files/i2c_host/src/mssp1.c: 337:     else
	
i1l146:	
	line	339
;mcc_generated_files/i2c_host/src/mssp1.c: 338:     {;mcc_generated_files/i2c_host/src/mssp1.c: 339:         SSP1CON2bits.RCEN = 1;
	bsf	(401)^0180h,3	;volatile
	line	341
	
i1l2875:	
;mcc_generated_files/i2c_host/src/mssp1.c: 341:     return retEventState;
	movf	(I2C1_EVENT_RX@retEventState),w
	line	342
	
i1l151:	
	return
	callstack 0
GLOBAL	__end_of_I2C1_EVENT_RX
	__end_of_I2C1_EVENT_RX:
	signat	_I2C1_EVENT_RX,89

;; *************** function _I2C1_EVENT_SEND_WR_ADDR *****************
;; Defined at:
;;		line 276 in file "mcc_generated_files/i2c_host/src/mssp1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      enum E7741
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_I2C1_EventHandler
;;		_I2C1_ErrorEventHandler
;; This function uses a non-reentrant model
;;
psect	text52,local,class=CODE,delta=2,merge=1,group=0
	line	276
global __ptext52
__ptext52:	;psect for function _I2C1_EVENT_SEND_WR_ADDR
psect	text52
	file	"mcc_generated_files/i2c_host/src/mssp1.c"
	line	276
	
_I2C1_EVENT_SEND_WR_ADDR:	
;incstack = 0
	callstack 7
; Regs used in _I2C1_EVENT_SEND_WR_ADDR: [wreg+status,2+status,0]
	line	278
	
i1l2829:	
;mcc_generated_files/i2c_host/src/mssp1.c: 278:     SSP1BUF = ((uint8_t) (i2c1Status.address << 1));
	movlb 0	; select bank0
	lslf	0+(_i2c1Status)+01h,w	;volatile
	movlb 3	; select bank3
	movwf	(396)^0180h	;volatile
	line	279
	
i1l2831:	
;mcc_generated_files/i2c_host/src/mssp1.c: 279:     return I2C_STATE_TX;
	movlw	low(03h)
	line	280
	
i1l136:	
	return
	callstack 0
GLOBAL	__end_of_I2C1_EVENT_SEND_WR_ADDR
	__end_of_I2C1_EVENT_SEND_WR_ADDR:
	signat	_I2C1_EVENT_SEND_WR_ADDR,89

;; *************** function _I2C1_EVENT_SEND_RD_ADDR *****************
;; Defined at:
;;		line 270 in file "mcc_generated_files/i2c_host/src/mssp1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      enum E7741
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_I2C1_EventHandler
;;		_I2C1_ErrorEventHandler
;; This function uses a non-reentrant model
;;
psect	text53,local,class=CODE,delta=2,merge=1,group=0
	line	270
global __ptext53
__ptext53:	;psect for function _I2C1_EVENT_SEND_RD_ADDR
psect	text53
	file	"mcc_generated_files/i2c_host/src/mssp1.c"
	line	270
	
_I2C1_EVENT_SEND_RD_ADDR:	
;incstack = 0
	callstack 7
; Regs used in _I2C1_EVENT_SEND_RD_ADDR: [wreg+status,2+status,0]
	line	272
	
i1l2823:	
;mcc_generated_files/i2c_host/src/mssp1.c: 272:     SSP1BUF = ((uint8_t) ((i2c1Status.address << 1) | 1U));
	setc
	movlb 0	; select bank0
	rlf	0+(_i2c1Status)+01h,w	;volatile
	movlb 3	; select bank3
	movwf	(396)^0180h	;volatile
	line	273
	
i1l2825:	
;mcc_generated_files/i2c_host/src/mssp1.c: 273:     return I2C_STATE_RX;
	movlw	low(04h)
	line	274
	
i1l133:	
	return
	callstack 0
GLOBAL	__end_of_I2C1_EVENT_SEND_RD_ADDR
	__end_of_I2C1_EVENT_SEND_RD_ADDR:
	signat	_I2C1_EVENT_SEND_RD_ADDR,89

;; *************** function _I2C1_EVENT_IDLE *****************
;; Defined at:
;;		line 264 in file "mcc_generated_files/i2c_host/src/mssp1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      enum E7741
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_I2C1_EventHandler
;;		_I2C1_ErrorEventHandler
;; This function uses a non-reentrant model
;;
psect	text54,local,class=CODE,delta=2,merge=1,group=0
	line	264
global __ptext54
__ptext54:	;psect for function _I2C1_EVENT_IDLE
psect	text54
	file	"mcc_generated_files/i2c_host/src/mssp1.c"
	line	264
	
_I2C1_EVENT_IDLE:	
;incstack = 0
	callstack 7
; Regs used in _I2C1_EVENT_IDLE: [wreg+status,2]
	line	266
	
i1l2817:	
;mcc_generated_files/i2c_host/src/mssp1.c: 266:     i2c1Status.busy = 0;
	movlb 0	; select bank0
	clrf	(_i2c1Status)	;volatile
	line	267
	
i1l2819:	
;mcc_generated_files/i2c_host/src/mssp1.c: 267:     return I2C_STATE_RESET;
	movlw	low(08h)
	line	268
	
i1l130:	
	return
	callstack 0
GLOBAL	__end_of_I2C1_EVENT_IDLE
	__end_of_I2C1_EVENT_IDLE:
	signat	_I2C1_EVENT_IDLE,89

;; *************** function _I2C1_EVENT_TX *****************
;; Defined at:
;;		line 282 in file "mcc_generated_files/i2c_host/src/mssp1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  retEventStat    1    0[COMMON] enum E7741
;; Return value:  Size  Location     Type
;;                  1    wreg      enum E7741
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		_I2C1_EVENT_STOP
;; This function is called by:
;;		_I2C1_EventHandler
;;		_I2C1_ErrorEventHandler
;; This function uses a non-reentrant model
;;
psect	text55,local,class=CODE,delta=2,merge=1,group=0
	line	282
global __ptext55
__ptext55:	;psect for function _I2C1_EVENT_TX
psect	text55
	file	"mcc_generated_files/i2c_host/src/mssp1.c"
	line	282
	
_I2C1_EVENT_TX:	
;incstack = 0
	callstack 7
; Regs used in _I2C1_EVENT_TX: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	284
	
i1l2835:	
	line	285
	
i1l2837:	
;mcc_generated_files/i2c_host/src/mssp1.c: 285:     if (0U != i2c1Status.writeLength)
	movlb 0	; select bank0
	movf	(0+(_i2c1Status)+05h),w	;volatile
iorwf	(1+(_i2c1Status)+05h),w	;volatile
	btfsc	status,2
	goto	u178_21
	goto	u178_20
u178_21:
	goto	i1l2847
u178_20:
	line	287
	
i1l2839:	
;mcc_generated_files/i2c_host/src/mssp1.c: 286:     {;mcc_generated_files/i2c_host/src/mssp1.c: 287:         i2c1Status.writeLength--;
	movlw	01h
	subwf	0+(_i2c1Status)+05h,f	;volatile
	movlw	0
	subwfb	1+(_i2c1Status)+05h,f	;volatile
	line	288
	
i1l2841:	
;mcc_generated_files/i2c_host/src/mssp1.c: 288:         SSP1BUF = *i2c1Status.writePtr;
	movf	0+(_i2c1Status)+03h,w	;volatile
	movwf	fsr1l
	movf	1+(_i2c1Status)+03h,w	;volatile
	movwf	fsr1h

	movf	indf1,w
	movlb 3	; select bank3
	movwf	(396)^0180h	;volatile
	line	289
	
i1l2843:	
;mcc_generated_files/i2c_host/src/mssp1.c: 289:         i2c1Status.writePtr++;
	movlw	01h
	movlb 0	; select bank0
	addwf	0+(_i2c1Status)+03h,f	;volatile
	movlw	0
	addwfc	1+(_i2c1Status)+03h,f	;volatile
	line	290
	
i1l2845:	
;mcc_generated_files/i2c_host/src/mssp1.c: 290:         retEventState = I2C_STATE_TX;
	movlw	03h
	movwf	(I2C1_EVENT_TX@retEventState)
	line	291
;mcc_generated_files/i2c_host/src/mssp1.c: 291:     }
	goto	i1l2857
	line	294
	
i1l2847:	
;mcc_generated_files/i2c_host/src/mssp1.c: 293:     {;mcc_generated_files/i2c_host/src/mssp1.c: 294:         if (0U != i2c1Status.switchToRead)
	movf	(0+(_i2c1Status)+0Bh),w	;volatile
	btfsc	status,2
	goto	u179_21
	goto	u179_20
u179_21:
	goto	i1l2855
u179_20:
	line	296
	
i1l2849:	
;mcc_generated_files/i2c_host/src/mssp1.c: 295:         {;mcc_generated_files/i2c_host/src/mssp1.c: 296:             i2c1Status.switchToRead = 0;
	clrf	0+(_i2c1Status)+0Bh	;volatile
	line	297
	
i1l2851:	
;mcc_generated_files/i2c_host/src/mssp1.c: 297:             SSP1CON2bits.RSEN = 1;
	movlb 3	; select bank3
	bsf	(401)^0180h,1	;volatile
	line	298
	
i1l2853:	
;mcc_generated_files/i2c_host/src/mssp1.c: 298:             retEventState = I2C_STATE_SEND_RD_ADDR;
	movlw	01h
	movwf	(I2C1_EVENT_TX@retEventState)
	line	299
;mcc_generated_files/i2c_host/src/mssp1.c: 299:         }
	goto	i1l2857
	line	302
	
i1l2855:	
;mcc_generated_files/i2c_host/src/mssp1.c: 301:         {;mcc_generated_files/i2c_host/src/mssp1.c: 302:             retEventState = I2C1_EVENT_STOP();
	fcall	_I2C1_EVENT_STOP
	movwf	(I2C1_EVENT_TX@retEventState)
	line	306
	
i1l2857:	
;mcc_generated_files/i2c_host/src/mssp1.c: 306:     return retEventState;
	movf	(I2C1_EVENT_TX@retEventState),w
	line	307
	
i1l143:	
	return
	callstack 0
GLOBAL	__end_of_I2C1_EVENT_TX
	__end_of_I2C1_EVENT_TX:
	signat	_I2C1_EVENT_TX,89
	global	_I2C1_Close

;; *************** function _I2C1_Close *****************
;; Defined at:
;;		line 214 in file "mcc_generated_files/i2c_host/src/mssp1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_I2C1_EventHandler
;;		_I2C1_EVENT_STOP
;; This function uses a non-reentrant model
;;
psect	text56,local,class=CODE,delta=2,merge=1,group=0
	line	214
global __ptext56
__ptext56:	;psect for function _I2C1_Close
psect	text56
	file	"mcc_generated_files/i2c_host/src/mssp1.c"
	line	214
	
_I2C1_Close:	
;incstack = 0
	callstack 5
; Regs used in _I2C1_Close: [status,2]
	line	216
	
i1l2559:	
;mcc_generated_files/i2c_host/src/mssp1.c: 216:     i2c1Status.busy = 0;
	movlb 0	; select bank0
	clrf	(_i2c1Status)	;volatile
	line	217
	
i1l2561:	
;mcc_generated_files/i2c_host/src/mssp1.c: 217:     i2c1Status.address = 0xFF;
	movlw	0
	movwf	1+(_i2c1Status)+01h	;volatile
	movlw	0FFh
	movwf	0+(_i2c1Status)+01h	;volatile
	line	218
;mcc_generated_files/i2c_host/src/mssp1.c: 218:     i2c1Status.writePtr = ((void*)0);
	clrf	0+(_i2c1Status)+03h	;volatile
	clrf	1+(_i2c1Status)+03h	;volatile
	line	219
;mcc_generated_files/i2c_host/src/mssp1.c: 219:     i2c1Status.readPtr = ((void*)0);
	clrf	0+(_i2c1Status)+07h	;volatile
	clrf	1+(_i2c1Status)+07h	;volatile
	line	220
;mcc_generated_files/i2c_host/src/mssp1.c: 220:     i2c1Status.state = I2C_STATE_IDLE;
	clrf	0+(_i2c1Status)+0Dh	;volatile
	line	221
	
i1l2563:	
;mcc_generated_files/i2c_host/src/mssp1.c: 221:     PIR3bits.SSP1IF = 0;
	movlb 14	; select bank14
	bcf	(1807)^0700h,0	;volatile
	line	222
	
i1l2565:	
;mcc_generated_files/i2c_host/src/mssp1.c: 222:     PIR3bits.BCL1IF = 0;
	bcf	(1807)^0700h,1	;volatile
	line	223
	
i1l2567:	
;mcc_generated_files/i2c_host/src/mssp1.c: 223:     SSP1CON1bits.WCOL = 0;
	movlb 3	; select bank3
	bcf	(400)^0180h,7	;volatile
	line	224
	
i1l2569:	
;mcc_generated_files/i2c_host/src/mssp1.c: 224:     SSP1CON1bits.SSPOV = 0;
	bcf	(400)^0180h,6	;volatile
	line	225
	
i1l115:	
	return
	callstack 0
GLOBAL	__end_of_I2C1_Close
	__end_of_I2C1_Close:
	signat	_I2C1_Close,89
global	___latbits
___latbits	equ	2
	global	btemp
	btemp set 07Eh

	DABS	1,0x7E,2	;btemp
	global	int$flags
	int$flags	set btemp
	global btemp0
	btemp0 set btemp+0
	global btemp1
	btemp1 set btemp+1
	global wtemp0
	wtemp0 set btemp+0
	global wtemp0a
	wtemp0a set btemp+1
	global ttemp0a
	ttemp0a set btemp+1
	global ltemp0a
	ltemp0a set btemp+2
	end
