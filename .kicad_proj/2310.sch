EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 10 19
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
U 1 1 60A4153D
P 4950 3500
AR Path="/60A4153D" Ref="U?"  Part="1" 
AR Path="/607B2C9D/60A4153D" Ref="U1"  Part="1" 
AR Path="/60A3FFA8/60A4153D" Ref="U?"  Part="1" 
AR Path="/60A4150D/60A4153D" Ref="U1"  Part="1" 
F 0 "U1" H 4306 3546 50  0000 R CNN
F 1 "ATmega328-PU" H 4306 3455 50  0000 R CNN
F 2 "Package_DIP:DIP-28_W7.62mm" H 4950 3500 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega328_P%20AVR%20MCU%20with%20picoPower%20Technology%20Data%20Sheet%2040001984A.pdf" H 4950 3500 50  0001 C CNN
	1    4950 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:Battery BT1
U 1 1 60A4F7DB
P 10725 1500
F 0 "BT1" H 10833 1546 50  0000 L CNN
F 1 "Battery" H 10833 1455 50  0000 L CNN
F 2 "" V 10725 1560 50  0001 C CNN
F 3 "~" V 10725 1560 50  0001 C CNN
	1    10725 1500
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:MC7905 U?
U 1 1 60A5AE83
P 5700 1300
AR Path="/60A5AE83" Ref="U?"  Part="1" 
AR Path="/6077F220/60A5AE83" Ref="U?"  Part="1" 
AR Path="/60A4150D/60A5AE83" Ref="U2"  Part="1" 
F 0 "U2" H 5700 1058 50  0000 C CNN
F 1 "MC7905" H 5700 1149 50  0000 C CNN
F 2 "" H 5700 1100 50  0001 C CIN
F 3 "http://www.onsemi.com/pub/Collateral/MC7900-D.PDF" H 5700 1300 50  0001 C CNN
	1    5700 1300
	-1   0    0    1   
$EndComp
$Comp
L Device:CP1_Small C?
U 1 1 60A5AE96
P 5125 1525
AR Path="/60A5AE96" Ref="C?"  Part="1" 
AR Path="/6077F220/60A5AE96" Ref="C?"  Part="1" 
AR Path="/60A4150D/60A5AE96" Ref="C7"  Part="1" 
F 0 "C7" H 5216 1571 50  0000 L CNN
F 1 "0.33uF" H 5216 1480 50  0000 L CNN
F 2 "" H 5125 1525 50  0001 C CNN
F 3 "~" H 5125 1525 50  0001 C CNN
	1    5125 1525
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1_Small C?
U 1 1 60A5AE9C
P 6050 1525
AR Path="/60A5AE9C" Ref="C?"  Part="1" 
AR Path="/6077F220/60A5AE9C" Ref="C?"  Part="1" 
AR Path="/60A4150D/60A5AE9C" Ref="C8"  Part="1" 
F 0 "C8" H 6141 1571 50  0000 L CNN
F 1 "1uF" H 6141 1480 50  0000 L CNN
F 2 "" H 6050 1525 50  0001 C CNN
F 3 "~" H 6050 1525 50  0001 C CNN
	1    6050 1525
	1    0    0    -1  
$EndComp
Wire Wire Line
	5125 1425 5125 1300
Wire Wire Line
	5125 1300 5400 1300
Wire Wire Line
	6000 1300 6050 1300
Wire Wire Line
	6050 1425 6050 1300
Wire Wire Line
	5700 1600 5700 1625
Wire Wire Line
	6050 1625 5700 1625
Connection ~ 5700 1625
Wire Wire Line
	5700 1625 5700 1700
Wire Wire Line
	5125 1625 5700 1625
Wire Wire Line
	5550 2600 5950 2600
Wire Wire Line
	5550 4500 6150 4500
Wire Wire Line
	5550 2500 6200 2500
$Comp
L Motor:Motor_Servo M?
U 1 1 60A64E75
P 8350 4700
AR Path="/60A3FFA8/60A64E75" Ref="M?"  Part="1" 
AR Path="/60A4150D/60A64E75" Ref="M6"  Part="1" 
F 0 "M6" H 8682 4765 50  0000 L CNN
F 1 "Motor_Servo" H 8682 4674 50  0000 L CNN
F 2 "" H 8350 4510 50  0001 C CNN
F 3 "http://forums.parallax.com/uploads/attachments/46831/74481.png" H 8350 4510 50  0001 C CNN
	1    8350 4700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 60A66389
