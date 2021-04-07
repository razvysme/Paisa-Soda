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
L thonkiconn_jackSocket_fuzzySi:fuzzySI_thonkiconn J1
U 1 1 60601E93
P 9800 1850
F 0 "J1" H 9778 2175 50  0000 C CNN
F 1 "Input" H 9778 2084 50  0000 C CNN
F 2 "footprints:thonkiconn_fuzzySi" H 10050 1950 50  0001 C CNN
F 3 "" H 10050 1950 50  0001 C CNN
	1    9800 1850
	1    0    0    -1  
$EndComp
$Comp
L MCU_Microchip_ATmega:ATmega328PB-AU IC1
U 1 1 606099BC
P 1800 2750
F 0 "IC1" H 2150 4200 50  0000 C CNN
F 1 "ATmega328PB-AU" H 1350 4200 50  0000 C CNN
F 2 "Package_QFP:TQFP-32_7x7mm_P0.8mm" H 1800 2750 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/40001906C.pdf" H 1800 2750 50  0001 C CNN
	1    1800 2750
	1    0    0    -1  
$EndComp
Text GLabel 2550 2850 2    50   Input ~ 0
A4
Text GLabel 2550 1550 2    50   Input ~ 0
D8
Text GLabel 2550 1650 2    50   Input ~ 0
D9
Text GLabel 2550 1750 2    50   Input ~ 0
D10
Text GLabel 2550 1850 2    50   Input ~ 0
D11
Text GLabel 2550 1950 2    50   Input ~ 0
D12
Text GLabel 2550 2050 2    50   Input ~ 0
D13
Text GLabel 2550 2450 2    50   Input ~ 0
A0
Text GLabel 2550 2550 2    50   Input ~ 0
A1
Text GLabel 2550 2650 2    50   Input ~ 0
A2
Text GLabel 2550 2750 2    50   Input ~ 0
A3
Text GLabel 2550 2950 2    50   Input ~ 0
A5
Text GLabel 2550 3050 2    50   Input ~ 0
RST
Text GLabel 2550 3250 2    50   Input ~ 0
D0
Text GLabel 2550 3350 2    50   Input ~ 0
D1
Text GLabel 2550 3450 2    50   Input ~ 0
D2
Text GLabel 2550 3550 2    50   Input ~ 0
D3
Text GLabel 2550 3650 2    50   Input ~ 0
D4
Text GLabel 2550 3750 2    50   Input ~ 0
D5
Text GLabel 2550 3850 2    50   Input ~ 0
D6
Text GLabel 950  1550 0    50   Input ~ 0
AREF
Wire Wire Line
	2550 1550 2400 1550
Wire Wire Line
	2400 1650 2550 1650
Wire Wire Line
	2400 1750 2550 1750
Wire Wire Line
	2400 1850 2550 1850
Wire Wire Line
	2400 1950 2550 1950
Wire Wire Line
	2400 2050 2550 2050
Wire Wire Line
	2400 2450 2550 2450
Wire Wire Line
	2400 2550 2550 2550
Wire Wire Line
	2400 2650 2550 2650
Wire Wire Line
	2400 2750 2550 2750
Wire Wire Line
	2400 2850 2550 2850
Wire Wire Line
	2400 2950 2550 2950
Wire Wire Line
	2400 3050 2550 3050
Wire Wire Line
	2400 3250 2550 3250
Wire Wire Line
	2400 3350 2550 3350
Wire Wire Line
	2550 3450 2400 3450
Wire Wire Line
	2400 3550 2550 3550
Wire Wire Line
	2400 3650 2550 3650
Wire Wire Line
	2400 3750 2550 3750
Wire Wire Line
	2400 3850 2550 3850
Wire Wire Line
	2400 3950 2550 3950
Text GLabel 2550 3950 2    50   Input ~ 0
D7
Text GLabel 1050 3550 0    50   Input ~ 0
A7
Text GLabel 1050 3450 0    50   Input ~ 0
A6
Wire Wire Line
	1050 3550 1200 3550
Wire Wire Line
	1050 3450 1200 3450
Wire Wire Line
	1800 4250 1800 4300
Text GLabel 1400 4900 0    50   Input ~ 0
D12
Wire Wire Line
	2050 4900 2200 4900
Text GLabel 2200 5000 2    50   Input ~ 0
D11
Wire Wire Line
	2050 5000 2200 5000
Text GLabel 1400 5000 0    50   Input ~ 0
D13
Wire Wire Line
	2050 5100 2200 5100
Wire Wire Line
	1400 4900 1550 4900
Text GLabel 1400 5100 0    50   Input ~ 0
RST
Wire Wire Line
	1400 5000 1550 5000
Wire Wire Line
	1400 5100 1550 5100
$Comp
L power:GNDD #PWR06
U 1 1 60633175
P 1800 4300
F 0 "#PWR06" H 1800 4050 50  0001 C CNN
F 1 "GNDD" H 1804 4145 50  0000 C CNN
F 2 "" H 1800 4300 50  0001 C CNN
F 3 "" H 1800 4300 50  0001 C CNN
	1    1800 4300
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR03
U 1 1 60650700
P 1050 2000
F 0 "#PWR03" H 1050 1750 50  0001 C CNN
F 1 "GNDD" H 1054 1845 50  0000 C CNN
F 2 "" H 1050 2000 50  0001 C CNN
F 3 "" H 1050 2000 50  0001 C CNN
	1    1050 2000
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C1
U 1 1 606518F2
P 1050 1750
F 0 "C1" H 1050 1850 50  0000 L CNN
F 1 "0.1uF" H 1050 1650 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_3x5.3" H 1088 1600 50  0001 C CNN
F 3 "~" H 1050 1750 50  0001 C CNN
	1    1050 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 1900 1050 2000
Wire Wire Line
	1050 1600 1050 1550
Connection ~ 1050 1550
Wire Wire Line
	1050 1550 950  1550
Wire Wire Line
	1050 1550 1200 1550
Wire Wire Line
	2800 2150 2400 2150
