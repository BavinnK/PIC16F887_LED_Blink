/*
 * File:   gpio.c
 * Author: Bavin
 *
 * Created on March 6, 2026, 2:43 AM
 */


#include <xc.h>
#pragma config LVP = OFF
#pragma config WDTE = OFF  
#pragma config LVP = OFF   
#pragma config FOSC = INTRC_NOCLKOUT 
void main(void) {
    
#asm
    MAIN_INIT:
        BSF STATUS,6
        BSF STATUS,5  ;we are at bank 3
        CLRF ANSEL
        CLRF ANSELH   ;we will clear all the bits in analog selection we dont want analog
        BCF STATUS,6        
        BSF STATUS,5  ;now we are in bank 1
        BSF TRISB,0   ;we set RB0 as input
        CLRF TRISD    ;we will set every bit on PORTD as output
        BCF STATUS,5  ;we will return to bank 0
        CLRF PORTD   
        CLRF 0x20
               
    MAIN_LOOP:
        BTFSC PORTB,0   ;we will test RB0 if its set then dont skip, if its not set then skip
        CALL INC_NUMBER
        GOTO MAIN_LOOP
                
    INC_NUMBER:
        INCF 0x20,F ;increment the data in 0x20 add
        MOVLW 11
        SUBWF 0x20,W
        BTFSC STATUS,2
        CLRF 0x20       
        CALL DISPLAY
    
    
    WAIT:
        BTFSS PORTB,0
        GOTO MAIN_LOOP
        GOTO WAIT
    
        RETURN 
    
    DISPLAY:
        MOVF 0x20,W
        MOVWF PORTD
        RETURN 
    
     
    
    
    
#endasm
    
    return;
}
