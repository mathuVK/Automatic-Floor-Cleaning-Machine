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
L Device:R R1
U 1 1 60795C7C
P 3650 2100
F 0 "R1" H 3720 2146 50  0000 L CNN
F 1 "R" H 3720 2055 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3580 2100 50  0001 C CNN
F 3 "~" H 3650 2100 50  0001 C CNN
	1    3650 2100
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Female J1
U 1 1 607965CB
P 2100 2100
F 0 "J1" H 2128 2076 50  0000 L CNN
F 1 "Conn_01x02_Female" H 2128 1985 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 2100 2100 50  0001 C CNN
F 3 "~" H 2100 2100 50  0001 C CNN
	1    2100 2100
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x04_Male J2
U 1 1 607971CF
P 6900 3200
F 0 "J2" H 7008 3481 50  0000 C CNN
F 1 "Conn_01x04_Male" H 7008 3390 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 6900 3200 50  0001 C CNN
F 3 "~" H 6900 3200 50  0001 C CNN
	1    6900 3200
	-1   0    0    1   
$EndComp
$Comp
L Device:C C1
U 1 1 6079879B
P 3650 3700
F 0 "C1" H 3765 3746 50  0000 L CNN
F 1 "C" H 3765 3655 50  0000 L CNN
F 2 "Capacitor_THT:C_Radial_D5.0mm_H7.0mm_P2.00mm" H 3688 3550 50  0001 C CNN
F 3 "~" H 3650 3700 50  0001 C CNN
	1    3650 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 1950 3650 1650
Connection ~ 3650 1650
Wire Wire Line
	3650 1650 2300 1650
Wire Wire Line
	3650 2250 3650 2700
Wire Wire Line
	3650 2700 4250 2700
Wire Wire Line
	3650 3550 3650 3500
Connection ~ 3650 2700
Wire Wire Line
	6700 3000 6700 1650
Wire Wire Line
	6700 1650 4950 1650
Connection ~ 4850 1650
Wire Wire Line
	4950 2400 4950 1650
Connection ~ 4950 1650
Wire Wire Line
	4950 1650 4850 1650
Wire Wire Line
	6700 3100 5800 3100
Wire Wire Line
	5800 3100 5800 5600
Wire Wire Line
	5800 5600 5450 5600
Wire Wire Line
	5450 6000 5950 6000
Wire Wire Line
	5950 6000 5950 3200
Wire Wire Line
	5950 3200 6700 3200
$Comp
L power:GND #PWR02
U 1 1 607A9E7E
P 4850 6750
F 0 "#PWR02" H 4850 6500 50  0001 C CNN
F 1 "GND" H 4855 6577 50  0000 C CNN
F 2 "" H 4850 6750 50  0001 C CNN
F 3 "" H 4850 6750 50  0001 C CNN
	1    4850 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 6400 4850 6750
Wire Wire Line
	6150 3300 6150 6500
Wire Wire Line
	6150 3300 6700 3300
Connection ~ 3650 6500
Wire Wire Line
	3650 6500 2300 6500
$Comp
L power:VCC #PWR01
U 1 1 607AF5A1
P 4850 1350
F 0 "#PWR01" H 4850 1200 50  0001 C CNN
F 1 "VCC" H 4865 1523 50  0000 C CNN
F 2 "" H 4850 1350 50  0001 C CNN
F 3 "" H 4850 1350 50  0001 C CNN
	1    4850 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 1350 4850 1650
$Comp
L Switch:SW_Push SW1
U 1 1 607B73AC
P 3250 3700
F 0 "SW1" H 3250 3985 50  0000 C CNN
F 1 "SW_Push" H 3250 3894 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H5mm" H 3250 3900 50  0001 C CNN
F 3 "~" H 3250 3900 50  0001 C CNN
	1    3250 3700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3250 3500 3650 3500
Connection ~ 3650 3500
Wire Wire Line
	3650 3500 3650 2700
Wire Wire Line
	3250 3900 3650 3900
Wire Wire Line
	3650 3850 3650 3900
Connection ~ 3650 3900
Wire Wire Line
	3650 3900 3650 6500
Wire Wire Line
	2300 1650 2300 2000
Wire Wire Line
	2300 2100 2300 6500
NoConn ~ 6450 -1550
NoConn ~ 5450 2700
NoConn ~ 5450 2800
NoConn ~ 5450 2900
NoConn ~ 5450 3000
NoConn ~ 5450 3100
NoConn ~ 5450 3200
NoConn ~ 5450 3300
NoConn ~ 5450 3400
NoConn ~ 5450 3600
NoConn ~ 5450 3700
NoConn ~ 5450 3800
NoConn ~ 5450 3900
NoConn ~ 5450 4000
NoConn ~ 5450 4100
NoConn ~ 5450 4200
NoConn ~ 5450 4300
NoConn ~ 5450 4500
NoConn ~ 5450 4600
NoConn ~ 5450 4700
NoConn ~ 5450 4800
NoConn ~ 5450 4900
NoConn ~ 5450 5000
NoConn ~ 5450 5100
NoConn ~ 5450 5200
NoConn ~ 5450 5400
NoConn ~ 5450 5500
NoConn ~ 5450 6100
NoConn ~ 4250 3300
NoConn ~ 4250 3100
NoConn ~ 5450 5700
NoConn ~ 5450 5800
NoConn ~ 5450 5900
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 607E6AC4
P 4300 1650
F 0 "#FLG0101" H 4300 1725 50  0001 C CNN
F 1 "PWR_FLAG" H 4300 1823 50  0000 C CNN
F 2 "" H 4300 1650 50  0001 C CNN
F 3 "~" H 4300 1650 50  0001 C CNN
	1    4300 1650
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 607E7683
P 5600 6500
F 0 "#FLG0102" H 5600 6575 50  0001 C CNN
F 1 "PWR_FLAG" H 5600 6673 50  0000 C CNN
F 2 "" H 5600 6500 50  0001 C CNN
F 3 "~" H 5600 6500 50  0001 C CNN
	1    5600 6500
	-1   0    0    1   
$EndComp
Connection ~ 5600 6500
Wire Wire Line
	5600 6500 6150 6500
Wire Wire Line
	3650 6500 5600 6500
Wire Wire Line
	3650 1650 4300 1650
Connection ~ 4300 1650
Wire Wire Line
	4300 1650 4850 1650
NoConn ~ 4250 2900
$Comp
L MCU_Microchip_ATmega:ATmega32-16PU U1
U 1 1 6079927C
P 4850 4400
F 0 "U1" H 4850 2311 50  0000 C CNN
F 1 "ATmega32-16PU" H 4850 2220 50  0000 C CNN
F 2 "Package_DIP:DIP-40_W15.24mm" H 4850 4400 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/doc2503.pdf" H 4850 4400 50  0001 C CNN
	1    4850 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 1650 4850 2400
Connection ~ 4850 2400
Wire Wire Line
	4850 2400 4850 2450
$EndSCHEMATC
