EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 19 19
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
U 1 1 60A41830
P 4950 3500
AR Path="/60A41830" Ref="U?"  Part="1" 
AR Path="/607B2C9D/60A41830" Ref="U1"  Part="1" 
AR Path="/60A3FFA8/60A41830" Ref="U?"  Part="1" 
AR Path="/60A4150D/60A41830" Ref="U?"  Part="1" 
AR Path="/60A41656/60A41830" Ref="U?"  Part="1" 
AR Path="/60A41762/60A41830" Ref="U?"  Part="1" 
AR Path="/60A41786/60A41830" Ref="U?"  Part="1" 
AR Path="/60A417A5/60A41830" Ref="U1"  Part="1" 
AR Path="/60A417E2/60A41830" Ref="U?"  Part="1" 
F 0 "U1" H 4306 3546 50  0000 R CNN
F 1 "ATmega328-PU" H 4306 3455 50  0000 R CNN
F 2 "Package_DIP:DIP-28_W7.62mm" H 4950 3500 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega328_P%20AVR%20MCU%20with%20picoPower%20Technology%20Data%20Sheet%2040001984A.pdf" H 4950 3500 50  0001 C CNN
	1    4950 3500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60A4182E
P 4950 5075
AR Path="/60A4182E" Ref="#PWR?"  Part="1" 
AR Path="/607B2C9D/60A4182E" Ref="#PWR?"  Part="1" 
AR Path="/60A3FFA8/60A4182E" Ref="#PWR?"  Part="1" 
AR Path="/60A4150D/60A4182E" Ref="#PWR?"  Part="1" 
AR Path="/60A41656/60A4182E" Ref="#PWR?"  Part="1" 
AR Path="/60A41762/60A4182E" Ref="#PWR?"  Part="1" 
AR Path="/60A41786/60A4182E" Ref="#PWR?"  Part="1" 
AR Path="/60A417A5/60A4182E" Ref="#PWR?"  Part="1" 
AR Path="/60A417E2/60A4182E" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4950 4825 50  0001 C CNN
F 1 "GND" H 4955 4902 50  0000 C CNN
F 2 "" H 4950 5075 50  0001 C CNN
F 3 "" H 4950 5075 50  0001 C CNN
	1    4950 5075
	1    0    0    -1  
$EndComp
$Comp
L Connector:Micro_SD_Card J1
U 1 1 60B5283B
P 7675 3425
F 0 "J1" H 7625 4142 50  0000 C CNN
F 1 "Micro_SD_Card" H 7625 4051 50  0000 C CNN
F 2 "" H 8825 3725 50  0001 C CNN
F 3 "http://katalog.we-online.de/em/datasheet/693072010801.pdf" H 7675 3425 50  0001 C CNN
	1    7675 3425
	1    0    0    -1  
$EndComp
Wire Wire Line
	6775 3525 5750 3525
Wire Wire Line
	5750 3525 5750 2800
Wire Wire Line
	5750 2800 5550 2800
$Comp
L power:+3.3V #PWR?
U 1 1 60B58344
P 4950 1875
F 0 "#PWR?" H 4950 1725 50  0001 C CNN
F 1 "+3.3V" H 4965 2048 50  0000 C CNN
F 2 "" H 4950 1875 50  0001 C CNN
F 3 "" H 4950 1875 50  0001 C CNN
	1    4950 1875
	1    0    0    -1  
$EndComp
Wire Wire Line
	6775 3225 5900 3225
Wire Wire Line
	5900 3225 5900 2500
Wire Wire Line
	5900 2500 5550 2500
Text Notes 5600 2500 0    50   ~ 0
CS
Text Notes 5600 2800 0    50   ~ 0
CLK
Wire Wire Line
	6775 3425 6525 3425
Wire Wire Line
	6525 3425 6525 1925
Wire Wire Line
	4950 1875 4950 1925
Connection ~ 4950 1925
Wire Wire Line
	4950 1925 4950 2000
Wire Wire Line
	4950 5075 4950 5025
Wire Wire Line
	4950 5025 6675 5025
Wire Wire Line
	6675 5025 6675 3625
Wire Wire Line
	6675 3625 6775 3625
Connection ~ 4950 5025
Wire Wire Line
	4950 5025 4950 5000
Text Notes 5600 2600 0    50   ~ 0
MOSI
Text Notes 5600 2700 0    50   ~ 0
MISO
Wire Wire Line
	5550 2600 5875 2600
Wire Wire Line
	5875 2600 5875 3325
Wire Wire Line
	5875 3325 6775 3325
Wire Wire Line
	6775 3725 5800 3725
Wire Wire Line
	5800 3725 5800 2700
Wire Wire Line
	5800 2700 5550 2700
Wire Wire Line
	4950 1925 6525 1925
NoConn ~ 6775 3125
NoConn ~ 6775 3825
$EndSCHEMATC