Wire Wire Line
	2800 2250 2400 2250
$Comp
L power:GNDD #PWR013
U 1 1 60672A81
P 2950 2350
F 0 "#PWR013" H 2950 2100 50  0001 C CNN
F 1 "GNDD" H 2954 2195 50  0000 C CNN
F 2 "" H 2950 2350 50  0001 C CNN
F 3 "" H 2950 2350 50  0001 C CNN
	1    2950 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 60673708
P 3150 3050
F 0 "R1" V 2943 3050 50  0000 C CNN
F 1 "10K" V 3034 3050 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3080 3050 50  0001 C CNN
F 3 "~" H 3150 3050 50  0001 C CNN
	1    3150 3050
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR07
U 1 1 60674EDB
P 1850 900
F 0 "#PWR07" H 1850 750 50  0001 C CNN
F 1 "VCC" H 1865 1073 50  0000 C CNN
F 2 "" H 1850 900 50  0001 C CNN
F 3 "" H 1850 900 50  0001 C CNN
	1    1850 900 
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR012
U 1 1 60679526
P 3500 3050
F 0 "#PWR012" H 3500 2900 50  0001 C CNN
F 1 "VCC" V 3515 3178 50  0000 L CNN
F 2 "" H 3500 3050 50  0001 C CNN
F 3 "" H 3500 3050 50  0001 C CNN
	1    3500 3050
	0    1    1    0   
$EndComp
Wire Wire Line
	3300 3050 3500 3050
Wire Wire Line
	3000 3050 2900 3050
Wire Wire Line
	2900 3050 2900 3150
Wire Wire Line
	2900 3150 2400 3150
Wire Wire Line
	2400 3150 2400 3050
Connection ~ 2400 3050
$Comp
L Device:C C2
U 1 1 60681908
P 2400 800
F 0 "C2" V 2350 700 50  0000 C CNN
F 1 "0.1uF" V 2350 950 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 2438 650 50  0001 C CNN
F 3 "~" H 2400 800 50  0001 C CNN
	1    2400 800 
	0    1    1    0   
$EndComp
$Comp
L power:GNDD #PWR09
U 1 1 606948B0
P 2200 5100
F 0 "#PWR09" H 2200 4850 50  0001 C CNN
F 1 "GNDD" H 2204 4945 50  0000 C CNN
F 2 "" H 2200 5100 50  0001 C CNN
F 3 "" H 2200 5100 50  0001 C CNN
	1    2200 5100
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR02
U 1 1 60695343
P 800 3250
F 0 "#PWR02" H 800 3000 50  0001 C CNN
F 1 "GNDD" H 650 3150 50  0000 C CNN
F 2 "" H 800 3250 50  0001 C CNN
F 3 "" H 800 3250 50  0001 C CNN
	1    800  3250
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR08
U 1 1 60697D27
P 2200 4900
F 0 "#PWR08" H 2200 4750 50  0001 C CNN
F 1 "VCC" H 2215 5073 50  0000 C CNN
F 2 "" H 2200 4900 50  0001 C CNN
F 3 "" H 2200 4900 50  0001 C CNN
	1    2200 4900
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR04
U 1 1 60699B04
P 1050 3350
F 0 "#PWR04" H 1050 3200 50  0001 C CNN
F 1 "VCC" H 1150 3400 50  0000 C CNN
F 2 "" H 1050 3350 50  0001 C CNN
F 3 "" H 1050 3350 50  0001 C CNN
	1    1050 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 3350 1050 3350
Wire Wire Line
	1200 3250 1150 3250
Wire Wire Line
	1150 3250 1150 3150
Wire Wire Line
	1150 3150 800  3150
Wire Wire Line
	800  3150 800  3250
$Comp
L Device:CP C3
U 1 1 606A27CD
P 2400 1150
F 0 "C3" V 2450 1200 50  0000 L CNN
F 1 "4.7uF" V 2550 1050 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_3x5.3" H 2438 1000 50  0001 C CNN
F 3 "~" H 2400 1150 50  0001 C CNN
	1    2400 1150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1800 1250 1850 1250
Wire Wire Line
	1850 1250 1850 1150
Connection ~ 1850 1250
Wire Wire Line
	1850 1250 1900 1250
Connection ~ 1850 1150
Wire Wire Line
	1850 1150 1850 900 
Wire Wire Line
	2550 1150 2650 1150
Wire Wire Line
	2650 1150 2650 1200
$Comp
L power:GNDD #PWR010
U 1 1 606B2048
P 2650 1200
F 0 "#PWR010" H 2650 950 50  0001 C CNN
F 1 "GNDD" H 2654 1045 50  0000 C CNN
F 2 "" H 2650 1200 50  0001 C CNN
F 3 "" H 2650 1200 50  0001 C CNN
	1    2650 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 1150 2150 1150
Wire Wire Line
	2250 800  2150 800 
Wire Wire Line
	2150 800  2150 1150
Connection ~ 2150 1150
Wire Wire Line
	2150 1150 2250 1150
Wire Wire Line
	2550 800  2650 800 
Wire Wire Line
	2650 800  2650 1150
Connection ~ 2650 1150
$Comp
L power:GNDD #PWR05
U 1 1 6070D819
P 1350 5650
F 0 "#PWR05" H 1350 5400 50  0001 C CNN
F 1 "GNDD" H 1354 5495 50  0000 C CNN
F 2 "" H 1350 5650 50  0001 C CNN
F 3 "" H 1350 5650 50  0001 C CNN
	1    1350 5650
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR01
U 1 1 607288DF
P 750 5950
F 0 "#PWR01" H 750 5800 50  0001 C CNN
F 1 "VCC" H 765 6123 50  0000 C CNN
F 2 "" H 750 5950 50  0001 C CNN
F 3 "" H 750 5950 50  0001 C CNN
	1    750  5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  6050 750  6050
