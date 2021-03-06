EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 19
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
U 1 1 60787C19
P 4175 1900
AR Path="/60787C19" Ref="U?"  Part="1" 
AR Path="/6077F220/60787C19" Ref="U2"  Part="1" 
F 0 "U2" H 4175 1658 50  0000 C CNN
F 1 "MC7905" H 4175 1749 50  0000 C CNN
F 2 "" H 4175 1700 50  0001 C CIN
F 3 "http://www.onsemi.com/pub/Collateral/MC7900-D.PDF" H 4175 1900 50  0001 C CNN
	1    4175 1900
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60787C1F
P 4175 2325
AR Path="/60787C1F" Ref="#PWR?"  Part="1" 
AR Path="/6077F220/60787C1F" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4175 2075 50  0001 C CNN
F 1 "GND" H 4180 2152 50  0000 C CNN
F 2 "" H 4175 2325 50  0001 C CNN
F 3 "" H 4175 2325 50  0001 C CNN
	1    4175 2325
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60787C25
P 5175 5600
AR Path="/60787C25" Ref="#PWR?"  Part="1" 
AR Path="/6077F220/60787C25" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5175 5350 50  0001 C CNN
F 1 "GND" H 5180 5427 50  0000 C CNN
F 2 "" H 5175 5600 50  0001 C CNN
F 3 "" H 5175 5600 50  0001 C CNN
	1    5175 5600
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 60787C2B
P 3500 1825
AR Path="/60787C2B" Ref="#PWR?"  Part="1" 
AR Path="/6077F220/60787C2B" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3500 1675 50  0001 C CNN
F 1 "+12V" H 3515 1998 50  0000 C CNN
F 2 "" H 3500 1825 50  0001 C CNN
F 3 "" H 3500 1825 50  0001 C CNN
	1    3500 1825
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 1900 3500 1825
$Comp
L Device:CP1_Small C?
U 1 1 60787C32
P 3600 2125
AR Path="/60787C32" Ref="C?"  Part="1" 
AR Path="/6077F220/60787C32" Ref="C1"  Part="1" 
F 0 "C1" H 3691 2171 50  0000 L CNN
F 1 "0.33uF" H 3691 2080 50  0000 L CNN
F 2 "" H 3600 2125 50  0001 C CNN
F 3 "~" H 3600 2125 50  0001 C CNN
	1    3600 2125
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1_Small C?
U 1 1 60787C38
P 4525 2125
AR Path="/60787C38" Ref="C?"  Part="1" 
AR Path="/6077F220/60787C38" Ref="C2"  Part="1" 
F 0 "C2" H 4616 2171 50  0000 L CNN
F 1 "1uF" H 4616 2080 50  0000 L CNN
F 2 "" H 4525 2125 50  0001 C CNN
F 3 "~" H 4525 2125 50  0001 C CNN
	1    4525 2125
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 1900 3600 1900
Wire Wire Line
	3600 2025 3600 1900
Connection ~ 3600 1900
Wire Wire Line
	3600 1900 3875 1900
Wire Wire Line
	4475 1900 4525 1900
Wire Wire Line
	4525 2025 4525 1900
Connection ~ 4525 1900
Wire Wire Line
	4175 2200 4175 2225
Wire Wire Line
	4525 2225 4175 2225
Connection ~ 4175 2225
Wire Wire Line
	4175 2225 4175 2325
Wire Wire Line
	3600 2225 4175 2225
Wire Wire Line
	5175 1900 5175 2600
Wire Wire Line
	4525 1900 5175 1900
$Comp
L Device:R R?
U 1 1 60794F58
P 6350 2900
AR Path="/60794F58" Ref="R?"  Part="1" 
AR Path="/6077F220/60794F58" Ref="R1"  Part="1" 
F 0 "R1" V 6143 2900 50  0000 C CNN
F 1 "140" V 6234 2900 50  0000 C CNN
F 2 "" V 6280 2900 50  0001 C CNN
F 3 "~" H 6350 2900 50  0001 C CNN
	1    6350 2900
	0    1    1    0   
