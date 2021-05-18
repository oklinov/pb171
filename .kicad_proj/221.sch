EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 19
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
U 1 1 607BD0C6
P 4950 3500
AR Path="/607BD0C6" Ref="U?"  Part="1" 
AR Path="/607B2C9D/607BD0C6" Ref="U1"  Part="1" 
AR Path="/60A3FFA8/607BD0C6" Ref="U?"  Part="1" 
F 0 "U?" H 4306 3546 50  0000 R CNN
F 1 "ATmega328-PU" H 4306 3455 50  0000 R CNN
F 2 "Package_DIP:DIP-28_W7.62mm" H 4950 3500 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega328_P%20AVR%20MCU%20with%20picoPower%20Technology%20Data%20Sheet%2040001984A.pdf" H 4950 3500 50  0001 C CNN
	1    4950 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 607BD0CC
P 6150 2800
AR Path="/607BD0CC" Ref="R?"  Part="1" 
AR Path="/607B2C9D/607BD0CC" Ref="R1"  Part="1" 
AR Path="/60A3FFA8/607BD0CC" Ref="R?"  Part="1" 
F 0 "R?" V 5943 2800 50  0000 C CNN
F 1 "60" V 6034 2800 50  0000 C CNN
F 2 "" V 6080 2800 50  0001 C CNN
F 3 "~" H 6150 2800 50  0001 C CNN
	1    6150 2800
	0    1    1    0   
$EndComp
Wire Wire Line
	5550 2800 6000 2800
$Comp
L Device:LED D?
U 1 1 607BD0D3
P 6700 2800
AR Path="/607BD0D3" Ref="D?"  Part="1" 
AR Path="/607B2C9D/607BD0D3" Ref="D1"  Part="1" 
AR Path="/60A3FFA8/607BD0D3" Ref="D?"  Part="1" 
F 0 "D?" H 6693 2545 50  0000 C CNN
F 1 "Blue LED" H 6693 2636 50  0000 C CNN
F 2 "" H 6700 2800 50  0001 C CNN
F 3 "~" H 6700 2800 50  0001 C CNN
	1    6700 2800
	-1   0    0    1   
$EndComp
Wire Wire Line
	6300 2800 6550 2800
$Comp
L power:GND #PWR?
U 1 1 607BD0DA
P 7000 3000
AR Path="/607BD0DA" Ref="#PWR?"  Part="1" 
AR Path="/607B2C9D/607BD0DA" Ref="#PWR?"  Part="1" 
AR Path="/60A3FFA8/607BD0DA" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7000 2750 50  0001 C CNN
F 1 "GND" H 7005 2827 50  0000 C CNN
F 2 "" H 7000 3000 50  0001 C CNN
F 3 "" H 7000 3000 50  0001 C CNN
	1    7000 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 2800 7000 2800
Wire Wire Line
	7000 2800 7000 3000
$Comp
L power:GND #PWR?
U 1 1 60A41525
P 4950 5000
AR Path="/60A41525" Ref="#PWR?"  Part="1" 
AR Path="/607B2C9D/60A41525" Ref="#PWR?"  Part="1" 
AR Path="/60A3FFA8/60A41525" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4950 4750 50  0001 C CNN
F 1 "GND" H 4955 4827 50  0000 C CNN
F 2 "" H 4950 5000 50  0001 C CNN
F 3 "" H 4950 5000 50  0001 C CNN
	1    4950 5000
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 60A41526
P 4950 2000
AR Path="/60A41526" Ref="#PWR?"  Part="1" 
AR Path="/607B2C9D/60A41526" Ref="#PWR?"  Part="1" 
AR Path="/60A3FFA8/60A41526" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4950 1850 50  0001 C CNN
F 1 "+5V" H 4965 2173 50  0000 C CNN
F 2 "" H 4950 2000 50  0001 C CNN
F 3 "" H 4950 2000 50  0001 C CNN
	1    4950 2000
	1    0    0    -1  
$EndComp
$EndSCHEMATC
