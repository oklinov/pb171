EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 8 9
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Regulator_Linear:MC7905 U?
U 1 1 608323B2
P 4025 1450
AR Path="/608323B2" Ref="U?"  Part="1" 
AR Path="/6077F220/608323B2" Ref="U?"  Part="1" 
AR Path="/607CDC95/608323B2" Ref="U2"  Part="1" 
F 0 "U2" H 4025 1208 50  0000 C CNN
F 1 "MC7905" H 4025 1299 50  0000 C CNN
F 2 "" H 4025 1250 50  0001 C CIN
F 3 "http://www.onsemi.com/pub/Collateral/MC7900-D.PDF" H 4025 1450 50  0001 C CNN
	1    4025 1450
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 608323B8
P 4025 1875
AR Path="/608323B8" Ref="#PWR?"  Part="1" 
AR Path="/6077F220/608323B8" Ref="#PWR?"  Part="1" 
AR Path="/607CDC95/608323B8" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4025 1625 50  0001 C CNN
F 1 "GND" H 4030 1702 50  0000 C CNN
F 2 "" H 4025 1875 50  0001 C CNN
F 3 "" H 4025 1875 50  0001 C CNN
	1    4025 1875
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 608323BE
P 5025 5150
AR Path="/608323BE" Ref="#PWR?"  Part="1" 
AR Path="/6077F220/608323BE" Ref="#PWR?"  Part="1" 
AR Path="/607CDC95/608323BE" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5025 4900 50  0001 C CNN
F 1 "GND" H 5030 4977 50  0000 C CNN
F 2 "" H 5025 5150 50  0001 C CNN
F 3 "" H 5025 5150 50  0001 C CNN
	1    5025 5150
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 608323C4
P 3350 1350
AR Path="/608323C4" Ref="#PWR?"  Part="1" 
AR Path="/6077F220/608323C4" Ref="#PWR?"  Part="1" 
AR Path="/607CDC95/608323C4" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3350 1200 50  0001 C CNN
F 1 "+12V" H 3365 1523 50  0000 C CNN
F 2 "" H 3350 1350 50  0001 C CNN
F 3 "" H 3350 1350 50  0001 C CNN
	1    3350 1350
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1_Small C?
U 1 1 608323CB
P 3450 1675
AR Path="/608323CB" Ref="C?"  Part="1" 
AR Path="/6077F220/608323CB" Ref="C?"  Part="1" 
AR Path="/607CDC95/608323CB" Ref="C1"  Part="1" 
F 0 "C1" H 3541 1721 50  0000 L CNN
F 1 "0.33uF" H 3541 1630 50  0000 L CNN
F 2 "" H 3450 1675 50  0001 C CNN
F 3 "~" H 3450 1675 50  0001 C CNN
	1    3450 1675
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1_Small C?
U 1 1 608323D1
P 4375 1675
AR Path="/608323D1" Ref="C?"  Part="1" 
AR Path="/6077F220/608323D1" Ref="C?"  Part="1" 
AR Path="/607CDC95/608323D1" Ref="C2"  Part="1" 
F 0 "C2" H 4466 1721 50  0000 L CNN
F 1 "1uF" H 4466 1630 50  0000 L CNN
F 2 "" H 4375 1675 50  0001 C CNN
F 3 "~" H 4375 1675 50  0001 C CNN
	1    4375 1675
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 1450 3450 1450
Wire Wire Line
	3450 1575 3450 1450
Connection ~ 3450 1450
Wire Wire Line
	3450 1450 3725 1450
Wire Wire Line
	4325 1450 4375 1450
Wire Wire Line
	4375 1575 4375 1450
Connection ~ 4375 1450
Wire Wire Line
	4025 1750 4025 1775
Wire Wire Line
	4375 1775 4025 1775
Connection ~ 4025 1775
Wire Wire Line
	4025 1775 4025 1875
Wire Wire Line
	3450 1775 4025 1775
Wire Wire Line
	5025 1450 5025 2150
Wire Wire Line
	4375 1450 5025 1450
$Comp
L MCU_Microchip_ATmega:ATmega328-PU U?
U 1 1 60832413
P 5025 3650
AR Path="/60832413" Ref="U?"  Part="1" 
AR Path="/6077F220/60832413" Ref="U?"  Part="1" 
AR Path="/607CDC95/60832413" Ref="U1"  Part="1" 
F 0 "U1" H 4381 3696 50  0000 R CNN
F 1 "ATmega328-PU" H 4381 3605 50  0000 R CNN
F 2 "Package_DIP:DIP-28_W7.62mm" H 5025 3650 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega328_P%20AVR%20MCU%20with%20picoPower%20Technology%20Data%20Sheet%2040001984A.pdf" H 5025 3650 50  0001 C CNN
	1    5025 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 6084141F
P 6075 3050
F 0 "R1" H 6145 3096 50  0000 L CNN
F 1 "7000" H 6145 3005 50  0000 L CNN
F 2 "" V 6005 3050 50  0001 C CNN
F 3 "~" H 6075 3050 50  0001 C CNN
	1    6075 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 60844E18
P 6075 3550
F 0 "R2" H 6145 3596 50  0000 L CNN
F 1 "5000" H 6145 3505 50  0000 L CNN
F 2 "" V 6005 3550 50  0001 C CNN
F 3 "~" H 6075 3550 50  0001 C CNN
	1    6075 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6075 3400 6075 3350
Wire Wire Line
	3350 1350 3350 1450
$Comp
L power:+12V #PWR?
U 1 1 60849519
P 6075 2825
AR Path="/60849519" Ref="#PWR?"  Part="1" 
AR Path="/6077F220/60849519" Ref="#PWR?"  Part="1" 
AR Path="/607CDC95/60849519" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6075 2675 50  0001 C CNN
F 1 "+12V" H 6090 2998 50  0000 C CNN
F 2 "" H 6075 2825 50  0001 C CNN
F 3 "" H 6075 2825 50  0001 C CNN
	1    6075 2825
	1    0    0    -1  
$EndComp
Wire Wire Line
	6075 2825 6075 2900
$Comp
L power:GND #PWR?
U 1 1 6084A1BC
P 6075 3775
AR Path="/6084A1BC" Ref="#PWR?"  Part="1" 
AR Path="/6077F220/6084A1BC" Ref="#PWR?"  Part="1" 
AR Path="/607CDC95/6084A1BC" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6075 3525 50  0001 C CNN
F 1 "GND" H 6080 3602 50  0000 C CNN
F 2 "" H 6075 3775 50  0001 C CNN
F 3 "" H 6075 3775 50  0001 C CNN
	1    6075 3775
	1    0    0    -1  
$EndComp
Wire Wire Line
	6075 3775 6075 3700
Connection ~ 6075 3350
Wire Wire Line
	6075 3350 6075 3200
Wire Wire Line
	5625 3350 6075 3350
$EndSCHEMATC