$Comp
L sw_push_led_pb614:SW_Push_LED_PB614 SW4
U 1 1 607C1D64
P 6750 2900
F 0 "SW4" H 6750 3300 60  0000 C CNN
F 1 "Manual Trigger" H 6750 3141 60  0000 C CNN
F 2 "footprints:PB614_LED_SW_6pin" H 6850 3200 60  0001 C CNN
F 3 "" H 6750 2790 60  0001 C CNN
	1    6750 2900
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR020
U 1 1 607EF055
P 7000 3100
F 0 "#PWR020" H 7000 2850 50  0001 C CNN
F 1 "GNDD" H 7004 2945 50  0000 C CNN
F 2 "" H 7000 3100 50  0001 C CNN
F 3 "" H 7000 3100 50  0001 C CNN
	1    7000 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 2800 7000 2800
Wire Wire Line
	6600 2800 6900 2800
Connection ~ 6900 2800
Wire Wire Line
	6600 2900 6900 2900
Text GLabel 6050 3000 0    50   Input ~ 0
D9
$Comp
L Device:R R2
U 1 1 608079EF
P 6350 3000
F 0 "R2" V 6143 3000 50  0000 C CNN
F 1 "10K" V 6234 3000 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6280 3000 50  0001 C CNN
F 3 "~" H 6350 3000 50  0001 C CNN
	1    6350 3000
	0    1    1    0   
$EndComp
Wire Wire Line
	6050 3000 6200 3000
Wire Wire Line
	6500 3000 6600 3000
Wire Wire Line
	6900 3000 7000 3000
Wire Wire Line
	7000 3000 7000 3100
Wire Wire Line
	6900 2900 7000 2900
Wire Wire Line
	7000 2900 7000 3000
Connection ~ 6900 2900
Connection ~ 7000 3000
$Comp
L Switch:SW_SPDT_MSM SW1
U 1 1 6084460D
P 8450 1300
F 0 "SW1" H 8450 975 50  0000 C CNN
F 1 "Time Switch" H 8450 1066 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 8450 1300 50  0001 C CNN
F 3 "~" H 8450 1300 50  0001 C CNN
	1    8450 1300
	-1   0    0    1   
$EndComp
$Comp
L power:VCC #PWR025
U 1 1 60846CC4
P 8850 750
F 0 "#PWR025" H 8850 600 50  0001 C CNN
F 1 "VCC" H 8865 923 50  0000 C CNN
F 2 "" H 8850 750 50  0001 C CNN
F 3 "" H 8850 750 50  0001 C CNN
	1    8850 750 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R15
U 1 1 608481C8
P 8850 1000
F 0 "R15" H 8780 954 50  0000 R CNN
F 1 "10K" H 8780 1045 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 8780 1000 50  0001 C CNN
F 3 "~" H 8850 1000 50  0001 C CNN
	1    8850 1000
	-1   0    0    1   
$EndComp
$Comp
L Device:R R12
U 1 1 60848ECB
P 8000 1200
F 0 "R12" V 7793 1200 50  0000 C CNN
F 1 "10K" V 7884 1200 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 7930 1200 50  0001 C CNN
F 3 "~" H 8000 1200 50  0001 C CNN
	1    8000 1200
	0    1    1    0   
$EndComp
Text GLabel 8950 1300 2    50   Input ~ 0
A3
Wire Wire Line
	8850 750  8850 850 
Wire Wire Line
	8850 1150 8850 1300
Wire Wire Line
	8850 1300 8650 1300
$Comp
L power:GNDD #PWR022
U 1 1 6088AB70
P 7800 1450
F 0 "#PWR022" H 7800 1200 50  0001 C CNN
F 1 "GNDD" H 7804 1295 50  0000 C CNN
F 2 "" H 7800 1450 50  0001 C CNN
F 3 "" H 7800 1450 50  0001 C CNN
	1    7800 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 1200 8150 1200
Wire Wire Line
	7800 1450 7800 1400
Wire Wire Line
	7800 1200 7850 1200
Wire Wire Line
	8250 1400 7800 1400
Connection ~ 7800 1400
Wire Wire Line
	7800 1400 7800 1200
Wire Wire Line
	8850 1300 8950 1300
Connection ~ 8850 1300
$Comp
L Switch:SW_SPDT_MSM SW2
U 1 1 608B0D2C
P 8450 2150
F 0 "SW2" H 8450 1825 50  0000 C CNN
F 1 "Time Switch" H 8450 1916 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 8450 2150 50  0001 C CNN
F 3 "~" H 8450 2150 50  0001 C CNN
	1    8450 2150
	-1   0    0    1   
$EndComp
$Comp
L power:VCC #PWR026
U 1 1 608B0D32
P 8850 1600
F 0 "#PWR026" H 8850 1450 50  0001 C CNN
F 1 "VCC" H 8865 1773 50  0000 C CNN
F 2 "" H 8850 1600 50  0001 C CNN
F 3 "" H 8850 1600 50  0001 C CNN
	1    8850 1600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R16
U 1 1 608B0D38
P 8850 1850
F 0 "R16" H 8780 1804 50  0000 R CNN
F 1 "10K" H 8780 1895 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 8780 1850 50  0001 C CNN
F 3 "~" H 8850 1850 50  0001 C CNN
	1    8850 1850
	-1   0    0    1   
$EndComp
$Comp
L Device:R R13
U 1 1 608B0D3E
P 8000 2050
F 0 "R13" V 7793 2050 50  0000 C CNN
F 1 "10K" V 7884 2050 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 7930 2050 50  0001 C CNN
F 3 "~" H 8000 2050 50  0001 C CNN
	1    8000 2050
	0    1    1    0   
$EndComp
Text GLabel 8950 2150 2    50   Input ~ 0
A4
Wire Wire Line
	8850 1600 8850 1700
Wire Wire Line
	8850 2000 8850 2150
Wire Wire Line
	8850 2150 8650 2150
$Comp
L power:GNDD #PWR023
U 1 1 608B0D48
P 7800 2300
F 0 "#PWR023" H 7800 2050 50  0001 C CNN
F 1 "GNDD" H 7804 2145 50  0000 C CNN
F 2 "" H 7800 2300 50  0001 C CNN
F 3 "" H 7800 2300 50  0001 C CNN
	1    7800 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 2050 8150 2050
