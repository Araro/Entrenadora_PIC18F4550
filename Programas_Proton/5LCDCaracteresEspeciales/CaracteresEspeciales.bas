'****************************************************************
'*  Name    : LCD Caracteres Especiales.BAS                     *
'*  Author  : Eric G. (ARARO)                                   *
'*  Notice  : Copyright (c) 2016 Mecatronica Tec                *
'*          : All Rights Reserved                               *
'*  Date    : 22/09/2016                                        *
'*  Version : 1.0                                               *
'*  Notes   : Programa que ejemplifica como utilizar los        *
'*          : caracteres especiales en una LCD 16 x 2           *
'****************************************************************
 Device 18F4550
 Xtal 48
 
 Declare proton_start_address = $1000
 
 DelayMS 150
 
 All_Digital = true
 
 Declare LCD_DTPin = PORTB.4
 Declare LCD_RSPin = PORTB.2
 Declare LCD_ENPin = PORTB.3
 Declare LCD_Interface = 4
 Declare LCD_Lines = 2
 Declare LCD_Type = 0
 
 Dim M As Byte
 Dim N As Byte
 Dim K As Byte
 
 Print $FE, $40,$00,$0F,$1F,$18,$18,$18,$1F,$0F
 Print $FE, $48,$00,$1F,$1F,$00,$1F,$00,$1F,$1F
 Print $FE, $50,$00,$1E,$1F,$03,$03,$03,$1F,$1E

 
 M = 0
 N = 1
 K = 2
 
 Cls
 
 main:
    Print At 2,1,"Mecatronica Tec"
    Print At 1,3,M
    Print At 1,4,N
    Print At 1,5,N
    Print At 1,6,N
    Print At 1,7,N
    Print At 1,8,N
    Print At 1,9,K
 GoTo main
 End

