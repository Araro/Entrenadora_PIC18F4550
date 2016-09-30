'****************************************************************
'*  Name    : Servo.BAS                                         *
'*  Author  : MecatronicaTec (AraroMeca)                        *
'*  Notice  : Copyright (c) 2016 MecatronicaTec                 *
'*          : All Rights Reserved                               *
'*  Date    : 01/04/2016                                        *
'*  Version : 1.0                                               *
'*  Notes   : Practica sencilla para utilizar un servo          *
'*          :                                                   *
'****************************************************************
Device 18F4550                        
 Xtal = 48              
 
 Declare PROTON_START_ADDRESS = $1000
 
 DelayMS 150

 All_Digital = TRUE
 
 
Dim POS As Word
Symbol PIN = PORTA.0

POS = 1350

TRISA = %11111110
TRISE = %11111111
PORTA = %00000000
PORTE = %00000000


MAIN:
If PORTE.2 = 0 Then POS = 2350
If PORTE.2 = 1 Then POS = 420

Servo PIN , POS
DelayMS 18
GoTo MAIN


                     
 
