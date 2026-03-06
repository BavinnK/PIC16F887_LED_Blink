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
    asm("BCF TRISD,0");//RD0 is output
    asm("BCF STATUS,5");//RP0=0 now we are in bank0
    
    return;
}