P 7600 4850
F 0 "C6" H 7715 4896 50  0000 L CNN
F 1 "470uF" H 7715 4805 50  0000 L CNN
F 2 "" H 7638 4700 50  0001 C CNN
F 3 "~" H 7600 4850 50  0001 C CNN
	1    7600 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 4700 7600 4700
Wire Wire Line
	8050 4800 8050 5000
Wire Wire Line
	8050 5000 7600 5000
$Comp
L Motor:Motor_Servo M?
U 1 1 60A715D9
P 8350 4175
AR Path="/60A3FFA8/60A715D9" Ref="M?"  Part="1" 
AR Path="/60A4150D/60A715D9" Ref="M5"  Part="1" 
F 0 "M5" H 8682 4240 50  0000 L CNN
F 1 "Motor_Servo" H 8682 4149 50  0000 L CNN
F 2 "" H 8350 3985 50  0001 C CNN
F 3 "http://forums.parallax.com/uploads/attachments/46831/74481.png" H 8350 3985 50  0001 C CNN
	1    8350 4175
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 60A715DF
P 7600 4325
F 0 "C5" H 7715 4371 50  0000 L CNN
F 1 "470uF" H 7715 4280 50  0000 L CNN
F 2 "" H 7638 4175 50  0001 C CNN
F 3 "~" H 7600 4325 50  0001 C CNN
	1    7600 4325
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 4175 7600 4175
Wire Wire Line
	8050 4275 8050 4475
Wire Wire Line
	8050 4475 7600 4475
$Comp
L Motor:Motor_Servo M?
U 1 1 60A72C6D
P 8350 3650
AR Path="/60A3FFA8/60A72C6D" Ref="M?"  Part="1" 
AR Path="/60A4150D/60A72C6D" Ref="M4"  Part="1" 
F 0 "M4" H 8682 3715 50  0000 L CNN
F 1 "Motor_Servo" H 8682 3624 50  0000 L CNN
F 2 "" H 8350 3460 50  0001 C CNN
F 3 "http://forums.parallax.com/uploads/attachments/46831/74481.png" H 8350 3460 50  0001 C CNN
	1    8350 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 60A72C73
P 7600 3800
F 0 "C4" H 7715 3846 50  0000 L CNN
F 1 "470uF" H 7715 3755 50  0000 L CNN
F 2 "" H 7638 3650 50  0001 C CNN
F 3 "~" H 7600 3800 50  0001 C CNN
	1    7600 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 3650 7600 3650
Wire Wire Line
	8050 3750 8050 3950
Wire Wire Line
	8050 3950 7600 3950
$Comp
L Motor:Motor_Servo M?
U 1 1 60A73F65
P 8350 3100
AR Path="/60A3FFA8/60A73F65" Ref="M?"  Part="1" 
AR Path="/60A4150D/60A73F65" Ref="M3"  Part="1" 
F 0 "M3" H 8682 3165 50  0000 L CNN
F 1 "Motor_Servo" H 8682 3074 50  0000 L CNN
F 2 "" H 8350 2910 50  0001 C CNN
F 3 "http://forums.parallax.com/uploads/attachments/46831/74481.png" H 8350 2910 50  0001 C CNN
	1    8350 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 60A73F6B
P 7600 3250
F 0 "C3" H 7715 3296 50  0000 L CNN
F 1 "470uF" H 7715 3205 50  0000 L CNN
F 2 "" H 7638 3100 50  0001 C CNN
F 3 "~" H 7600 3250 50  0001 C CNN
	1    7600 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 3100 7600 3100
Wire Wire Line
	8050 3200 8050 3400
Wire Wire Line
	8050 3400 7600 3400
$Comp
L Motor:Motor_Servo M?
U 1 1 60A75A6D
P 8325 2550
AR Path="/60A3FFA8/60A75A6D" Ref="M?"  Part="1" 
AR Path="/60A4150D/60A75A6D" Ref="M2"  Part="1" 
F 0 "M2" H 8657 2615 50  0000 L CNN
F 1 "Motor_Servo" H 8657 2524 50  0000 L CNN
F 2 "" H 8325 2360 50  0001 C CNN
F 3 "http://forums.parallax.com/uploads/attachments/46831/74481.png" H 8325 2360 50  0001 C CNN
	1    8325 2550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 60A75A73
