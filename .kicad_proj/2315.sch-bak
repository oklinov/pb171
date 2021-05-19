EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 16 19
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
U 1 1 60A41524
P 4950 3500
AR Path="/60A41524" Ref="U?"  Part="1" 
AR Path="/607B2C9D/60A41524" Ref="U1"  Part="1" 
AR Path="/60A3FFA8/60A41524" Ref="U?"  Part="1" 
AR Path="/60A4150D/60A41524" Ref="U?"  Part="1" 
AR Path="/60A41656/60A41524" Ref="U1"  Part="1" 
AR Path="/60A41762/60A41524" Ref="U?"  Part="1" 
AR Path="/60A41786/60A41524" Ref="U?"  Part="1" 
AR Path="/60A417A5/60A41524" Ref="U?"  Part="1" 
AR Path="/60A417E2/60A41524" Ref="U?"  Part="1" 
F 0 "U1" H 4306 3546 50  0000 R CNN
F 1 "ATmega328-PU" H 4306 3455 50  0000 R CNN
F 2 "Package_DIP:DIP-28_W7.62mm" H 4950 3500 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega328_P%20AVR%20MCU%20with%20picoPower%20Technology%20Data%20Sheet%2040001984A.pdf" H 4950 3500 50  0001 C CNN
	1    4950 3500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 607BD0E2
P 4950 5050
AR Path="/607BD0E2" Ref="#PWR?"  Part="1" 
AR Path="/607B2C9D/607BD0E2" Ref="#PWR?"  Part="1" 
AR Path="/60A3FFA8/607BD0E2" Ref="#PWR?"  Part="1" 
AR Path="/60A4150D/607BD0E2" Ref="#PWR?"  Part="1" 
AR Path="/60A41656/607BD0E2" Ref="#PWR?"  Part="1" 
AR Path="/60A41762/607BD0E2" Ref="#PWR?"  Part="1" 
AR Path="/60A41786/607BD0E2" Ref="#PWR?"  Part="1" 
AR Path="/60A417A5/607BD0E2" Ref="#PWR?"  Part="1" 
AR Path="/60A417E2/607BD0E2" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4950 4800 50  0001 C CNN
F 1 "GND" H 4955 4877 50  0000 C CNN
F 2 "" H 4950 5050 50  0001 C CNN
F 3 "" H 4950 5050 50  0001 C CNN
	1    4950 5050
	1    0    0    -1  
$EndComp
$Comp
L custom:BMX055 U2
U 1 1 60B9E190
P 7350 2625
F 0 "U2" H 7075 2700 50  0000 C CNN
F 1 "BMX055" H 7175 2625 50  0000 C CNN
F 2 "" H 7250 2625 50  0001 C CNN
F 3 "" H 7250 2625 50  0001 C CNN
	1    7350 2625
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 2700 5850 2700
Wire Wire Line
	5850 2700 5850 3425
Wire Wire Line
	5850 3425 6175 3425
Wire Wire Line
	5550 2600 5975 2600
Wire Wire Line
	5975 2600 5975 3525
Wire Wire Line
	5975 3525 6400 3525
Text Notes 5625 2600 0    50   ~ 0
MOSI
Text Notes 5625 2700 0    50   ~ 0
MISO
Wire Wire Line
	6175 3425 6175 2925
Wire Wire Line
	6175 2925 6400 2925
Connection ~ 6175 3425
Wire Wire Line
	6175 3425 6400 3425
Text Notes 5625 2800 0    50   ~ 0
CLK
Wire Wire Line
	5550 2800 5800 2800
Wire Wire Line
	5800 2800 5800 3950
Wire Wire Line
	5800 3950 7100 3950
Wire Wire Line
	7100 3950 7100 3875
Wire Wire Line
	5550 2500 6300 2500
Wire Wire Line
	7000 2500 7000 2575
Text Notes 5625 2500 0    50   ~ 0
CS
Wire Wire Line
	6300 2500 6300 3025
Wire Wire Line
	6300 3025 6400 3025
Connection ~ 6300 2500
Wire Wire Line
	6300 2500 7000 2500
Wire Wire Line
	7000 2500 7875 2500
Wire Wire Line
	7875 2500 7875 3325
Wire Wire Line
	7875 3325 7700 3325
Connection ~ 7000 2500
$Comp
L Device:C C1
U 1 1 60BA5F0B
P 8300 3225
F 0 "C1" H 8415 3271 50  0000 L CNN
F 1 "C" H 8415 3180 50  0000 L CNN
F 2 "" H 8338 3075 50  0001 C CNN
F 3 "~" H 8300 3225 50  0001 C CNN
	1    8300 3225
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 3525 8300 3525
Wire Wire Line
	8300 3525 8300 3375
$Comp
L power:+3.3V #PWR?
U 1 1 60BA959B
P 4950 1900
F 0 "#PWR?" H 4950 1750 50  0001 C CNN
F 1 "+3.3V" H 4965 2073 50  0000 C CNN
F 2 "" H 4950 1900 50  0001 C CNN
F 3 "" H 4950 1900 50  0001 C CNN
	1    4950 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 1900 4950 1950
Wire Wire Line
	4950 1950 6075 1950
Wire Wire Line
	8300 1950 8300 2825
Connection ~ 4950 1950
Wire Wire Line
	4950 1950 4950 2000
Connection ~ 8300 3525
Wire Wire Line
	7700 3425 7875 3425
Wire Wire Line
	7875 3425 7875 3725
Wire Wire Line
	7875 3725 8300 3725
Connection ~ 8300 3725
Wire Wire Line
	7700 3125 8075 3125
Wire Wire Line
	8075 3125 8075 2825
Wire Wire Line
	8075 2825 8300 2825
Connection ~ 8300 2825
Wire Wire Line
	8300 2825 8300 3075
NoConn ~ 7700 2925
NoConn ~ 7700 3025
Wire Wire Line
	8300 3725 8300 3625
Wire Wire Line
	7700 3225 8050 3225
Wire Wire Line
	8050 3225 8050 3625
Wire Wire Line
	8050 3625 8300 3625
Connection ~ 8300 3625
Wire Wire Line
	8300 3625 8300 3525
NoConn ~ 7200 3875
NoConn ~ 6900 2575
NoConn ~ 6800 2575
NoConn ~ 6400 3125
NoConn ~ 6400 3225
$Comp
L Device:C C2
U 1 1 60BB310C
P 6075 4250
F 0 "C2" H 6190 4296 50  0000 L CNN
F 1 "C" H 6190 4205 50  0000 L CNN
F 2 "" H 6113 4100 50  0001 C CNN
F 3 "~" H 6075 4250 50  0001 C CNN
	1    6075 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 3325 6075 3325
Connection ~ 6075 1950
Wire Wire Line
	6075 1950 8300 1950
Wire Wire Line
	6075 1950 6075 3325
Wire Wire Line
	6075 3325 6075 4100
Connection ~ 6075 3325
Wire Wire Line
	4950 5050 4950 5025
Wire Wire Line
	8300 5025 6075 5025
Wire Wire Line
	8300 3725 8300 5025
Connection ~ 4950 5025
Wire Wire Line
	4950 5025 4950 5000
Wire Wire Line
	6075 4400 6075 5025
Connection ~ 6075 5025
Wire Wire Line
	6075 5025 4950 5025
$EndSCHEMATC