Wire Wire Line
	7800 2300 7800 2250
Wire Wire Line
	7800 2050 7850 2050
Wire Wire Line
	8250 2250 7800 2250
Connection ~ 7800 2250
Wire Wire Line
	7800 2250 7800 2050
Wire Wire Line
	8850 2150 8950 2150
Connection ~ 8850 2150
$Comp
L Switch:SW_SPDT_MSM SW3
U 1 1 608B8D21
P 8450 3000
F 0 "SW3" H 8450 2675 50  0000 C CNN
F 1 "Time Switch" H 8450 2766 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 8450 3000 50  0001 C CNN
F 3 "~" H 8450 3000 50  0001 C CNN
	1    8450 3000
	-1   0    0    1   
$EndComp
$Comp
L power:VCC #PWR027
U 1 1 608B8D27
P 8850 2450
F 0 "#PWR027" H 8850 2300 50  0001 C CNN
F 1 "VCC" H 8865 2623 50  0000 C CNN
F 2 "" H 8850 2450 50  0001 C CNN
F 3 "" H 8850 2450 50  0001 C CNN
	1    8850 2450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R17
U 1 1 608B8D2D
P 8850 2700
F 0 "R17" H 8780 2654 50  0000 R CNN
F 1 "10K" H 8780 2745 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 8780 2700 50  0001 C CNN
F 3 "~" H 8850 2700 50  0001 C CNN
	1    8850 2700
	-1   0    0    1   
$EndComp
$Comp
L Device:R R14
U 1 1 608B8D33
P 8000 2900
F 0 "R14" V 7793 2900 50  0000 C CNN
F 1 "10K" V 7884 2900 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 7930 2900 50  0001 C CNN
F 3 "~" H 8000 2900 50  0001 C CNN
	1    8000 2900
	0    1    1    0   
$EndComp
Text GLabel 8950 3000 2    50   Input ~ 0
A5
Wire Wire Line
	8850 2450 8850 2550
Wire Wire Line
	8850 2850 8850 3000
Wire Wire Line
	8850 3000 8650 3000
$Comp
L power:GNDD #PWR024
U 1 1 608B8D3D
P 7800 3150
F 0 "#PWR024" H 7800 2900 50  0001 C CNN
F 1 "GNDD" H 7804 2995 50  0000 C CNN
F 2 "" H 7800 3150 50  0001 C CNN
F 3 "" H 7800 3150 50  0001 C CNN
	1    7800 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 2900 8150 2900
Wire Wire Line
	7800 3150 7800 3100
Wire Wire Line
	7800 2900 7850 2900
Wire Wire Line
	8250 3100 7800 3100
Connection ~ 7800 3100
Wire Wire Line
	7800 3100 7800 2900
Wire Wire Line
	8850 3000 8950 3000
Connection ~ 8850 3000
Text GLabel 10900 1400 2    50   Input ~ 0
A6
Wire Wire Line
	9600 1950 10150 1950
Wire Wire Line
	10000 1850 10150 1850
Wire Wire Line
	10150 1850 10150 1950
Connection ~ 10150 1950
$Comp
L thonkiconn_jackSocket_fuzzySi:fuzzySI_thonkiconn J2
U 1 1 608E9E6D
P 9800 2350
F 0 "J2" H 9778 2675 50  0000 C CNN
F 1 "OutputAll" H 9778 2584 50  0000 C CNN
F 2 "footprints:thonkiconn_fuzzySi" H 10050 2450 50  0001 C CNN
F 3 "" H 10050 2450 50  0001 C CNN
	1    9800 2350
	1    0    0    -1  
$EndComp
Text GLabel 7000 2800 2    50   Input ~ 0
D12
$Comp
L power:GNDD #PWR028
U 1 1 608C565D
P 10150 4100
F 0 "#PWR028" H 10150 3850 50  0001 C CNN
F 1 "GNDD" H 10154 3945 50  0000 C CNN
F 2 "" H 10150 4100 50  0001 C CNN
F 3 "" H 10150 4100 50  0001 C CNN
	1    10150 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	10150 1950 10150 2050
Text GLabel 10550 2250 2    50   Input ~ 0
D2
Wire Wire Line
	10000 2250 10250 2250
Wire Wire Line
	10000 2350 10150 2350
Connection ~ 10150 2350
Wire Wire Line
	10150 2350 10150 2450
Wire Wire Line
	9600 2450 10150 2450
Connection ~ 10150 2450
Wire Wire Line
	10150 2450 10150 2850
$Comp
L thonkiconn_jackSocket_fuzzySi:fuzzySI_thonkiconn J6
U 1 1 609138DA
P 9800 2850
F 0 "J6" H 9778 3175 50  0000 C CNN
F 1 "OutputOne" H 9778 3084 50  0000 C CNN
F 2 "footprints:thonkiconn_fuzzySi" H 10050 2950 50  0001 C CNN
F 3 "" H 10050 2950 50  0001 C CNN
	1    9800 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	10000 2850 10150 2850
Connection ~ 10150 2850
Wire Wire Line
	10150 2850 10150 2950
Wire Wire Line
	9600 2950 10150 2950
Connection ~ 10150 2950
Text GLabel 10550 2750 2    50   Input ~ 0
D4
Wire Wire Line
	10000 2750 10250 2750
$Comp
L thonkiconn_jackSocket_fuzzySi:fuzzySI_thonkiconn J7
U 1 1 60928B41
P 9800 3350
F 0 "J7" H 9778 3675 50  0000 C CNN
F 1 "OutputTwo" H 9778 3584 50  0000 C CNN
F 2 "footprints:thonkiconn_fuzzySi" H 10050 3450 50  0001 C CNN
F 3 "" H 10050 3450 50  0001 C CNN
	1    9800 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	10150 2950 10150 3350