P 7575 2700
F 0 "C2" H 7690 2746 50  0000 L CNN
F 1 "470uF" H 7690 2655 50  0000 L CNN
F 2 "" H 7613 2550 50  0001 C CNN
F 3 "~" H 7575 2700 50  0001 C CNN
	1    7575 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8025 2550 7575 2550
Wire Wire Line
	8025 2650 8025 2850
Wire Wire Line
	8025 2850 7575 2850
$Comp
L Motor:Motor_Servo M?
U 1 1 60A76EB0
P 8300 1975
AR Path="/60A3FFA8/60A76EB0" Ref="M?"  Part="1" 
AR Path="/60A4150D/60A76EB0" Ref="M1"  Part="1" 
F 0 "M1" H 8632 2040 50  0000 L CNN
F 1 "Motor_Servo" H 8632 1949 50  0000 L CNN
F 2 "" H 8300 1785 50  0001 C CNN
F 3 "http://forums.parallax.com/uploads/attachments/46831/74481.png" H 8300 1785 50  0001 C CNN
	1    8300 1975
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 60A76EB6
P 7550 2125
F 0 "C1" H 7665 2171 50  0000 L CNN
F 1 "470uF" H 7665 2080 50  0000 L CNN
F 2 "" H 7588 1975 50  0001 C CNN
F 3 "~" H 7550 2125 50  0001 C CNN
	1    7550 2125
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 1975 7550 1975
Wire Wire Line
	8000 2075 8000 2275
Wire Wire Line
	8000 2275 7550 2275
Wire Wire Line
	7200 5000 7600 5000
Connection ~ 7200 5000
Connection ~ 7600 5000
Wire Wire Line
	7600 4475 7200 4475
Connection ~ 7600 4475
Wire Wire Line
	7200 4475 7200 5000
Wire Wire Line
	4950 5000 7200 5000
Wire Wire Line
	7200 4475 7200 3950
Wire Wire Line
	7200 2275 7550 2275
Connection ~ 7200 4475
Connection ~ 7550 2275
Wire Wire Line
	7575 2850 7200 2850
Connection ~ 7575 2850
Connection ~ 7200 2850
Wire Wire Line
	7200 2850 7200 2275
Wire Wire Line
	7600 3400 7200 3400
Connection ~ 7600 3400
Connection ~ 7200 3400
Wire Wire Line
	7200 3400 7200 2850
Wire Wire Line
	7600 3950 7200 3950
Connection ~ 7600 3950
Connection ~ 7200 3950
Wire Wire Line
	7200 3950 7200 3400
Wire Wire Line
	7325 2550 7575 2550
Connection ~ 7575 2550
Wire Wire Line
	7550 1975 7325 1975
Connection ~ 7550 1975
Wire Wire Line
	7325 1975 7325 2325
Wire Wire Line
	7325 4700 7600 4700
Connection ~ 7600 4700
Wire Wire Line
	7600 4175 7325 4175
Connection ~ 7600 4175
Wire Wire Line
	7325 4175 7325 4500
Wire Wire Line
	7600 3650 7325 3650
Connection ~ 7600 3650
Wire Wire Line
	7600 3100 7325 3100
Connection ~ 7600 3100
Wire Wire Line
	7325 3100 7325 3475
Wire Wire Line
	5550 4600 8050 4600
Wire Wire Line
	6150 4500 6150 4075
Wire Wire Line
	6150 4075 8050 4075
Wire Wire Line
	6050 4300 6050 3550
Wire Wire Line
	6050 3550 8050 3550
Wire Wire Line
	5550 4300 6050 4300
Wire Wire Line
	8000 1875 6975 1875
Wire Wire Line
	6975 1875 6975 2400
Wire Wire Line
	6975 2400 5550 2400
Wire Wire Line
	8025 2450 6200 2450
Wire Wire Line
	6200 2450 6200 2500
Wire Wire Line
	8050 3000 5950 3000
Wire Wire Line
	5950 3000 5950 2600
$Comp
L Regulator_Linear:MC7905 U?
U 1 1 60D5708A
P 10075 2275
AR Path="/60D5708A" Ref="U?"  Part="1" 
AR Path="/6077F220/60D5708A" Ref="U?"  Part="1" 
AR Path="/60A4150D/60D5708A" Ref="U3"  Part="1" 
F 0 "U3" H 10075 2033 50  0000 C CNN
F 1 "MC7905" H 10075 2124 50  0000 C CNN
F 2 "" H 10075 2075 50  0001 C CIN
F 3 "http://www.onsemi.com/pub/Collateral/MC7900-D.PDF" H 10075 2275 50  0001 C CNN
	1    10075 2275
	-1   0    0    1   
