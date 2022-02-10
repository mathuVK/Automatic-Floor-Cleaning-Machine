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
L Transistor_Array:ULN2003A U2
U 1 1 6079BA20
P 7250 3950
F 0 "U2" H 7250 4617 50  0000 C CNN
F 1 "ULN2003A" H 7250 4526 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 7300 3400 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/uln2003a.pdf" H 7350 3750 50  0001 C CNN
	1    7250 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 5150 6200 5150
Wire Wire Line
	6200 5150 6200 3750
Wire Wire Line
	6200 3750 6850 3750
Wire Wire Line
	6000 5250 6250 5250
Wire Wire Line
	6250 5250 6250 3850
Wire Wire Line
	6250 3850 6850 3850
Wire Wire Line
	6000 5350 6300 5350
Wire Wire Line
	6300 5350 6300 3950
Wire Wire Line
	6300 3950 6850 3950
Wire Wire Line
	6000 5450 6350 5450
Wire Wire Line
	6350 5450 6350 4050
Wire Wire Line
	6350 4050 6850 4050
$Comp
L Motor:Stepper_Motor_unipolar_6pin M1
U 1 1 607A4FEB
P 8800 3750
F 0 "M1" H 8988 3874 50  0000 L CNN
F 1 "Stepper_Motor_unipolar_6pin" H 8988 3783 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Horizontal" H 8810 3740 50  0001 C CNN
F 3 "http://www.infineon.com/dgdl/Application-Note-TLE8110EE_driving_UniPolarStepperMotor_V1.1.pdf?fileId=db3a30431be39b97011be5d0aa0a00b0" H 8810 3740 50  0001 C CNN
	1    8800 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 3550 7900 3550
Wire Wire Line
	7650 3750 8100 3750
Wire Wire Line
	8100 3750 8100 3650
Wire Wire Line
	8100 3650 8500 3650
Wire Wire Line
	7650 3850 8500 3850
Wire Wire Line
	8700 3450 8700 3350
Wire Wire Line
	9050 3350 9050 3950
Wire Wire Line
	9050 3950 7650 3950
Wire Wire Line
	8700 3350 9050 3350
Wire Wire Line
	8900 3450 8900 3250
Wire Wire Line
	8900 3250 9100 3250
Wire Wire Line
	9100 3250 9100 4000
Wire Wire Line
	9100 4000 7650 4000
Wire Wire Line
	7650 4000 7650 4050
Wire Wire Line
	8800 3450 8800 3150
Wire Wire Line
	8350 3150 8350 3750
Wire Wire Line
	8350 3750 8500 3750
NoConn ~ 6850 4150
NoConn ~ 6850 4250
NoConn ~ 6850 4350
NoConn ~ 7250 4550
NoConn ~ 6000 2450
NoConn ~ 6000 2550
NoConn ~ 6000 2750
NoConn ~ 6000 2850
NoConn ~ 6000 2950
NoConn ~ 6000 3050
NoConn ~ 6000 3150
NoConn ~ 6000 3350
NoConn ~ 6000 3450
NoConn ~ 6000 3550
NoConn ~ 6000 3650
NoConn ~ 6000 3750
NoConn ~ 6000 3850
NoConn ~ 6000 3950
NoConn ~ 6000 4050
NoConn ~ 6000 4250
NoConn ~ 6000 4350
NoConn ~ 6000 4450
NoConn ~ 6000 4550
NoConn ~ 6000 4650
NoConn ~ 6000 4750
NoConn ~ 6000 4850
NoConn ~ 6000 4950
NoConn ~ 6000 5550
NoConn ~ 6000 5650
NoConn ~ 6000 5850
NoConn ~ 4800 2650
NoConn ~ 4800 2850
NoConn ~ 4800 3050
NoConn ~ 5500 2150
NoConn ~ 6000 5750
NoConn ~ 7650 4150
NoConn ~ 7650 4250
NoConn ~ 7650 4350
NoConn ~ 4800 2450
NoConn ~ 6000 2650
$Comp
L power:GND #PWR0101
U 1 1 607BC594
P 5400 6450
F 0 "#PWR0101" H 5400 6200 50  0001 C CNN
F 1 "GND" H 5405 6277 50  0000 C CNN
F 2 "" H 5400 6450 50  0001 C CNN
F 3 "" H 5400 6450 50  0001 C CNN
	1    5400 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 3150 8600 3150
$Comp
L power:VCC #PWR0102
U 1 1 607BF978
P 5400 2050
F 0 "#PWR0102" H 5400 1900 50  0001 C CNN
F 1 "VCC" H 5415 2223 50  0000 C CNN
F 2 "" H 5400 2050 50  0001 C CNN
F 3 "" H 5400 2050 50  0001 C CNN
	1    5400 2050
	1    0    0    -1  
$EndComp
$Comp
L MCU_Microchip_ATmega:ATmega32-16AU U1
U 1 1 6079A63F
P 5400 4150
F 0 "U1" H 5400 2061 50  0000 C CNN
F 1 "ATmega32-16AU" H 5400 1970 50  0000 C CNN
F 2 "Package_QFP:TQFP-44_10x10mm_P0.8mm" H 5400 4150 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/doc2503.pdf" H 5400 4150 50  0001 C CNN
	1    5400 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 2150 5400 2050
Wire Wire Line
	5400 2050 6200 2050
Wire Wire Line
	8600 2050 8600 3150
Connection ~ 5400 2050
Connection ~ 8600 3150
Wire Wire Line
	8600 3150 8800 3150
Wire Wire Line
	5400 6150 5400 6350
Wire Wire Line
	7900 3550 7900 6350
Wire Wire Line
	7900 6350 5800 6350
Connection ~ 5400 6350
Wire Wire Line
	5400 6350 5400 6450
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 607CECC1
P 5800 6350
F 0 "#FLG0101" H 5800 6425 50  0001 C CNN
F 1 "PWR_FLAG" H 5800 6523 50  0000 C CNN
F 2 "" H 5800 6350 50  0001 C CNN
F 3 "~" H 5800 6350 50  0001 C CNN
	1    5800 6350
	-1   0    0    1   
$EndComp
Connection ~ 5800 6350
Wire Wire Line
	5800 6350 5400 6350
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 607CF59F
P 6200 2050
F 0 "#FLG0102" H 6200 2125 50  0001 C CNN
F 1 "PWR_FLAG" H 6200 2223 50  0000 C CNN
F 2 "" H 6200 2050 50  0001 C CNN
F 3 "~" H 6200 2050 50  0001 C CNN
	1    6200 2050
	1    0    0    -1  
$EndComp
Connection ~ 6200 2050
Wire Wire Line
	6200 2050 8600 2050
$EndSCHEMATC
