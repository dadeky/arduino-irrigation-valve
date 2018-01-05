EESchema Schematic File Version 2
LIBS:IrrigationValve-rescue
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:arduino
LIBS:dconn
LIBS:IrrigationValve-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Irrigation Valve"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L D D1
U 1 1 55D45780
P 4600 3400
F 0 "D1" H 4600 3500 50  0000 C CNN
F 1 "1N4004" H 4600 3300 50  0000 C CNN
F 2 "Diodes_ThroughHole:Diode_DO-201AD_Horizontal_RM15" H 4600 3400 60  0001 C CNN
F 3 "" H 4600 3400 60  0000 C CNN
	1    4600 3400
	0    1    1    0   
$EndComp
$Comp
L arduino_nano U1
U 1 1 55D46E8E
P 2950 4700
F 0 "U1" H 3450 3550 70  0000 C CNN
F 1 "arduino_nano" H 3700 3450 70  0000 C CNN
F 2 "lib:arduino_nano" H 2950 4650 60  0001 C CNN
F 3 "" H 2950 4700 60  0000 C CNN
	1    2950 4700
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR01
U 1 1 55D47155
P 2100 5500
F 0 "#PWR01" H 2100 5350 50  0001 C CNN
F 1 "+12V" H 2100 5640 50  0000 C CNN
F 2 "" H 2100 5500 60  0000 C CNN
F 3 "" H 2100 5500 60  0000 C CNN
	1    2100 5500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2250 5500 2100 5500
Wire Wire Line
	5000 3550 5000 4000
$Comp
L +12V #PWR02
U 1 1 55D4740C
P 5000 2800
F 0 "#PWR02" H 5000 2650 50  0001 C CNN
F 1 "+12V" H 5000 2940 50  0000 C CNN
F 2 "" H 5000 2800 60  0000 C CNN
F 3 "" H 5000 2800 60  0000 C CNN
	1    5000 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 3250 4600 3100
Wire Wire Line
	4600 3100 5000 3100
Wire Wire Line
	4600 3550 4600 3750
Wire Wire Line
	4600 3750 5000 3750
Wire Wire Line
	5000 2800 5000 3350
$Comp
L BARREL_JACK CON1
U 1 1 55D47E87
P 2900 3150
F 0 "CON1" H 2900 3400 60  0000 C CNN
F 1 "BARREL_JACK" H 2900 2950 60  0000 C CNN
F 2 "Connect:BARREL_JACK" H 2900 3150 60  0001 C CNN
F 3 "" H 2900 3150 60  0000 C CNN
	1    2900 3150
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR03
U 1 1 55D47ECF
P 3650 3050
F 0 "#PWR03" H 3650 2900 50  0001 C CNN
F 1 "+12V" H 3650 3190 50  0000 C CNN
F 2 "" H 3650 3050 60  0000 C CNN
F 3 "" H 3650 3050 60  0000 C CNN
	1    3650 3050
	0    1    1    0   
$EndComp
Wire Wire Line
	3650 3050 3200 3050
$Comp
L GND #PWR04
U 1 1 55D47F34
P 3450 3250
F 0 "#PWR04" H 3450 3000 50  0001 C CNN
F 1 "GND" H 3450 3100 50  0000 C CNN
F 2 "" H 3450 3250 60  0000 C CNN
F 3 "" H 3450 3250 60  0000 C CNN
	1    3450 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 3250 3450 3250
$Comp
L DCONN_2 C1
U 1 1 55D488CE
P 5450 3450
F 0 "C1" V 5400 3450 50  0000 C CNN
F 1 "DCONN_2" V 5500 3450 40  0000 C CNN
F 2 "Connect:AK300-2" H 5450 3450 60  0001 C CNN
F 3 "" H 5450 3450 60  0000 C CNN
	1    5450 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 3350 5100 3350
Connection ~ 5000 3100
Wire Wire Line
	5100 3550 5000 3550
Connection ~ 5000 3750
$Comp
L R R2
U 1 1 55D5A9D9
P 1600 4800
F 0 "R2" V 1680 4800 50  0000 C CNN
F 1 "PHOTORESISTOR" V 1600 4800 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Vertical_RM5mm" V 1530 4800 30  0001 C CNN
F 3 "" H 1600 4800 30  0000 C CNN
	1    1600 4800
	-1   0    0    1   
$EndComp
Wire Wire Line
	1600 4400 1600 4650
Connection ~ 1600 4400
$Comp
L R R3
U 1 1 55D5AD14
P 1100 4400
F 0 "R3" V 1180 4400 50  0000 C TNN
F 1 "470" V 1100 4400 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Vertical_RM5mm" V 1030 4400 30  0001 C CNN
F 3 "" H 1100 4400 30  0000 C CNN
	1    1100 4400
	0    1    1    0   
