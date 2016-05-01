'****************************************************************
'*  Name    : Toogle.BAS                                        *
'*  Author  : MecatronicaTec (AraroMeca)                        *
'*  Notice  : Copyright (c) 2012 MecatronicaTec                 *
'*          : All Rights Reserved                               *
'*  Date    : 23/11/2012                                        *
'*  Version : 1.0                                               *
'*  Notes   :                                                   *
'*          :                                                   *
'****************************************************************
Device 18F4550   			                 'Selección del dispositivo a utilizar
Xtal = 20				                     'Se configura el cristal a 20 MHz

Declare PROTON_START_ADDRESS = $1000	     'Se define que se utilizará el bootloader


DelayMS 500				                     'Retardo de 500 Ms para permitir una 
					                         'configuración satisfactoria

All_Digital=TRUE			                 'Se declaran los puertos como digitales

TRISA = %00000000			                 'Configuración de los puertos como salidas
TRISB = %00000000
TRISE = %00000100                            'todo PORTE como salida, menos PORTE.2
PORTE = %00000000			                 'Se inicializan los puertos en ceros
Dim con As Byte
con = 1
 
 Principal:
     If PORTE.2 == 0 And con == 1 Then GoTo AntiA
     If PORTE.2 == 0 And con == 2 Then GoTo AntiB
  GoTo Principal
 
 AntiA:
    If PORTE.2 == 0 Then GoTo AntiA
    If PORTE.2 == 1 Then GoTo Prender
 GoTo Principal
 
 AntiB:
    If PORTE.2 == 0 Then GoTo AntiB
    If PORTE.2 == 1 Then GoTo Apagar 
 GoTo Principal
 
 Prender:
    con = 2
    PORTB.0 = 1       
 GoTo Principal
 
 Apagar:
    con = 1
    PORTB.0 = 0
 GoTo Principal
 
 End
 
