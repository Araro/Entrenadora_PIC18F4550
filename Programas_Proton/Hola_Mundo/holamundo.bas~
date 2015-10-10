'****************************************************************
'*  Name    : HolamundoPuertoB.BAS                              *
'*  Author  : Mecatrónica Tec (Mariano)                         *
'*  Notice  : Copyright (c) 2015 [Mecatronica Tec]              *
'*          : All Rights Reserved                               *
'*  Date    : 08/10/2015                                        *
'*  Version : 1.0                                               *
'*  Notes   :  Enciende un LED en PORTB.0 por 500 ms y lo       *
'*          :    apaga por otros 500 ms                         *
'****************************************************************
Device 18F4550
Xtal=20

Declare PROTON_STAR_ADRESS = $1000

DelayMS 500

All_Digital=TRUE

TRISA = %00000000
TRISB = %00000000
TRISE = %00000000
PORTB=0
PORTE=0

      INICIO:

        High PORTB.0
        DelayMS 500
        Low PORTB.0
        DelayMS 500

     GoTo INICIO
   
End   






























