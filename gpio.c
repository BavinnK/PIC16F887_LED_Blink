/*
 * File:   gpio.c
 * Author: Bavin
 *
 * Created on March 6, 2026, 2:43 AM
 */


#include <xc.h>

void main(void) {
    
#asm
    CBLOCK 0x20 
        COUNTER  
    ENDC
  BSF STATUS,6
  BSF STATUS,5
  BCF ANSELH,4
  BCF STATUS,6
  BSF TRISB,0
  CLRF TRISD
  BCF STATUS,5
  CLRF 0x20

  LOOP:
  BTFSC PORTB,0
  GOTO INC_CNTR
  GOTO LOOP

  INC_CNTR:
  INCF 0x20h,1
  MOVF 0x20h,0
  MOVWF PORTD

  WAIT:
  BTFSS PORTB,0
  GOTO WAIT
  GOTO LOOP  
    
#endasm
    
    return;
}