$Comp
L thonkiconn_jackSocket_fuzzySi:fuzzySI_thonkiconn J8
U 1 1 609319F9
P 9800 3850
F 0 "J8" H 9778 4175 50  0000 C CNN
F 1 "OutputThree" H 9778 4084 50  0000 C CNN
F 2 "footprints:thonkiconn_fuzzySi" H 10050 3950 50  0001 C CNN
F 3 "" H 10050 3950 50  0001 C CNN
	1    9800 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	10000 3350 10150 3350
Connection ~ 10150 3350
Wire Wire Line
	10150 3350 10150 3450
Wire Wire Line
	9600 3450 10150 3450
Connection ~ 10150 3450
Wire Wire Line
	10150 3450 10150 3850
Wire Wire Line
	10000 3850 10150 3850
Connection ~ 10150 3850
Wire Wire Line
	10150 3850 10150 3950
Wire Wire Line
	9600 3950 10150 3950
Connection ~ 10150 3950
Wire Wire Line
	10150 3950 10150 4100
Text GLabel 10550 3250 2    50   Input ~ 0
D7
Wire Wire Line
	10000 3750 10250 3750
Wire Wire Line
	10000 3250 10250 3250
$Comp
L Diode:1N4001 D1
U 1 1 609BC143
P 1700 6050
F 0 "D1" V 1654 6130 50  0000 L CNN
F 1 "SM4001" V 1745 6130 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-323_HandSoldering" H 1700 5875 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 1700 6050 50  0001 C CNN
	1    1700 6050
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:AMS1117-5.0 U1
U 1 1 60702DD5
P 1250 6050
F 0 "U1" H 1250 6292 50  0000 C CNN
F 1 "AMS1117-5.0" H 1250 6201 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 1275 5900 50  0001 L CIN
F 3 "http://www.advanced-monolithic.com/pdf/ds1117.pdf" H 1250 6000 50  0001 C CNN
	1    1250 6050
	-1   0    0    1   
$EndComp
Wire Wire Line
	750  6050 750  5950
Wire Wire Line
	1250 5550 1350 5550
Wire Wire Line
	1350 5550 1350 5650
Wire Wire Line
	1250 5550 1250 5750
Wire Wire Line
	2900 6450 2000 6450
Connection ~ 2900 6350
Wire Wire Line
	2000 6350 2900 6350
Wire Wire Line
	2000 6250 2900 6250
Connection ~ 2900 6150
Wire Wire Line
	2900 6150 2000 6150
Wire Wire Line
	2000 6050 2900 6050
Wire Wire Line
	2900 6250 3050 6250
$Comp
L power:GNDD #PWR011
U 1 1 6071FCE5
P 3050 6250
F 0 "#PWR011" H 3050 6000 50  0001 C CNN
F 1 "GNDD" H 3054 6095 50  0000 C CNN
F 2 "" H 3050 6250 50  0001 C CNN
F 3 "" H 3050 6250 50  0001 C CNN
	1    3050 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 6250 2900 6350
Connection ~ 2900 6250
Wire Wire Line
	2900 6150 2900 6250
$Comp
L eurocad:EURO_PWR_2x5 JP1
U 1 1 605F04D7
P 2450 6250
F 0 "JP1" H 2450 6697 60  0000 C CNN
F 1 "Eurorack Power" H 2450 6591 60  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x05_P2.54mm_Vertical" H 2450 6250 60  0001 C CNN
F 3 "" H 2450 6250 60  0000 C CNN
	1    2450 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 6050 1850 6050
Connection ~ 2000 6050
$Comp
L Transistor_BJT:2N3904 Q1
U 1 1 606A004F
P 10650 1750
F 0 "Q1" H 10840 1796 50  0000 L CNN
F 1 "MMBT3094" H 10840 1705 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 10850 1675 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/2N3903-D.PDF" H 10650 1750 50  0001 L CNN
	1    10650 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	10750 1950 10750 2050
Wire Wire Line
	10750 2050 10150 2050
Connection ~ 10150 2050
Wire Wire Line
	10150 2050 10150 2350
$Comp
L Device:R R18
U 1 1 606D520B
P 10200 1750
F 0 "R18" V 9993 1750 50  0000 C CNN
F 1 "100K" V 10084 1750 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 10130 1750 50  0001 C CNN
F 3 "~" H 10200 1750 50  0001 C CNN
	1    10200 1750
	0    1    1    0   
$EndComp
Wire Wire Line
	10000 1750 10050 1750
Wire Wire Line
	10350 1750 10450 1750
Wire Wire Line
	10750 1550 10750 1400
Wire Wire Line
	10750 1400 10900 1400
$Comp
L Device:R R19
U 1 1 606EF128
P 10750 1100
F 0 "R19" V 10543 1100 50  0000 C CNN
F 1 "100K" V 10634 1100 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 10680 1100 50  0001 C CNN
F 3 "~" H 10750 1100 50  0001 C CNN
	1    10750 1100
	-1   0    0    1   
$EndComp
Wire Wire Line
	10750 1400 10750 1250
Connection ~ 10750 1400
$Comp
L power:VCC #PWR029
U 1 1 606F810D
P 10750 850
F 0 "#PWR029" H 10750 700 50  0001 C CNN
F 1 "VCC" H 10765 1023 50  0000 C CNN
F 2 "" H 10750 850 50  0001 C CNN
F 3 "" H 10750 850 50  0001 C CNN
	1    10750 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	10750 950  10750 850 
$Comp
L thonkiconn_jackSocket_fuzzySi:fuzzySI_thonkiconn J3
U 1 1 60738C45
P 4500 1200
F 0 "J3" H 4478 1525 50  0000 C CNN
F 1 "Delay CV1" H 4478 1434 50  0000 C CNN
F 2 "footprints:thonkiconn_fuzzySi" H 4750 1300 50  0001 C CNN
F 3 "" H 4750 1300 50  0001 C CNN
	1    4500 1200
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR014
U 1 1 6073AA32
P 4300 1800
F 0 "#PWR014" H 4300 1550 50  0001 C CNN
F 1 "GNDD" H 4304 1645 50  0000 C CNN
F 2 "" H 4300 1800 50  0001 C CNN
F 3 "" H 4300 1800 50  0001 C CNN
	1    4300 1800
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR017
U 1 1 60744159
P 4800 800
F 0 "#PWR017" H 4800 650 50  0001 C CNN
F 1 "VCC" H 4815 973 50  0000 C CNN
F 2 "" H 4800 800 50  0001 C CNN
F 3 "" H 4800 800 50  0001 C CNN
	1    4800 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 1200 4800 1200
