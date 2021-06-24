EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 17 19
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
U 1 1 60BC17EA
P 4850 2850
AR Path="/60BC17EA" Ref="U?"  Part="1" 
AR Path="/607B2C9D/60BC17EA" Ref="U?"  Part="1" 
AR Path="/60A3FFA8/60BC17EA" Ref="U?"  Part="1" 
AR Path="/60A4150D/60BC17EA" Ref="U?"  Part="1" 
AR Path="/60A41656/60BC17EA" Ref="U?"  Part="1" 
AR Path="/60A41762/60BC17EA" Ref="U1"  Part="1" 
AR Path="/60A41786/60BC17EA" Ref="U?"  Part="1" 
AR Path="/60A417A5/60BC17EA" Ref="U?"  Part="1" 
AR Path="/60A417E2/60BC17EA" Ref="U?"  Part="1" 
F 0 "U1" H 4206 2896 50  0000 R CNN
F 1 "ATmega328-PU" H 4206 2805 50  0000 R CNN
F 2 "Package_DIP:DIP-28_W7.62mm" H 4850 2850 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega328_P%20AVR%20MCU%20with%20picoPower%20Technology%20Data%20Sheet%2040001984A.pdf" H 4850 2850 50  0001 C CNN
	1    4850 2850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60BC17F0
P 4850 4400
AR Path="/60BC17F0" Ref="#PWR?"  Part="1" 
AR Path="/607B2C9D/60BC17F0" Ref="#PWR?"  Part="1" 
AR Path="/60A3FFA8/60BC17F0" Ref="#PWR?"  Part="1" 
AR Path="/60A4150D/60BC17F0" Ref="#PWR?"  Part="1" 
AR Path="/60A41656/60BC17F0" Ref="#PWR?"  Part="1" 
AR Path="/60A41762/60BC17F0" Ref="#PWR?"  Part="1" 
AR Path="/60A41786/60BC17F0" Ref="#PWR?"  Part="1" 
AR Path="/60A417A5/60BC17F0" Ref="#PWR?"  Part="1" 
AR Path="/60A417E2/60BC17F0" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4850 4150 50  0001 C CNN
F 1 "GND" H 4855 4227 50  0000 C CNN
F 2 "" H 4850 4400 50  0001 C CNN
F 3 "" H 4850 4400 50  0001 C CNN
	1    4850 4400
	1    0    0    -1  
$EndComp
$Comp
L custom:BMX055 U2
U 1 1 60BC17F6
P 7250 1975
F 0 "U2" H 6975 2050 50  0000 C CNN
F 1 "BMX055" H 7075 1975 50  0000 C CNN
F 2 "" H 7150 1975 50  0001 C CNN
F 3 "" H 7150 1975 50  0001 C CNN
	1    7250 1975
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 60BC1820
P 4850 1250
F 0 "#PWR?" H 4850 1100 50  0001 C CNN
F 1 "+3.3V" H 4865 1423 50  0000 C CNN
F 2 "" H 4850 1250 50  0001 C CNN
F 3 "" H 4850 1250 50  0001 C CNN
	1    4850 1250
	1    0    0    -1  
$EndComp
NoConn ~ 7600 2275
NoConn ~ 7600 2375
NoConn ~ 7100 3225
NoConn ~ 6800 1925
NoConn ~ 6700 1925
NoConn ~ 6300 2475
NoConn ~ 6300 2575
Wire Wire Line
	5450 2950 5675 2950
Text Notes 5500 2950 0    50   ~ 0
SDA
Text Notes 5500 3050 0    50   ~ 0
SCL
Wire Wire Line
	4850 4350 4850 4375
Wire Wire Line
	4850 1250 4850 1300
Wire Wire Line
	4850 1300 5675 1300
Connection ~ 4850 1300
Wire Wire Line
	4850 1300 4850 1350
$Comp
L Device:R R1
U 1 1 60A4FDBC
P 5675 1500
F 0 "R1" H 5745 1546 50  0000 L CNN
F 1 "10k" H 5745 1455 50  0000 L CNN
F 2 "" V 5605 1500 50  0001 C CNN
F 3 "~" H 5675 1500 50  0001 C CNN
	1    5675 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 60A504D6
P 5950 1700
F 0 "R2" H 6020 1746 50  0000 L CNN
F 1 "10k" H 6020 1655 50  0000 L CNN
F 2 "" V 5880 1700 50  0001 C CNN
F 3 "~" H 5950 1700 50  0001 C CNN
	1    5950 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 1550 5950 1300
Connection ~ 5950 1300
Wire Wire Line
	5950 1850 5950 3050
Wire Wire Line
	5450 3050 5950 3050
Wire Wire Line
	5675 1350 5675 1300
Connection ~ 5675 1300
Wire Wire Line
	5675 1300 5950 1300
Wire Wire Line
	6900 1925 6900 1875
Wire Wire Line
	7000 3225 7000 3275
Wire Wire Line
	7000 3275 5950 3275
Wire Wire Line
	5950 3275 5950 3050
Connection ~ 5950 3050
Wire Wire Line
	4850 4375 6250 4375
Connection ~ 4850 4375
Wire Wire Line
	4850 4375 4850 4400
Wire Wire Line
	6300 2775 6250 2775
Wire Wire Line
	6250 2775 6250 4375
Connection ~ 6250 4375
Wire Wire Line
	7600 2575 7700 2575
Wire Wire Line
	7700 2575 7700 2775
Wire Wire Line
	6250 4375 7700 4375
Wire Wire Line
	7600 2775 7700 2775
Connection ~ 7700 2775
Wire Wire Line
	7700 2775 7700 4375
Wire Wire Line
	7600 2875 7775 2875
Wire Wire Line
	5950 1300 6175 1300
Wire Wire Line
	6300 2275 6250 2275
Wire Wire Line
	6250 2275 6250 2775
Connection ~ 6250 2775
Wire Wire Line
	6900 1875 6250 1875
Wire Wire Line
	6250 1875 6250 2275
Connection ~ 6250 2275
NoConn ~ 7600 2675
Wire Wire Line
	7600 2475 7775 2475
Wire Wire Line
	7775 1300 7775 2475
Connection ~ 7775 2475
Wire Wire Line
	7775 2475 7775 2875
Wire Wire Line
	6300 2675 6175 2675
Wire Wire Line
	6175 2675 6175 1300
Connection ~ 6175 1300
Wire Wire Line
	6175 1300 7775 1300
NoConn ~ 6300 2375
NoConn ~ 6900 3225
$Comp
L Device:R R?
U 1 1 60D53F9B
P 6025 2875
AR Path="/60A41656/60D53F9B" Ref="R?"  Part="1" 
AR Path="/60A41762/60D53F9B" Ref="R3"  Part="1" 
F 0 "R3" V 5875 2875 50  0000 L CNN
F 1 "100R" V 5950 2825 50  0000 L CNN
F 2 "" V 5955 2875 50  0001 C CNN
F 3 "~" H 6025 2875 50  0001 C CNN
	1    6025 2875
	0    1    1    0   
$EndComp
Wire Wire Line
	5675 1650 5675 2875
Wire Wire Line
	6175 2875 6300 2875
Wire Wire Line
	5875 2875 5675 2875
Connection ~ 5675 2875
Wire Wire Line
	5675 2875 5675 2950
$EndSCHEMATC