$EndComp
$Comp
L Device:CP1_Small C?
U 1 1 60D57090
P 9500 2500
AR Path="/60D57090" Ref="C?"  Part="1" 
AR Path="/6077F220/60D57090" Ref="C?"  Part="1" 
AR Path="/60A4150D/60D57090" Ref="C9"  Part="1" 
F 0 "C9" H 9591 2546 50  0000 L CNN
F 1 "0.33uF" H 9591 2455 50  0000 L CNN
F 2 "" H 9500 2500 50  0001 C CNN
F 3 "~" H 9500 2500 50  0001 C CNN
	1    9500 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1_Small C?
U 1 1 60D57096
P 10425 2500
AR Path="/60D57096" Ref="C?"  Part="1" 
AR Path="/6077F220/60D57096" Ref="C?"  Part="1" 
AR Path="/60A4150D/60D57096" Ref="C10"  Part="1" 
F 0 "C10" H 10516 2546 50  0000 L CNN
F 1 "1uF" H 10516 2455 50  0000 L CNN
F 2 "" H 10425 2500 50  0001 C CNN
F 3 "~" H 10425 2500 50  0001 C CNN
	1    10425 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 2400 9500 2325
Wire Wire Line
	9500 2275 9775 2275
Wire Wire Line
	10375 2275 10425 2275
Wire Wire Line
	10425 2400 10425 2275
Wire Wire Line
	10075 2575 10075 2600
Wire Wire Line
	10425 2600 10075 2600
Connection ~ 10075 2600
Wire Wire Line
	10075 2600 10075 2700
Wire Wire Line
	9500 2600 10075 2600
Wire Wire Line
	10075 2700 10725 2700
Wire Wire Line
	5700 1700 10725 1700
Wire Wire Line
	10725 2700 10725 1700
Connection ~ 10725 1700
Wire Wire Line
	10725 2700 10725 3650
Wire Wire Line
	10725 5000 10075 5000
Connection ~ 10725 2700
Connection ~ 8050 5000
Connection ~ 6050 1300
Wire Wire Line
	5125 1300 4950 1300
Wire Wire Line
	4950 1300 4950 2000
Connection ~ 5125 1300
$Comp
L Regulator_Linear:MC7905 U?
U 1 1 60D9412E
P 10075 3225
AR Path="/60D9412E" Ref="U?"  Part="1" 
AR Path="/6077F220/60D9412E" Ref="U?"  Part="1" 
AR Path="/60A4150D/60D9412E" Ref="U4"  Part="1" 
F 0 "U4" H 10075 2983 50  0000 C CNN
F 1 "MC7905" H 10075 3074 50  0000 C CNN
F 2 "" H 10075 3025 50  0001 C CIN
F 3 "http://www.onsemi.com/pub/Collateral/MC7900-D.PDF" H 10075 3225 50  0001 C CNN
	1    10075 3225
	-1   0    0    1   
$EndComp
$Comp
L Device:CP1_Small C?
U 1 1 60D94134
P 9500 3450
AR Path="/60D94134" Ref="C?"  Part="1" 
AR Path="/6077F220/60D94134" Ref="C?"  Part="1" 
AR Path="/60A4150D/60D94134" Ref="C11"  Part="1" 
F 0 "C11" H 9591 3496 50  0000 L CNN
F 1 "0.33uF" H 9591 3405 50  0000 L CNN
F 2 "" H 9500 3450 50  0001 C CNN
F 3 "~" H 9500 3450 50  0001 C CNN
	1    9500 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1_Small C?
U 1 1 60D9413A
P 10425 3450
AR Path="/60D9413A" Ref="C?"  Part="1" 
AR Path="/6077F220/60D9413A" Ref="C?"  Part="1" 
AR Path="/60A4150D/60D9413A" Ref="C12"  Part="1" 
F 0 "C12" H 10516 3496 50  0000 L CNN
F 1 "1uF" H 10516 3405 50  0000 L CNN
F 2 "" H 10425 3450 50  0001 C CNN
F 3 "~" H 10425 3450 50  0001 C CNN
	1    10425 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 3350 9500 3225
Wire Wire Line
	9500 3225 9775 3225
Wire Wire Line
	10375 3225 10425 3225
