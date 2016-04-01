'****************************************************************
'*  Name    : LCD.BAS                                           *
'*  Author  : MecatronicaTec (AraroMeca)                        *
'*  Notice  : Copyright (c) 2016 MecatronicaTec                 *
'*          : All Rights Reserved                               *
'*  Date    : 01/04/2016                                        *
'*  Version : 1.0                                               *
'*  Notes   : Practica sencilla para utilizar una LCD 16x2      *
'*          :                                                   *
'****************************************************************
Device 18F4550      			'Definimos el PIC a utilizar
 Xtal = 20             			'Definimos la velocidad del Cristal
 
 Declare PROTON_START_ADDRESS = $1000 	'Definimos que utilizaremos bootloader
 
 DelayMS 150

 All_Digital = TRUE			'Entradas y salidas digitales
 
 LCD_DTPin = PORTB.4			'Configuracion de la LCD para utilizarla
 LCD_RSPin = PORTB.2			'En la entrenadora
 LCD_ENPin = PORTB.3
 LCD_Interface = 4
 LCD_Lines = 2
 LCD_Type = 0
 

Cls					'Borramos la LCD
 
LAZO:
 
    Print At 1,1,"MECATRONICA TEC"	'Imprimimos en la linea 1, columna 1
    Print At 2,4,"Araro Meca"		'Imprimimos en la linea 2, columna 4
    DelayMS 500				'Retardo de 500 Milisegundos
    Cls					'Borramos la LCD
    DelayMS 500				'Retardo de 500 Milisegundos
    GoTo LAZO				'Ciclo infinito
 
 End                         
 
