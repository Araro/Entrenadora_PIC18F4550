'****************************************************************
'*  Name    : HolamundoPuertoB.BAS                              *
'*  Author  : Mecatr�nica Tec (Mariano)                         *
'*  Notice  : Copyright (c) 2015 [Mecatronica Tec]              *
'*          : All Rights Reserved                               *
'*  Date    : 08/10/2015                                        *
'*  Version : 1.0                                               *
'*  Notes   :  Enciende un LED en PORTB.0 por 500 ms y lo       *
'*          :    apaga por otros 500 ms                         *
'****************************************************************
Device 18F4550   			      'Selecci�n del dispositivo a utilizar
Xtal = 20				      'Se configura el cristal a 20 MHz

Declare PROTON_START_ADDRESS = $1000	      'Se define que se utilizar� el bootloader

DelayMS 500				      'Retardo de 500 Ms para permitir una 
					      'configuraci�n satisfactoria

All_Digital=TRUE			      'Se declaran los puertos como digitales

TRISA = %00000000			      'Configuraci�n de los puertos como salidas
TRISB = %00000000
TRISE = %00000000
PORTB = %00000000			      'Se inicializan los puertos en ceros
PORTE = %00000000
 
INICIO:					      'Programa pricipal

	High PORTB.0		              'Se activa RB0 en alto
        DelayMS 500			      'Retardo de 500 Ms
        Low PORTB.0			      'Se pone RB0 en bajo
        DelayMS 500			      'Retardo de 500 Ms

GoTo INICIO				      'Bucle infinito
   
End   

