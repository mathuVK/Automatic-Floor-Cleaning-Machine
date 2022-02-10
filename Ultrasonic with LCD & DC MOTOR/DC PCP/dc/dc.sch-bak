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
L Driver_Motor:L293D U2
U 1 1 6079EF79
P 6450 3500
F 0 "U2" H 6450 4681 50  0000 C CNN
F 1 "L293D" H 6450 4590 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 6700 2750 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/l293.pdf" H 6150 4200 50  0001 C CNN
	1    6450 3500
	1    0    0    -1  
$EndComp
$Comp
L Motor:Motor_DC M1
U 1 1 607A1E42
P 7300 2950
F 0 "M1" H 7458 2946 50  0000 L CNN
F 1 "Motor_DC" H 7458 2855 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 7300 2860 50  0001 C CNN
F 3 "~" H 7300 2860 50  0001 C CNN
	1    7300 2950
	1    0    0    -1  
$EndComp
$Comp
L Motor:Motor_DC M2
U 1 1 607A2869
P 7300 3650
F 0 "M2" H 7458 3646 50  0000 L CNN
F 1 "Motor_DC" H 7458 3555 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 7300 3560 50  0001 C CNN
F 3 "~" H 7300 3560 50  0001 C CNN
	1    7300 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 4400 5500 4400
Wire Wire Line
	5500 4400 5500 2900
Wire Wire Line
	5500 2900 5950 2900
Wire Wire Line
	5950 3100 5550 3100
Wire Wire Line
	5550 3100 5550 4500
Wire Wire Line
	5550 4500 5400 4500
Wire Wire Line
	5950 3500 5750 3500
Wire Wire Line
	5750 3500 5750 4600
Wire Wire Line
	5750 4600 5400 4600
Wire Wire Line
	5400 4700 5850 4700
Wire Wire Line
	5850 4700 5850 3700
Wire Wire Line
	5850 3700 5950 3700
Wire Wire Line
	5950 3300 5800 3300
Wire Wire Line
	5800 3300 5800 2150
Wire Wire Line
	8000 2150 8000 4400
Wire Wire Line
	8000 4400 5950 4400
Wire Wire Line
	5950 4400 5950 3900
Wire Wire Line
	5800 2150 8000 2150
Wire Wire Line
	5800 2150 5800 1650
Wire Wire Line
	5800 1650 5100 1650
Connection ~ 5800 2150
$Comp
L power:VCC #PWR01
U 1 1 607AA943
P 4800 1650
F 0 "#PWR01" H 4800 1500 50  0001 C CNN
F 1 "VCC" H 4815 1823 50  0000 C CNN
F 2 "" H 4800 1650 50  0001 C CNN
F 3 "" H 4800 1650 50  0001 C CNN
	1    4800 1650
	1    0    0    -1  
$EndComp
Connection ~ 4800 1650
NoConn ~ 4900 1900
$Comp
L power:PWR_FLAG #FLG01
U 1 1 607AB6F0
P 5100 1650
F 0 "#FLG01" H 5100 1725 50  0001 C CNN
F 1 "PWR_FLAG" H 5100 1823 50  0000 C CNN
F 2 "" H 5100 1650 50  0001 C CNN
F 3 "~" H 5100 1650 50  0001 C CNN
	1    5100 1650
	1    0    0    -1  
$EndComp
Connection ~ 5100 1650
Wire Wire Line
	5100 1650 4800 1650
Wire Wire Line
	6950 3500 7200 3500
Wire Wire Line
	7200 3500 7200 3450
Wire Wire Line
	7200 3450 7300 3450
Wire Wire Line
	6950 3700 7050 3700
Wire Wire Line
	7050 3700 7050 3950
Wire Wire Line
	7050 3950 7300 3950
Wire Wire Line
	6950 2900 6950 2750
Wire Wire Line
	6950 2750 7300 2750
Wire Wire Line
	6950 3100 6950 3250
Wire Wire Line
	6950 3250 7300 3250
Wire Wire Line
	6350 4300 6350 5900
Wire Wire Line
	4800 1650 4800 1900
Connection ~ 4800 5900
$Comp
L power:GND #PWR02
U 1 1 607AEA46
P 4800 5900
F 0 "#PWR02" H 4800 5650 50  0001 C CNN
F 1 "GND" H 4805 5727 50  0000 C CNN
F 2 "" H 4800 5900 50  0001 C CNN
F 3 "" H 4800 5900 50  0001 C CNN
	1    4800 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 5900 5150 5900
$Comp
L MCU_Microchip_ATmega:ATmega32-16PU U1
U 1 1 6079CA0E
P 4800 3900
F 0 "U1" H 4800 1811 50  0000 C CNN
F 1 "ATmega32-16PU" H 4300 1900 50  0000 C CNN
F 2 "Package_DIP:DIP-40_W15.24mm" H 4800 3900 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/doc2503.pdf" H 4800 3900 50  0001 C CNN
	1    4800 3900
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG02
U 1 1 607B08EB
P 5150 5900
F 0 "#FLG02" H 5150 5975 50  0001 C CNN
F 1 "PWR_FLAG" H 5150 6073 50  0000 C CNN
F 2 "" H 5150 5900 50  0001 C CNN
F 3 "~" H 5150 5900 50  0001 C CNN
	1    5150 5900
	-1   0    0    1   
$EndComp
Connection ~ 5150 5900
Wire Wire Line
	5150 5900 4800 5900
NoConn ~ 5400 5600
NoConn ~ 5400 5500
NoConn ~ 5400 5400
NoConn ~ 5400 5300
NoConn ~ 5400 5200
NoConn ~ 5400 5100
NoConn ~ 5400 5000
NoConn ~ 5400 4900
NoConn ~ 5400 4300
NoConn ~ 5400 4200
NoConn ~ 5400 4100
NoConn ~ 5400 4000
NoConn ~ 5400 3800
NoConn ~ 5400 3700
NoConn ~ 5400 3600
NoConn ~ 5400 3500
NoConn ~ 5400 3400
NoConn ~ 5400 3300
NoConn ~ 5400 3200
NoConn ~ 5400 3100
NoConn ~ 5400 2900
NoConn ~ 5400 2800
NoConn ~ 5400 2700
NoConn ~ 5400 2600
NoConn ~ 5400 2500
NoConn ~ 5400 2400
NoConn ~ 5400 2300
NoConn ~ 5400 2200
NoConn ~ 4200 2200
NoConn ~ 4200 2400
NoConn ~ 4200 2600
NoConn ~ 4200 2800
NoConn ~ 6550 2500
NoConn ~ 6350 2500
NoConn ~ 6250 4300
NoConn ~ 6550 4300
NoConn ~ 6650 4300
$EndSCHEMATC
