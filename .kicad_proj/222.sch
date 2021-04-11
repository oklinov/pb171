EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 9
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
L MCU_Microchip_ATmega:ATmega328-PU U?
U 1 1 607C970C
P 4600 4050
AR Path="/607C970C" Ref="U?"  Part="1" 
AR Path="/607B2947/607C970C" Ref="U1"  Part="1" 
F 0 "U1" H 3956 4096 50  0000 R CNN
F 1 "ATmega328-PU" H 3956 4005 50  0000 R CNN
F 2 "Package_DIP:DIP-28_W7.62mm" H 4600 4050 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega328_P%20AVR%20MCU%20with%20picoPower%20Technology%20Data%20Sheet%2040001984A.pdf" H 4600 4050 50  0001 C CNN
	1    4600 4050
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 607C9712
P 4600 2400
AR Path="/607C9712" Ref="#PWR?"  Part="1" 
AR Path="/607B2947/607C9712" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4600 2250 50  0001 C CNN
F 1 "+5V" H 4615 2573 50  0000 C CNN
F 2 "" H 4600 2400 50  0001 C CNN
F 3 "" H 4600 2400 50  0001 C CNN
	1    4600 2400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 607C9718
P 4600 5550
AR Path="/607C9718" Ref="#PWR?"  Part="1" 
AR Path="/607B2947/607C9718" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4600 5300 50  0001 C CNN
F 1 "GND" H 4605 5377 50  0000 C CNN
F 2 "" H 4600 5550 50  0001 C CNN
F 3 "" H 4600 5550 50  0001 C CNN
	1    4600 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 2550 4600 2425
$Comp
L Switch:SW_Push SW?
U 1 1 607C971F
P 6175 2850
AR Path="/607C971F" Ref="SW?"  Part="1" 
AR Path="/607B2947/607C971F" Ref="SW1"  Part="1" 
F 0 "SW1" H 6175 3135 50  0000 C CNN
F 1 "SW_Push" H 6175 3044 50  0000 C CNN
F 2 "" H 6175 3050 50  0001 C CNN
F 3 "~" H 6175 3050 50  0001 C CNN
	1    6175 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 607C9725
P 5875 3075
AR Path="/607C9725" Ref="R?"  Part="1" 
AR Path="/607B2947/607C9725" Ref="R1"  Part="1" 
F 0 "R1" H 5805 3029 50  0000 R CNN
F 1 "10k" H 5805 3120 50  0000 R CNN
F 2 "" V 5805 3075 50  0001 C CNN
F 3 "~" H 5875 3075 50  0001 C CNN
	1    5875 3075
	-1   0    0    1   
$EndComp
Wire Wire Line
	5875 2850 5875 2925
Wire Wire Line
	4600 2425 6450 2425
Wire Wire Line
	6450 2425 6450 2850
Wire Wire Line
	6450 2850 6375 2850
Connection ~ 4600 2425
Wire Wire Line
	4600 2425 4600 2400
Wire Wire Line
	5975 2850 5875 2850
$Comp
L power:GND #PWR?
U 1 1 607C9734
P 5875 3225
AR Path="/607C9734" Ref="#PWR?"  Part="1" 
AR Path="/607B2947/607C9734" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5875 2975 50  0001 C CNN
F 1 "GND" H 5880 3052 50  0000 C CNN
F 2 "" H 5875 3225 50  0001 C CNN
F 3 "" H 5875 3225 50  0001 C CNN
	1    5875 3225
	1    0    0    -1  
$EndComp
$Comp
L Analog_Switch:ADG417BN U?
U 1 1 607C973A
P 6275 3900
AR Path="/607C973A" Ref="U?"  Part="1" 
AR Path="/607B2947/607C973A" Ref="U2"  Part="1" 
F 0 "U2" H 6275 4167 50  0000 C CNN
F 1 "ADG417BN" H 6275 4076 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 6275 3800 50  0001 C CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/ADG417.pdf" H 6275 3900 50  0001 C CNN
	1    6275 3900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 607C9740
P 6575 4075
AR Path="/607C9740" Ref="#PWR?"  Part="1" 
AR Path="/607B2947/607C9740" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6575 3825 50  0001 C CNN
F 1 "GND" H 6580 3902 50  0000 C CNN
F 2 "" H 6575 4075 50  0001 C CNN
F 3 "" H 6575 4075 50  0001 C CNN
	1    6575 4075
	1    0    0    -1  
$EndComp
Wire Wire Line
	6575 3900 6575 4075
Wire Wire Line
	5425 4100 5425 2950
Wire Wire Line
	5425 2950 5200 2950
$Comp
L power:+5V #PWR?
U 1 1 607C974A
P 5950 3700
AR Path="/607C974A" Ref="#PWR?"  Part="1" 
AR Path="/607B2947/607C974A" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5950 3550 50  0001 C CNN
F 1 "+5V" H 5965 3873 50  0000 C CNN
F 2 "" H 5950 3700 50  0001 C CNN
F 3 "" H 5950 3700 50  0001 C CNN
	1    5950 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 3700 5950 3900
Wire Wire Line
	5950 3900 5975 3900
$Comp
L Device:R R?
U 1 1 60821957
P 5700 4100
AR Path="/60821957" Ref="R?"  Part="1" 
AR Path="/607B2947/60821957" Ref="R3"  Part="1" 
F 0 "R3" V 5500 4150 50  0000 R CNN
F 1 "250" V 5600 4175 50  0000 R CNN
F 2 "" V 5630 4100 50  0001 C CNN
F 3 "~" H 5700 4100 50  0001 C CNN
	1    5700 4100
	0    1    1    0   
$EndComp
Wire Wire Line
	5425 2850 5200 2850
Wire Wire Line
	5725 2850 5875 2850
Connection ~ 5875 2850
Wire Wire Line
	5550 4100 5425 4100
Wire Wire Line
	5850 4100 6275 4100
$Comp
L Device:R R?
U 1 1 608287B5
P 5575 2850
AR Path="/608287B5" Ref="R?"  Part="1" 
AR Path="/607B2947/608287B5" Ref="R2"  Part="1" 
F 0 "R2" V 5375 2900 50  0000 R CNN
F 1 "250" V 5475 2925 50  0000 R CNN
F 2 "" V 5505 2850 50  0001 C CNN
F 3 "~" H 5575 2850 50  0001 C CNN
	1    5575 2850
	0    1    1    0   
$EndComp
$EndSCHEMATC