Text GLabel 5550 1550 2    50   Input ~ 0
A0
$Comp
L Device:D_Schottky D2
U 1 1 6074DA64
P 5450 1300
F 0 "D2" H 5550 1350 50  0000 C CNN
F 1 "BAT48" H 5450 1200 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-323_HandSoldering" H 5450 1300 50  0001 C CNN
F 3 "~" H 5450 1300 50  0001 C CNN
	1    5450 1300
	-1   0    0    1   
$EndComp
$Comp
L Device:D_Schottky D3
U 1 1 6074E3F3
P 5050 1300
F 0 "D3" H 5150 1350 50  0000 C CNN
F 1 "BAT48" H 5050 1200 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-323_HandSoldering" H 5050 1300 50  0001 C CNN
F 3 "~" H 5050 1300 50  0001 C CNN
	1    5050 1300
	-1   0    0    1   
$EndComp
Wire Wire Line
	5400 1550 5550 1550
$Comp
L Device:R R3
U 1 1 60761061
P 5000 1100
F 0 "R3" V 4793 1100 50  0000 C CNN
F 1 "1K" V 4884 1100 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4930 1100 50  0001 C CNN
F 3 "~" H 5000 1100 50  0001 C CNN
	1    5000 1100
	0    1    1    0   
$EndComp
Wire Wire Line
	4700 1100 4850 1100
$Comp
L Device:R_POT VR1
U 1 1 60799CAF
P 5250 1550
F 0 "VR1" V 5043 1550 50  0000 C CNN
F 1 "10K" V 5134 1550 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_Alps_RK09L_Single_Vertical" H 5250 1550 50  0001 C CNN
F 3 "~" H 5250 1550 50  0001 C CNN
	1    5250 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 1100 5250 1100
Wire Wire Line
	4300 1800 4300 1750
Wire Wire Line
	4300 1300 4300 1750
Connection ~ 4300 1750
Wire Wire Line
	4800 1200 4800 850 
Wire Wire Line
	5250 1700 5250 1750
Wire Wire Line
	4900 1300 4900 1750
Wire Wire Line
	4300 1750 4900 1750
Connection ~ 4900 1750
Wire Wire Line
	4900 1750 5250 1750
Wire Wire Line
	5600 1300 5600 850 
Wire Wire Line
	5600 850  4800 850 
Connection ~ 4800 850 
Wire Wire Line
	4800 850  4800 800 
Wire Wire Line
	5250 1300 5200 1300
Wire Wire Line
	5250 1100 5250 1300
Wire Wire Line
	5250 1300 5300 1300
Connection ~ 5250 1300
Wire Wire Line
	5250 1300 5250 1400
$Comp
L thonkiconn_jackSocket_fuzzySi:fuzzySI_thonkiconn J4
U 1 1 609A9187
P 4500 2400
F 0 "J4" H 4478 2725 50  0000 C CNN
F 1 "Delay CV2" H 4478 2634 50  0000 C CNN
F 2 "footprints:thonkiconn_fuzzySi" H 4750 2500 50  0001 C CNN
F 3 "" H 4750 2500 50  0001 C CNN
	1    4500 2400
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR015
U 1 1 609A918D
P 4300 3000
F 0 "#PWR015" H 4300 2750 50  0001 C CNN
F 1 "GNDD" H 4304 2845 50  0000 C CNN
F 2 "" H 4300 3000 50  0001 C CNN
F 3 "" H 4300 3000 50  0001 C CNN
	1    4300 3000
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR018
U 1 1 609A9193
P 4800 2000
F 0 "#PWR018" H 4800 1850 50  0001 C CNN
F 1 "VCC" H 4815 2173 50  0000 C CNN
F 2 "" H 4800 2000 50  0001 C CNN
F 3 "" H 4800 2000 50  0001 C CNN
	1    4800 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 2400 4800 2400
Text GLabel 5550 2750 2    50   Input ~ 0
A1
$Comp
L Device:D_Schottky D6
U 1 1 609A919B
P 5450 2500
F 0 "D6" H 5550 2550 50  0000 C CNN
F 1 "BAT48" H 5450 2400 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-323_HandSoldering" H 5450 2500 50  0001 C CNN
F 3 "~" H 5450 2500 50  0001 C CNN
	1    5450 2500
	-1   0    0    1   
$EndComp
$Comp
L Device:D_Schottky D4
U 1 1 609A91A1
P 5050 2500
F 0 "D4" H 5150 2550 50  0000 C CNN
F 1 "BAT48" H 5050 2400 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-323_HandSoldering" H 5050 2500 50  0001 C CNN
F 3 "~" H 5050 2500 50  0001 C CNN
	1    5050 2500
	-1   0    0    1   
$EndComp
Wire Wire Line
	5400 2750 5550 2750
$Comp
L Device:R R4
U 1 1 609A91A8
P 5000 2300
F 0 "R4" V 4793 2300 50  0000 C CNN
F 1 "1K" V 4884 2300 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4930 2300 50  0001 C CNN
F 3 "~" H 5000 2300 50  0001 C CNN
	1    5000 2300
	0    1    1    0   
$EndComp
Wire Wire Line
	4700 2300 4850 2300
$Comp
L Device:R_POT VR2
U 1 1 609A91AF
P 5250 2750
F 0 "VR2" V 5043 2750 50  0000 C CNN
F 1 "10K" V 5134 2750 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_Alps_RK09L_Single_Vertical" H 5250 2750 50  0001 C CNN
F 3 "~" H 5250 2750 50  0001 C CNN
	1    5250 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 2300 5250 2300
