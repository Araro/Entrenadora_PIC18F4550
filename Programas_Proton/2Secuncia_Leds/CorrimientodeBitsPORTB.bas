'****************************************************************
'*  Name    : CorrimientodebitsPORTB.BAS                        *
'*  Author  : Mecatronica Tec (Mariano)                         *
'*  Notice  : Copyright (c) 2015 Mecatronica Tec                *
'*          : All Rights Reserved                               *
'*  Date    : 18/10/2015                                        *
'*  Version : 1.0                                               *
'*  Notes   : Se genera dos secuencias de LEDs en el puerto B   *
'*          : seleccionando cual ejecutar con el PB de PORTE.2  *
'****************************************************************
Device 18F4550   			     'Selección del dispositivo a utilizar
Xtal = 20				     'Se configura el cristal a 20 MHz

Declare PROTON_START_ADDRESS = $1000	     'Se define que se utilizará el bootloader


DelayMS 500				     'Retardo de 500 Ms para permitir una 
					     'configuración satisfactoria

All_Digital=TRUE			     'Se declaran los puertos como digitales

TRISA = %00000000			     'Configuración de los puertos como salidas
TRISB = %00000000
TRISE = %00000100                            'Todo PORTE como salida, menos PORTE.2
PORTB = %00000000			     'Se inicializan los puertos en ceros
PORTE = %00000000
 
 INICIO:                                     'Etiqueta principal
 
                If PORTE.2 = 0 Then	     'Condicion IF dependiendo del push de la tarjeta
                GoTo DERECHA		     'Se traslada a la etiqueta correspondiente
                ElseIf PORTE.2 = 1 Then
                GoTo IZQUIERDA
                EndIf
 

'Corrimiento hacia la Derecha                
        DERECHA:
        
        High        PORTB.0
        DelayMS     150
        Low         PORTB.0
        DelayMS     150
        High        PORTB.1
        DelayMS     150
        Low         PORTB.1
        DelayMS     150
        High        PORTB.2
        DelayMS     150
        Low         PORTB.2
        DelayMS     150
        High        PORTB.3
        DelayMS     150
        Low         PORTB.3
        DelayMS     150
        High        PORTB.4
        DelayMS     150
        Low         PORTB.4
        DelayMS     150
        High        PORTB.5
        DelayMS     150
        Low         PORTB.5
        DelayMS     150
        High        PORTB.6
        DelayMS     150
        Low         PORTB.6
        DelayMS     150
        High        PORTB.7
        DelayMS     150
        Low         PORTB.7
        DelayMS     150
        
GoTo INICIO

      
        
'Corrimiento hacia la Izquierda
        IZQUIERDA:
        High        PORTB.7
        DelayMS     150
        Low         PORTB.7
        DelayMS     150
        High        PORTB.6
        DelayMS     150
        Low         PORTB.6
        DelayMS     150
        High        PORTB.5
        DelayMS     150
        Low         PORTB.5
        DelayMS     150
        High        PORTB.4
        DelayMS     150
        Low         PORTB.4
        DelayMS     150
        High        PORTB.3
        DelayMS     150
        Low         PORTB.3
        DelayMS     150
        High        PORTB.2
        DelayMS     150
        Low         PORTB.2
        DelayMS     150
        High        PORTB.1
        DelayMS     150
        Low         PORTB.1
        DelayMS     150
        High        PORTB.0
        DelayMS     150
        Low         PORTB.0
        DelayMS     150
        
GoTo INICIO                                  
 
 End