$EndComp
$Comp
L Device:LED D?
U 1 1 60794F5F
P 6900 2900
AR Path="/60794F5F" Ref="D?"  Part="1" 
AR Path="/6077F220/60794F5F" Ref="D1"  Part="1" 
F 0 "D1" H 6893 2645 50  0000 C CNN
F 1 "Blue LED" H 6893 2736 50  0000 C CNN
F 2 "" H 6900 2900 50  0001 C CNN
F 3 "~" H 6900 2900 50  0001 C CNN
	1    6900 2900
	-1   0    0    1   
$EndComp
Wire Wire Line
	6500 2900 6750 2900
$Comp
L power:GND #PWR?
U 1 1 60794F66
P 7200 2950
AR Path="/60794F66" Ref="#PWR?"  Part="1" 
AR Path="/6077F220/60794F66" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7200 2700 50  0001 C CNN
F 1 "GND" H 7205 2777 50  0000 C CNN
F 2 "" H 7200 2950 50  0001 C CNN
F 3 "" H 7200 2950 50  0001 C CNN
	1    7200 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 2900 7200 2900
Wire Wire Line
	7200 2900 7200 2950
Wire Wire Line
	5775 2900 6200 2900
$Comp
L Switch:SW_Push SW?
U 1 1 6079DAA0
P 7050 3600
AR Path="/6079DAA0" Ref="SW?"  Part="1" 
AR Path="/6077F220/6079DAA0" Ref="SW1"  Part="1" 
F 0 "SW1" H 7050 3885 50  0000 C CNN
F 1 "SW_Push" H 7050 3794 50  0000 C CNN
F 2 "" H 7050 3800 50  0001 C CNN
F 3 "~" H 7050 3800 50  0001 C CNN
	1    7050 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 6079DAA6
P 6475 3825
AR Path="/6079DAA6" Ref="R?"  Part="1" 
AR Path="/6077F220/6079DAA6" Ref="R2"  Part="1" 
F 0 "R2" H 6405 3779 50  0000 R CNN
F 1 "10k" H 6405 3870 50  0000 R CNN
F 2 "" V 6405 3825 50  0001 C CNN
F 3 "~" H 6475 3825 50  0001 C CNN
	1    6475 3825
	-1   0    0    1   
$EndComp
Wire Wire Line
	6475 3600 6475 3675
Wire Wire Line
	7325 3600 7250 3600
Wire Wire Line
	6850 3600 6475 3600
$Comp
L power:GND #PWR?
U 1 1 6079DAB3
P 6475 3975
AR Path="/6079DAB3" Ref="#PWR?"  Part="1" 
AR Path="/6077F220/6079DAB3" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6475 3725 50  0001 C CNN
F 1 "GND" H 6480 3802 50  0000 C CNN
F 2 "" H 6475 3975 50  0001 C CNN
F 3 "" H 6475 3975 50  0001 C CNN
	1    6475 3975
	1    0    0    -1  
$EndComp
Wire Wire Line
	7325 1900 5175 1900
Connection ~ 5175 1900
$Comp
L MCU_Microchip_ATmega:ATmega328-PU U?
U 1 1 60787C13
P 5175 4100
AR Path="/60787C13" Ref="U?"  Part="1" 
AR Path="/6077F220/60787C13" Ref="U1"  Part="1" 
F 0 "U1" H 4531 4146 50  0000 R CNN
F 1 "ATmega328-PU" H 4531 4055 50  0000 R CNN
F 2 "Package_DIP:DIP-28_W7.62mm" H 5175 4100 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega328_P%20AVR%20MCU%20with%20picoPower%20Technology%20Data%20Sheet%2040001984A.pdf" H 5175 4100 50  0001 C CNN
	1    5175 4100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 6082A731
P 6150 3600
AR Path="/6082A731" Ref="R?"  Part="1" 
AR Path="/6077F220/6082A731" Ref="R2"  Part="1" 
F 0 "R2" V 5943 3600 50  0000 C CNN
F 1 "250" V 6034 3600 50  0000 C CNN
F 2 "" V 6080 3600 50  0001 C CNN
F 3 "~" H 6150 3600 50  0001 C CNN
	1    6150 3600
	0    1    1    0   
$EndComp
Wire Wire Line
	6300 3600 6475 3600
Connection ~ 6475 3600
Wire Wire Line
	5775 3600 6000 3600
Wire Wire Line
	7325 1900 7325 3600
$EndSCHEMATC