$EndComp
NoConn ~ 3200 3150
NoConn ~ 2250 4100
NoConn ~ 2250 4200
NoConn ~ 2250 4300
NoConn ~ 2250 4600
NoConn ~ 2250 4700
NoConn ~ 2250 4800
NoConn ~ 2250 4900
NoConn ~ 2250 5000
NoConn ~ 2250 5100
NoConn ~ 2250 5300
NoConn ~ 3650 4200
NoConn ~ 3650 4300
NoConn ~ 3650 4400
NoConn ~ 3650 4500
NoConn ~ 3650 4600
NoConn ~ 3650 4700
NoConn ~ 3650 4800
NoConn ~ 3650 4900
NoConn ~ 3650 5000
NoConn ~ 3650 5100
NoConn ~ 3650 5400
NoConn ~ 3650 5500
$Comp
L POT-RESCUE-IrrigationValve RV1
U 1 1 55E93CB9
P 1600 4000
F 0 "RV1" H 1600 3900 50  0000 C CNN
F 1 "POT" H 1600 4000 50  0000 C CNN
F 2 "Potentiometers:Potentiometer_Alps-RK16-single" H 1600 4000 60  0001 C CNN
F 3 "" H 1600 4000 60  0000 C CNN
	1    1600 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 3850 2100 3850
Wire Wire Line
	2100 3850 2100 4500
Wire Wire Line
	2100 4500 2250 4500
$Comp
L +5V #PWR05
U 1 1 55E9407B
P 1600 5150
F 0 "#PWR05" H 1600 5000 50  0001 C CNN
F 1 "+5V" H 1600 5290 50  0000 C CNN
F 2 "" H 1600 5150 60  0000 C CNN
F 3 "" H 1600 5150 60  0000 C CNN
	1    1600 5150
	-1   0    0    1   
$EndComp
Wire Wire Line
	1600 5150 1600 4950
$Comp
L +5V #PWR06
U 1 1 55E9432A
P 1350 4150
F 0 "#PWR06" H 1350 4000 50  0001 C CNN
F 1 "+5V" H 1350 4290 50  0000 C CNN
F 2 "" H 1350 4150 60  0000 C CNN
F 3 "" H 1350 4150 60  0000 C CNN
	1    1350 4150
	-1   0    0    1   
$EndComp
Wire Wire Line
	1350 4000 1350 4150
$Comp
L +5V #PWR07
U 1 1 55E94426
P 2000 5200
F 0 "#PWR07" H 2000 5050 50  0001 C CNN
F 1 "+5V" H 2000 5340 50  0000 C CNN
F 2 "" H 2000 5200 60  0000 C CNN
F 3 "" H 2000 5200 60  0000 C CNN
	1    2000 5200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2250 5200 2000 5200
$Comp
L GND #PWR08
U 1 1 55E9448C
P 1850 4150
F 0 "#PWR08" H 1850 3900 50  0001 C CNN
F 1 "GND" H 1850 4000 50  0000 C CNN
F 2 "" H 1850 4150 60  0000 C CNN
F 3 "" H 1850 4150 60  0000 C CNN
	1    1850 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 4000 1850 4150
Wire Wire Line
	1250 4400 2250 4400
$Comp
L GND #PWR09
U 1 1 560E7B77
P 800 4500
F 0 "#PWR09" H 800 4250 50  0001 C CNN
F 1 "GND" H 800 4350 50  0000 C CNN
F 2 "" H 800 4500 60  0000 C CNN
F 3 "" H 800 4500 60  0000 C CNN
	1    800  4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	800  4500 800  4400
Wire Wire Line
	800  4400 950  4400
$Comp
L GND #PWR010
U 1 1 560E7E24
P 1500 5550
F 0 "#PWR010" H 1500 5300 50  0001 C CNN
F 1 "GND" H 1500 5400 50  0000 C CNN
F 2 "" H 1500 5550 60  0000 C CNN
F 3 "" H 1500 5550 60  0000 C CNN
	1    1500 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 5400 1500 5400
Wire Wire Line
	1500 5400 1500 5550
$Comp
L IRL540N Q1
U 1 1 561BC42C
P 4900 4200
F 0 "Q1" H 5150 4275 50  0000 L CNN
F 1 "IRL540N" H 5150 4200 50  0000 L CNN
F 2 "Power_Integrations:TO-220" H 5150 4125 50  0001 L CIN
F 3 "" H 4900 4200 50  0000 L CNN
	1    4900 4200
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 561BC62C
P 4350 4250
F 0 "R1" V 4430 4250 50  0000 C CNN
F 1 "1K" V 4350 4250 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Vertical_RM5mm" V 4280 4250 30  0001 C CNN
F 3 "" H 4350 4250 30  0000 C CNN
	1    4350 4250
	0    1    1    0   
$EndComp
Wire Wire Line
	3650 4100 3950 4100
Wire Wire Line
	3950 4100 3950 4250
Wire Wire Line
	3950 4250 4200 4250
Wire Wire Line
	4500 4250 4700 4250
$Comp
L GND #PWR011
U 1 1 561BC78C
P 5000 4650
F 0 "#PWR011" H 5000 4400 50  0001 C CNN
F 1 "GND" H 5000 4500 50  0000 C CNN
F 2 "" H 5000 4650 60  0000 C CNN
F 3 "" H 5000 4650 60  0000 C CNN
	1    5000 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 4400 5000 4650
Connection ~ 4600 4250
Connection ~ 5000 4550
$Comp
L R R4
U 1 1 561BC892
P 4800 4550
F 0 "R4" V 4880 4550 50  0000 C CNN
F 1 "10K" V 4800 4550 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Vertical_RM5mm" V 4730 4550 30  0001 C CNN
F 3 "" H 4800 4550 30  0000 C CNN
	1    4800 4550
	0    1    1    0   
$EndComp
Wire Wire Line
	4600 4250 4600 4550
Wire Wire Line
	4600 4550 4650 4550
Wire Wire Line
	5000 4550 4950 4550
$EndSCHEMATC