Wire Wire Line
	4300 3000 4300 2950
Wire Wire Line
	4300 2500 4300 2950
Connection ~ 4300 2950
Wire Wire Line
	4800 2400 4800 2050
Wire Wire Line
	5250 2900 5250 2950
Wire Wire Line
	4900 2500 4900 2950
Wire Wire Line
	4300 2950 4900 2950
Connection ~ 4900 2950
Wire Wire Line
	4900 2950 5250 2950
Wire Wire Line
	5600 2500 5600 2050
Wire Wire Line
	5600 2050 4800 2050
Connection ~ 4800 2050
Wire Wire Line
	4800 2050 4800 2000
Wire Wire Line
	5250 2500 5200 2500
Wire Wire Line
	5250 2300 5250 2500
Wire Wire Line
	5250 2500 5300 2500
Connection ~ 5250 2500
Wire Wire Line
	5250 2500 5250 2600
$Comp
L thonkiconn_jackSocket_fuzzySi:fuzzySI_thonkiconn J5
U 1 1 609B9B94
P 4500 3600
F 0 "J5" H 4478 3925 50  0000 C CNN
F 1 "Delay CV3" H 4478 3834 50  0000 C CNN
F 2 "footprints:thonkiconn_fuzzySi" H 4750 3700 50  0001 C CNN
F 3 "" H 4750 3700 50  0001 C CNN
	1    4500 3600
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR016
U 1 1 609B9B9A
P 4300 4200
F 0 "#PWR016" H 4300 3950 50  0001 C CNN
F 1 "GNDD" H 4304 4045 50  0000 C CNN
F 2 "" H 4300 4200 50  0001 C CNN
F 3 "" H 4300 4200 50  0001 C CNN
	1    4300 4200
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR019
U 1 1 609B9BA0
P 4800 3200
F 0 "#PWR019" H 4800 3050 50  0001 C CNN
F 1 "VCC" H 4815 3373 50  0000 C CNN
F 2 "" H 4800 3200 50  0001 C CNN
F 3 "" H 4800 3200 50  0001 C CNN
	1    4800 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 3600 4800 3600
Text GLabel 5550 3950 2    50   Input ~ 0
A2
$Comp
L Device:D_Schottky D7
U 1 1 609B9BA8
P 5450 3700
F 0 "D7" H 5550 3750 50  0000 C CNN
F 1 "BAT48" H 5450 3600 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-323_HandSoldering" H 5450 3700 50  0001 C CNN
F 3 "~" H 5450 3700 50  0001 C CNN
	1    5450 3700
	-1   0    0    1   
$EndComp
$Comp
L Device:D_Schottky D5
U 1 1 609B9BAE
P 5050 3700
F 0 "D5" H 5150 3750 50  0000 C CNN
F 1 "BAT48" H 5050 3600 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-323_HandSoldering" H 5050 3700 50  0001 C CNN
F 3 "~" H 5050 3700 50  0001 C CNN
	1    5050 3700
	-1   0    0    1   
$EndComp
Wire Wire Line
	5400 3950 5550 3950
$Comp
L Device:R R5
U 1 1 609B9BB5
P 5000 3500
F 0 "R5" V 4793 3500 50  0000 C CNN
F 1 "1K" V 4884 3500 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4930 3500 50  0001 C CNN
F 3 "~" H 5000 3500 50  0001 C CNN
	1    5000 3500
	0    1    1    0   
$EndComp
Wire Wire Line
	4700 3500 4850 3500
$Comp
L Device:R_POT VR3
U 1 1 609B9BBC
P 5250 3950
F 0 "VR3" V 5043 3950 50  0000 C CNN
F 1 "10K" V 5134 3950 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_Alps_RK09L_Single_Vertical" H 5250 3950 50  0001 C CNN
F 3 "~" H 5250 3950 50  0001 C CNN
	1    5250 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 3500 5250 3500
Wire Wire Line
	4300 4200 4300 4150
Wire Wire Line
	4300 3700 4300 4150
Connection ~ 4300 4150
Wire Wire Line
	4800 3600 4800 3250
Wire Wire Line
	5250 4100 5250 4150
Wire Wire Line
	4900 3700 4900 4150
Wire Wire Line
	4300 4150 4900 4150
Connection ~ 4900 4150
Wire Wire Line
	4900 4150 5250 4150
Wire Wire Line
	5600 3700 5600 3250
Wire Wire Line
	5600 3250 4800 3250
Connection ~ 4800 3250
Wire Wire Line
	4800 3250 4800 3200
Wire Wire Line
	5250 3700 5200 3700
Wire Wire Line
	5250 3500 5250 3700
Wire Wire Line
	5250 3700 5300 3700
Connection ~ 5250 3700
Wire Wire Line
	5250 3700 5250 3800
Wire Wire Line
	2800 1700 2800 2150
Wire Wire Line
	2800 2250 2800 2700
Wire Wire Line
	3150 2200 2950 2200
Wire Wire Line
	2950 2200 2950 2350
Connection ~ 6200 1700
Wire Wire Line
	6200 2100 6200 2300
Connection ~ 6200 2100
Wire Wire Line
	6200 1700 6200 2100
Wire Wire Line
	6200 1300 6200 1700
Wire Wire Line
	6400 1700 6200 1700
Wire Wire Line
	6400 2100 6200 2100
Wire Wire Line
	6400 1300 6200 1300
$Comp
L power:GNDD #PWR021
U 1 1 6062BBC7
P 6200 2300
F 0 "#PWR021" H 6200 2050 50  0001 C CNN
F 1 "GNDD" H 6204 2145 50  0000 C CNN
F 2 "" H 6200 2300 50  0001 C CNN
F 3 "" H 6200 2300 50  0001 C CNN
	1    6200 2300
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D10
U 1 1 60608AFB
P 6550 2100
F 0 "D10" H 6543 2317 50  0000 C CNN
F 1 "LED" H 6543 2226 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm_FlatTop" H 6550 2100 50  0001 C CNN
F 3 "~" H 6550 2100 50  0001 C CNN
	1    6550 2100
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D9
U 1 1 60608728
P 6550 1700
F 0 "D9" H 6543 1917 50  0000 C CNN
F 1 "LED" H 6543 1826 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm_FlatTop" H 6550 1700 50  0001 C CNN
F 3 "~" H 6550 1700 50  0001 C CNN
	1    6550 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D8
