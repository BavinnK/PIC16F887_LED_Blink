/*
 * File:   gpio.c
 * Author: Bavin
 *
 * Created on March 6, 2026, 2:43 AM
 */


#include <xc.h>

void main(void) {
    
    asm("BSF STATUS,6");//RP1=1
    asm("BSF STATUS,5");//RP0=1 now we are in bank3
    asm("BCF ANSELH,4");//make RB0 to digital I/O
    asm("BCF STATUS,6");//RP1=0 now we are in bank1
    asm("BSF TRISB,0");//RB0 is input
    asm("BCF TRISD,4");//RD0 is output
    asm("BCF STATUS,5");//RP0=0 now we are in bank0
    
    asm("LOOP:");
    asm("BTFSC PORTB,0");//is the button pressed? 
    asm("GOTO SET_HIGH");//if yes then jump to SET_HIGH if not skip next instruction
    asm("BCF PORTD,4");//set RD0 to low
    asm("GOTO LOOP");//go back to loop
    
    asm("SET_HIGH:");
    asm("BSF PORTD,4");//set RD0 to high
    asm("GOTO LOOP");
    
    
    return;
}
