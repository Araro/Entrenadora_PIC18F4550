'****************************************************************
'*  Name    : Bluetooth.BAS                                     *
'*  Author  : MecatronicaTec (AraroMeca)                        *
'*  Notice  : Copyright (c) 2016 MecatronicaTec                 *
'*          : All Rights Reserved                               *
'*  Date    : 01/04/2016                                        *
'*  Version : 1.0                                               *
'*  Notes   : Practica sencilla para realizar la comunicacion   *
'*          : entre un dispositivo movil y el PIC               *
'****************************************************************
'SELECCIONO PIC, CLOCK E INICIALIZACIÓN
Device = 18F4550							
Xtal = 48			    				
	
 'UTILIZO BOOTLOADER
 Declare PROTON_START_ADDRESS = $1000 	
 
 DelayMS 150
 
 All_Digital = TRUE

 LCD_DTPin = PORTB.4				'Configuramos LCD
 LCD_RSPin = PORTB.2
 LCD_ENPin = PORTB.3
 LCD_Interface = 4
 LCD_Lines = 2
 LCD_Type = 0
 
 TRISC  = %00000000  				'El puerto C como salidas
 PORTC  = %11111111 				'Inicializamos el puerto C en 1'S
 TRISE  = %00000100				'Configuramos Puerto E como se encuentra en la
 PORTE  = %00000000				'entrenadora

 Hserial_Baud  = 9600				'Configuramos la comunicacion serial para que	
 Hserial_RCSTA = %10010000			'funcione el modulo Bluetooth
 Hserial_TXSTA = %00100000
 Hserial_Clear = On
 
 Dim LED As Byte				'Declaramos algunas variables
 Dim VAR1 As Byte
 Dim CAR As Byte
 DelayMS 100
 
 Cls
 
 Print At 2,1, "ESPERANDO DATOS"	
 
 Principal:
    
    HSerIn 50,TIEMPO,[VAR1]			'Recepcion de datos del modulo bluetooth
    						'a traves de la comunicacion serial
        
    Print At 1,CAR, VAR1
    CAR = CAR + 1
    If CAR > 16 Then CAR = 1
    
    If VAR1 = 20 Then
        High PORTE.1  : Print At 2,1, "LED = Encendido"  
        
    ElseIf VAR1 = 30 Then
        Low PORTE.1 : Print At 2,1, "LED = Apagado   "  
    End If
     
    GoTo Principal
    
TIEMPO:
    CAR = 1
    GoTo Principal
 
End 

 