Wire Wire Line
	10425 3350 10425 3225
Wire Wire Line
	10075 3525 10075 3550
Wire Wire Line
	10425 3550 10075 3550
Connection ~ 10075 3550
Wire Wire Line
	10075 3550 10075 3650
Wire Wire Line
	9500 3550 10075 3550
Wire Wire Line
	10075 3650 10725 3650
Connection ~ 10725 3650
Wire Wire Line
	10725 3650 10725 5000
$Comp
L Regulator_Linear:MC7905 U?
U 1 1 60D5A21B
P 10075 4225
AR Path="/60D5A21B" Ref="U?"  Part="1" 
AR Path="/6077F220/60D5A21B" Ref="U?"  Part="1" 
AR Path="/60A4150D/60D5A21B" Ref="U5"  Part="1" 
F 0 "U5" H 10075 3983 50  0000 C CNN
F 1 "MC7905" H 10075 4074 50  0000 C CNN
F 2 "" H 10075 4025 50  0001 C CIN
F 3 "http://www.onsemi.com/pub/Collateral/MC7900-D.PDF" H 10075 4225 50  0001 C CNN
	1    10075 4225
	-1   0    0    1   
$EndComp
$Comp
L Device:CP1_Small C?
U 1 1 60D5A221
P 9500 4450
AR Path="/60D5A221" Ref="C?"  Part="1" 
AR Path="/6077F220/60D5A221" Ref="C?"  Part="1" 
AR Path="/60A4150D/60D5A221" Ref="C13"  Part="1" 
F 0 "C13" H 9591 4496 50  0000 L CNN
F 1 "0.33uF" H 9591 4405 50  0000 L CNN
F 2 "" H 9500 4450 50  0001 C CNN
F 3 "~" H 9500 4450 50  0001 C CNN
	1    9500 4450
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1_Small C?
U 1 1 60D5A227
P 10425 4450
AR Path="/60D5A227" Ref="C?"  Part="1" 
AR Path="/6077F220/60D5A227" Ref="C?"  Part="1" 
AR Path="/60A4150D/60D5A227" Ref="C14"  Part="1" 
F 0 "C14" H 10516 4496 50  0000 L CNN
F 1 "1uF" H 10516 4405 50  0000 L CNN
F 2 "" H 10425 4450 50  0001 C CNN
F 3 "~" H 10425 4450 50  0001 C CNN
	1    10425 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 4350 9500 4225
Wire Wire Line
	9500 4225 9775 4225
Wire Wire Line
	10375 4225 10425 4225
Wire Wire Line
	10425 4350 10425 4225
Wire Wire Line
	10075 4525 10075 4550
Wire Wire Line
	10425 4550 10075 4550
Connection ~ 10075 4550
Wire Wire Line
	9500 4550 10075 4550
Wire Wire Line
	6050 1300 10425 1300
Wire Wire Line
	10425 2275 10425 1300
Connection ~ 10425 2275
Connection ~ 10425 1300
Wire Wire Line
	10425 1300 10725 1300
Wire Wire Line
	10425 3225 11125 3225
Wire Wire Line
	11125 3225 11125 1300
Wire Wire Line
	11125 1300 10725 1300
Connection ~ 10425 3225
Connection ~ 10725 1300
Wire Wire Line
	10075 4550 10075 5000
Connection ~ 10075 5000
Wire Wire Line
	10075 5000 8050 5000
Wire Wire Line
	10425 4225 11125 4225
Wire Wire Line
	11125 4225 11125 3225
Connection ~ 10425 4225
Connection ~ 11125 3225
Wire Wire Line
	7325 2325 9500 2325
Connection ~ 7325 2325
Wire Wire Line
	7325 2325 7325 2550
Connection ~ 9500 2325
Wire Wire Line
	9500 2325 9500 2275
Wire Wire Line
	7325 4500 9300 4500
Wire Wire Line
	9300 4500 9300 4225
Wire Wire Line
	9300 4225 9500 4225
Connection ~ 7325 4500
Wire Wire Line
	7325 4500 7325 4700
Connection ~ 9500 4225
Wire Wire Line
	7325 3475 9200 3475
Wire Wire Line
	9200 3475 9200 3225
Wire Wire Line
	9200 3225 9500 3225
Connection ~ 7325 3475
Wire Wire Line
	7325 3475 7325 3650
Connection ~ 9500 3225
$EndSCHEMATC
