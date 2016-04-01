'****************************************************************
'*  Name    : LCD caracteres especiales.BAS                     *
'*  Author  : MecatronicaTec (AraroMeca)                        *
'*  Notice  : Copyright (c) 2016 MecatronicaTec                 *
'*          : All Rights Reserved                               *
'*  Date    : 01/04/2016                                        *
'*  Version : 1.0                                               *
'*  Notes   : Practica sencilla para utilizar la LCD con        *
'*          : caracteres especiales                             *
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
 
 Dim M As Byte
 Dim X As Byte
 Dim Z As Byte
 
 Print   $FE,$40,$0E,$1F,$1C,$18,$1C,$1F,$0E,$00  'Codigo para un PacMan con la boca abierta (Derecha)
 Print   $FE,$48,$0E,$1F,$1F,$1F,$1F,$1F,$0E,$00  'Codigo para un PacMan con la boca cerrada
 Print   $FE,$50,$0E,$1F,$07,$03,$07,$1F,$0E,$00  'Codigo para un PacMan con la boca abierta (Izquierda)
 Print   $FE,$58,$03,$13,$1E,$0E,$0E,$0A,$0A,$00  'Codigo de un perrito
 Print   $FE,$60,$0E,$1F,$15,$15,$1F,$1F,$15,$15  'Codigo Fantasma de PacMan
 Print   $FE,$68,$11,$00,$0A,$0A,$00,$00,$0A,$0A  'Codigo Fantasma PacMan invisible
 Print   $FE,$70,$00,$0E,$15,$15,$0E,$11,$0E,$11  '7mo Caracter: Una Cara huesuda
 Print   $FE,$78,$0A,$0A,$00,$00,$1F,$05,$02,$00  '8vo caracter:  una carita con lengua afuera
 
 Cls
 
 M = 0
 
 LAZO:
    For Z = 0 To 7
        If Z = 2 Then Z = 3
        For X = 1 To 16    
            Print At 1,X,Z
            Print At 2,4,"Eric Meca"
            DelayMS 100
            Print At 1,X," "
            If PORTE.2 = 0 Then GoTo PacMan 
        Next X            
    Next Z 
       
 GoTo LAZO
 
 '*****************************************************************************************
 ' La siguiente subrutina, funciona cuando se presiona el boton que esta en RE2
 ' Es una rutina para mostrar una figura de PacMan que se come todo lo que hay en la LCD
 '*****************************************************************************************
   
 PacMan:
    For X = 1 To 16
        For M = 0 To 1
            Print At 1,X,M
            DelayMS 150
            Print At 1,X," "
        Next M
    Next X
 
    For X = 1 To 3
        For M = 0 To 1
            Print At 2,X,M
            DelayMS 150
            Print At 2,X," "
        Next M
    Next X
    
     For X = 3 To 1 Step -1
        For M = 1 To 2
            Print At 2,X,M
            DelayMS 150
            Print At 2,X," "
        Next M
    Next X
 
    For X = 16 To 1 Step -1
        If X = 4 Then Print At 2,8,6
        For M = 1 To 2
            Print At 2,X,M
            DelayMS 150
            Print At 2,X," "
        Next M
    Next X
    
    
 GoTo LAZO
 
 End 
