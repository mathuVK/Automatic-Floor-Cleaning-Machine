EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L MCU_Microchip_ATmega:ATmega32-16AU U1
U 1 1 607FD81F
P 5100 3650
F 0 "U1" H 5100 1561 50  0000 C CNN
F 1 "ATmega32-16AU" H 5100 1470 50  0000 C CNN
F 2 "Package_QFP:TQFP-44_10x10mm_P0.8mm" H 5100 3650 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/doc2503.pdf" H 5100 3650 50  0001 C CNN
	1    5100 3650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 607FF37C
P 5100 5950
F 0 "#PWR02" H 5100 5700 50  0001 C CNN
F 1 "GND" H 5105 5777 50  0000 C CNN
F 2 "" H 5100 5950 50  0001 C CNN
F 3 "" H 5100 5950 50  0001 C CNN
	1    5100 5950
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG02
U 1 1 607FF961
P 5900 5650
F 0 "#FLG02" H 5900 5725 50  0001 C CNN
F 1 "PWR_FLAG" H 5900 5823 50  0000 C CNN
F 2 "" H 5900 5650 50  0001 C CNN
F 3 "~" H 5900 5650 50  0001 C CNN
	1    5900 5650
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG01
U 1 1 607FFD31
P 5550 1450
F 0 "#FLG01" H 5550 1525 50  0001 C CNN
F 1 "PWR_FLAG" H 5550 1623 50  0000 C CNN
F 2 "" H 5550 1450 50  0001 C CNN
F 3 "~" H 5550 1450 50  0001 C CNN
	1    5550 1450
	1    0    0    -1  
$EndComp
$Comp
L Display_Character:WC1602A DS1
U 1 1 60800407
P 7350 3500
F 0 "DS1" H 7350 4481 50  0000 C CNN
F 1 "WC1602A" H 7350 4390 50  0000 C CNN
F 2 "Display:WC1602A" H 7350 2600 50  0001 C CIN
F 3 "http://www.wincomlcd.com/pdf/WC1602A-SFYLYHTC06.pdf" H 8050 3500 50  0001 C CNN
	1    7350 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 2850 6550 2850
Wire Wire Line
	6550 2850 6550 3400
Wire Wire Line
	6550 3400 6950 3400
Wire Wire Line
	6950 3500 6500 3500
Wire Wire Line
	6500 3500 6500 2950
Wire Wire Line
	6500 2950 5700 2950
Wire Wire Line
	6950 3600 6450 3600
Wire Wire Line
	6450 3600 6450 3050
Wire Wire Line
	6450 3050 5700 3050
Wire Wire Line
	6950 3700 6350 3700
Wire Wire Line
	6350 3700 6350 3150
Wire Wire Line
	6350 3150 5700 3150
Wire Wire Line
	6950 3800 6250 3800
Wire Wire Line
	6250 3800 6250 3250
Wire Wire Line
	6250 3250 5700 3250
Wire Wire Line
	6950 3900 6150 3900
Wire Wire Line
	6150 3900 6150 3350
Wire Wire Line
	6150 3350 5700 3350
Wire Wire Line
	5700 3450 6050 3450
Wire Wire Line
	6050 3450 6050 4000
Wire Wire Line
	6050 4000 6950 4000
Wire Wire Line
	5700 3550 5950 3550
Wire Wire Line
	5950 3550 5950 4100
Wire Wire Line
	5950 4100 6950 4100
Wire Wire Line
	5700 3950 5850 3950
Wire Wire Line
	5850 3950 5850 2900
Wire Wire Line
	5850 2900 6950 2900
Wire Wire Line
	5700 3850 6000 3850
Wire Wire Line
	6000 3850 6000 3000
Wire Wire Line
	6000 3000 6950 3000
Wire Wire Line
	5700 3750 6200 3750
Wire Wire Line
	6200 3750 6200 3100
Wire Wire Line
	6200 3100 6950 3100
Wire Wire Line
	5700 5150 6300 5150
$Comp
L Device:Buzzer BZ1
U 1 1 607FECD0
P 6400 5050
F 0 "BZ1" V 6451 4863 50  0000 R CNN
F 1 "Buzzer" V 6360 4863 50  0000 R CNN
F 2 "Buzzer_Beeper:MagneticBuzzer_Kingstate_KCG0601" V 6375 5150 50  0001 C CNN
F 3 "~" V 6375 5150 50  0001 C CNN
	1    6400 5050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5100 5650 5100 5950
Wire Wire Line
	6500 5150 6500 5650
Connection ~ 5100 5650
Wire Wire Line
	7350 4300 7350 5650
Wire Wire Line
	5100 5650 5900 5650
Connection ~ 6500 5650
Wire Wire Line
	6500 5650 7350 5650
Wire Wire Line
	7350 2700 7350 1450
Wire Wire Line
	7350 1450 5550 1450
Wire Wire Line
	5100 1450 5100 1650
Connection ~ 5100 1450
$Comp
L power:VCC #PWR01
U 1 1 60811E02
P 5100 1450
F 0 "#PWR01" H 5100 1300 50  0001 C CNN
F 1 "VCC" H 5115 1623 50  0000 C CNN
F 2 "" H 5100 1450 50  0001 C CNN
F 3 "" H 5100 1450 50  0001 C CNN
	1    5100 1450
	1    0    0    -1  
$EndComp
NoConn ~ 7750 2900
NoConn ~ 7750 3200
NoConn ~ 7750 3300
NoConn ~ 5700 1950
NoConn ~ 5700 2050
NoConn ~ 5700 2150
NoConn ~ 5700 2250
NoConn ~ 5700 2350
NoConn ~ 5700 2450
NoConn ~ 5700 2550
NoConn ~ 5700 2650
NoConn ~ 5700 4050
NoConn ~ 5700 4150
NoConn ~ 5700 4250
NoConn ~ 5700 4350
NoConn ~ 5700 4450
NoConn ~ 5700 4650
NoConn ~ 5700 4750
NoConn ~ 5700 4850
NoConn ~ 5700 4950
NoConn ~ 5700 5050
NoConn ~ 5700 5250
NoConn ~ 5700 5350
NoConn ~ 5200 1650
NoConn ~ 4500 1950
NoConn ~ 4500 2150
NoConn ~ 4500 2350
NoConn ~ 4500 2550
Connection ~ 5900 5650
Wire Wire Line
	5900 5650 6500 5650
Connection ~ 5550 1450
Wire Wire Line
	5550 1450 5100 1450
$EndSCHEMATC
