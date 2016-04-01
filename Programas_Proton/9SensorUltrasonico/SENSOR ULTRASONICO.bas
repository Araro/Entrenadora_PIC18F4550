'****************************************************************
'*  Name    : Sensor Ultrasonico.BAS                            *
'*  Author  : MecatronicaTec (AraroMeca)                        *
'*  Notice  : Copyright (c) 2016 MecatronicaTec                 *
'*          : All Rights Reserved                               *
'*  Date    : 01/04/2016                                        *
'*  Version : 1.0                                               *
'*  Notes   : Practica sencilla para utilizar un sensor         *
'*          : ultrasonico                                       *
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

Dim TRIG As PORTB.0
Dim ECHO As PORTB.1
Dim RANGO  As Float

DelayMS 500
TRIG = 0

PRINCIPAL:
    PulsOut TRIG,10
    RANGO = PulsIn ECHO,1
    RANGO = (RANGO/58)
    
    Print At 1,1,"DISTANCIA EN cm"
    Print At 2,5,Dec2 RANGO," cm "
    DelayMS 500

GoTo PRINCIPAL
End

