'****************************************************************
'*  Name    : Servo Incremento.BAS                              *
'*  Author  : MecatronicaTec (AraroMeca)                        *
'*  Notice  : Copyright (c) 2016 MecatronicaTec                 *
'*          : All Rights Reserved                               *
'*  Date    : 01/04/2016                                        *
'*  Version : 1.0                                               *
'*  Notes   : Practica sencilla para utilizar un servo y que    *
'*          : este incremente poco a poco                       *
'****************************************************************
Device 18F4550      
 Xtal = 48              
 
 Declare PROTON_START_ADDRESS = $1000
 
 DelayMS 150

 All_Digital = TRUE
 
 LCD_DTPin = PORTB.4
 LCD_RSPin = PORTB.2
 LCD_ENPin = PORTB.3
 LCD_Interface = 4
 LCD_Lines = 2
 LCD_Type = 0
 
 

Cls
 
Dim POS As Word
Symbol PIN = PORTA.0

POS = 1350

TRISA = %11111110
TRISB = %11111111
TRISE = %11111111
PORTA = %00000000
PORTB = %00000000
PORTE = %00000000


MAIN:
If PORTE.2 = 0 And POS < 2500 Then  Inc POS 
If PORTE.2 = 1 And POS > 500 Then Dec POS 

Servo PIN , POS

DelayMS 18
GoTo MAIN

End

