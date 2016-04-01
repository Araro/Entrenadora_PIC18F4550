'****************************************************************
'*  Name    : Dos Servos.BAS                                    *
'*  Author  : MecatronicaTec (AraroMeca)                        *
'*  Notice  : Copyright (c) 2016 MecatronicaTec                 *
'*          : All Rights Reserved                               *
'*  Date    : 01/04/2016                                        *
'*  Version : 1.0                                               *
'*  Notes   : Practica sencilla para utilizar un dos servos     *
'*          :                                                   *
'****************************************************************
Device 18F4550      
 Xtal = 48              
 
 Declare PROTON_START_ADDRESS = $1000
 
 DelayMS 150

 All_Digital = TRUE
 
 
Dim GIRO As Word
Dim ALTO As Word
Symbol EJEX = PORTA.0
Symbol ALTURA = PORTA.1

GIRO = 1500
ALTO = 1500

PORTA = 0
PORTD = 0

TRISA = %00000000
TRISD = %11111111


MAIN:
    If PORTD.5 = 0 Then
        GIRO = 1500:ALTO = 1500
    End If
    
    If PORTD.0 = 0 And GIRO < 2500 Then GIRO = GIRO + 2
    
    If PORTD.1 = 0 And GIRO > 500 Then GIRO = GIRO - 2
    
Servo EJEX, GIRO

    If PORTD.2 = 1 And ALTO < 2500 Then ALTO = ALTO +2
    
    If PORTD.3 = 1 And ALTO > 500 Then ALTO = ALTO -2
    
Servo ALTURA, ALTO    
    
DelayMS 18
GoTo MAIN