U 1 1 60605992
P 6550 1300
F 0 "D8" H 6543 1517 50  0000 C CNN
F 1 "LED" H 6543 1426 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm_FlatTop" H 6550 1300 50  0001 C CNN
F 3 "~" H 6550 1300 50  0001 C CNN
	1    6550 1300
	1    0    0    -1  
$EndComp
Text GLabel 7200 1300 2    50   Input ~ 0
D3
Text GLabel 7200 1700 2    50   Input ~ 0
D5
Text GLabel 7200 2100 2    50   Input ~ 0
D6
$Comp
L Device:R R10
U 1 1 607B4949
P 7050 2100
F 0 "R10" V 6843 2100 50  0000 C CNN
F 1 "1K" V 6934 2100 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6980 2100 50  0001 C CNN
F 3 "~" H 7050 2100 50  0001 C CNN
	1    7050 2100
	0    1    1    0   
$EndComp
$Comp
L Device:R R9
U 1 1 607B458A
P 7050 1700
F 0 "R9" V 6843 1700 50  0000 C CNN
F 1 "1K" V 6934 1700 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6980 1700 50  0001 C CNN
F 3 "~" H 7050 1700 50  0001 C CNN
	1    7050 1700
	0    1    1    0   
$EndComp
Wire Wire Line
	6700 1700 6900 1700
Wire Wire Line
	6700 1300 6900 1300
Wire Wire Line
	6700 2100 6900 2100
$Comp
L Device:R R8
U 1 1 605FFAEB
P 7050 1300
F 0 "R8" V 6843 1300 50  0000 C CNN
F 1 "1K" V 6934 1300 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6980 1300 50  0001 C CNN
F 3 "~" H 7050 1300 50  0001 C CNN
	1    7050 1300
	0    1    1    0   
$EndComp
Wire Wire Line
	2800 2700 3650 2700
Wire Wire Line
	2800 1700 3650 1700
$Comp
L CSTCE16M0V53-R0:CSTCE16M0V53-R0 Y1
U 1 1 609F5314
P 3550 2200
F 0 "Y1" V 3300 1900 50  0000 L CNN
F 1 "CSTCE16M0V53-R0" V 3200 1500 50  0000 L CNN
F 2 "CSTCE16:OSC_CSTCE16M0V53-R0" H 3550 2200 50  0001 L BNN
F 3 "" H 3550 2200 50  0001 L BNN
F 4 "Murata" H 3550 2200 50  0001 L BNN "MANUFACTURER"
F 5 "1.00mm" H 3550 2200 50  0001 L BNN "MAXIMUM_PACKAGE_HEIGHT"
F 6 "Manufacturer Recommendations" H 3550 2200 50  0001 L BNN "STANDARD"
F 7 "May 7, 2019" H 3550 2200 50  0001 L BNN "PARTREV"
	1    3550 2200
	0    1    1    0   
$EndComp
Text GLabel 10550 3750 2    50   Input ~ 0
D8
$Comp
L Connector_Generic:Conn_02x03_Odd_Even JP2
U 1 1 606240DC
P 1750 5000
F 0 "JP2" H 1800 5317 50  0000 C CNN
F 1 "AVR ISP" H 1800 5226 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical_SMD" H 1750 5000 50  0001 C CNN
F 3 "~" H 1750 5000 50  0001 C CNN
	1    1750 5000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 606B9DBE
P 10400 2250
F 0 "R6" V 10300 2150 50  0000 C CNN
F 1 "1K" V 10300 2300 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 10330 2250 50  0001 C CNN
F 3 "~" H 10400 2250 50  0001 C CNN
	1    10400 2250
	0    1    1    0   
$EndComp
$Comp
L Device:R R7
U 1 1 606BA97F
P 10400 2750
F 0 "R7" V 10300 2650 50  0000 C CNN
F 1 "1K" V 10300 2800 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 10330 2750 50  0001 C CNN
F 3 "~" H 10400 2750 50  0001 C CNN
	1    10400 2750
	0    1    1    0   
$EndComp
$Comp
L Device:R R11
U 1 1 606BB499
P 10400 3250
F 0 "R11" V 10300 3150 50  0000 C CNN
F 1 "1K" V 10300 3300 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 10330 3250 50  0001 C CNN
F 3 "~" H 10400 3250 50  0001 C CNN
	1    10400 3250
	0    1    1    0   
$EndComp
$Comp
L Device:R R20
U 1 1 606BB80B
P 10400 3750
F 0 "R20" V 10300 3650 50  0000 C CNN
F 1 "1K" V 10300 3800 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 10330 3750 50  0001 C CNN
F 3 "~" H 10400 3750 50  0001 C CNN
	1    10400 3750
	0    1    1    0   
$EndComp
$Comp
L Device:LED D11
U 1 1 606E7E1B
P 6550 900
F 0 "D11" H 6543 1117 50  0000 C CNN
F 1 "LED" H 6543 1026 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm_FlatTop" H 6550 900 50  0001 C CNN
F 3 "~" H 6550 900 50  0001 C CNN
	1    6550 900 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R21
U 1 1 606E829A
P 7050 900
F 0 "R21" V 6843 900 50  0000 C CNN
F 1 "1K" V 6934 900 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6980 900 50  0001 C CNN
F 3 "~" H 7050 900 50  0001 C CNN
	1    7050 900 
	0    1    1    0   
$EndComp
Text GLabel 7200 900  2    50   Input ~ 0
D13
Wire Wire Line
	6700 900  6900 900 
Wire Wire Line
	6400 900  6200 900 
Wire Wire Line
	6200 900  6200 1300
Connection ~ 6200 1300
$EndSCHEMATC
