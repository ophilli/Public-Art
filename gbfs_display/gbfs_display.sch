EESchema Schematic File Version 2
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
LIBS:gbfs_lib
EELAYER 25 0
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
L esp8266_thing_dev U1
U 1 1 5A077711
P 6050 2850
F 0 "U1" H 6050 3350 60  0000 C CNN
F 1 "esp8266_thing_dev" H 6050 3450 60  0000 C CNN
F 2 "gbfs_display:esp8266_thing" H 6050 2750 60  0001 C CNN
F 3 "" H 6050 2750 60  0001 C CNN
	1    6050 2850
	1    0    0    -1  
$EndComp
$Comp
L Logic_Level_BiDirectional LLC1
U 1 1 5A07797C
P 4300 2250
F 0 "LLC1" H 4300 2700 60  0000 C CNN
F 1 "Logic_Level_BiDirectional" H 4300 2850 60  0000 C CNN
F 2 "gbfs_display:Logic_Level_Bidirectional" H 4300 2150 60  0001 C CNN
F 3 "" H 4300 2150 60  0001 C CNN
	1    4300 2250
	-1   0    0    1   
$EndComp
$Comp
L Neopixel NP1
U 1 1 5A077C81
P 2850 3150
F 0 "NP1" H 2850 3400 60  0000 C CNN
F 1 "Neopixel" H 2850 3700 60  0000 C CNN
F 2 "Wire_Pads:SolderWirePad_3x_2-5mmDrill" H 2850 3050 60  0001 C CNN
F 3 "" H 2850 3050 60  0001 C CNN
	1    2850 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 2800 3350 2800
Connection ~ 2350 2800
Wire Wire Line
	3750 2700 3250 2700
Wire Wire Line
	6750 1900 6750 2400
Wire Wire Line
	6750 2400 6600 2400
Wire Wire Line
	3750 2400 3550 2400
NoConn ~ 6600 2600
NoConn ~ 6600 2700
NoConn ~ 6600 2800
NoConn ~ 6600 2900
NoConn ~ 6600 3000
NoConn ~ 6600 3100
NoConn ~ 6600 3200
NoConn ~ 6600 3300
NoConn ~ 5500 3100
NoConn ~ 5500 3000
NoConn ~ 5500 2900
NoConn ~ 5500 2800
NoConn ~ 5500 2600
NoConn ~ 5500 3300
NoConn ~ 4850 2600
NoConn ~ 4850 2300
NoConn ~ 4850 2200
NoConn ~ 3750 2200
NoConn ~ 3750 2300
NoConn ~ 3750 2600
$Comp
L GND #PWR01
U 1 1 5A079FFC
P 6750 1900
F 0 "#PWR01" H 6750 1650 50  0001 C CNN
F 1 "GND" H 6750 1750 50  0000 C CNN
F 2 "" H 6750 1900 50  0000 C CNN
F 3 "" H 6750 1900 50  0000 C CNN
	1    6750 1900
	-1   0    0    1   
$EndComp
$Comp
L +5V #PWR02
U 1 1 5A07A01E
P 6950 1900
F 0 "#PWR02" H 6950 1750 50  0001 C CNN
F 1 "+5V" H 6950 2040 50  0000 C CNN
F 2 "" H 6950 1900 50  0000 C CNN
F 3 "" H 6950 1900 50  0000 C CNN
	1    6950 1900
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR03
U 1 1 5A07A062
P 3700 2500
F 0 "#PWR03" H 3700 2350 50  0001 C CNN
F 1 "+5V" H 3700 2640 50  0000 C CNN
F 2 "" H 3700 2500 50  0000 C CNN
F 3 "" H 3700 2500 50  0000 C CNN
	1    3700 2500
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR04
U 1 1 5A07A08C
P 3550 2400
F 0 "#PWR04" H 3550 2150 50  0001 C CNN
F 1 "GND" H 3550 2250 50  0000 C CNN
F 2 "" H 3550 2400 50  0000 C CNN
F 3 "" H 3550 2400 50  0000 C CNN
	1    3550 2400
	0    1    1    0   
$EndComp
$Comp
L GND #PWR05
U 1 1 5A07A0D0
P 2050 2400
F 0 "#PWR05" H 2050 2150 50  0001 C CNN
F 1 "GND" H 2050 2250 50  0000 C CNN
F 2 "" H 2050 2400 50  0000 C CNN
F 3 "" H 2050 2400 50  0000 C CNN
	1    2050 2400
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR06
U 1 1 5A07A0F2
P 5150 2350
F 0 "#PWR06" H 5150 2100 50  0001 C CNN
F 1 "GND" H 5150 2200 50  0000 C CNN
F 2 "" H 5150 2350 50  0000 C CNN
F 3 "" H 5150 2350 50  0000 C CNN
	1    5150 2350
	-1   0    0    1   
$EndComp
Connection ~ 5150 2400
Wire Wire Line
	6600 2500 6950 2500
Wire Wire Line
	6950 2500 6950 1900
Wire Wire Line
	2450 2800 2350 2800
Wire Wire Line
	3700 2500 3750 2500
$Comp
L +5V #PWR07
U 1 1 5A07AABD
P 2350 2400
F 0 "#PWR07" H 2350 2250 50  0001 C CNN
F 1 "+5V" H 2350 2540 50  0000 C CNN
F 2 "" H 2350 2400 50  0000 C CNN
F 3 "" H 2350 2400 50  0000 C CNN
	1    2350 2400
	1    0    0    -1  
$EndComp
$Comp
L CP1 C1
U 1 1 5A07B05B
P 2200 2500
F 0 "C1" V 2250 2550 50  0000 L CNN
F 1 "1000µF" V 2350 2350 50  0000 L CNN
F 2 "Capacitors_ThroughHole:CP_Radial_D10.0mm_P5.00mm" H 2200 2500 50  0001 C CNN
F 3 "" H 2200 2500 50  0000 C CNN
	1    2200 2500
	0    1    1    0   
$EndComp
Wire Wire Line
	2450 2700 2050 2700
Connection ~ 2050 2700
Connection ~ 2050 2500
Connection ~ 2350 2500
$Comp
L R R1
U 1 1 5A07B57F
P 5150 2700
F 0 "R1" V 5230 2700 50  0000 C CNN
F 1 "470Ω" V 5150 2700 50  0000 C CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 5080 2700 50  0001 C CNN
F 3 "" H 5150 2700 50  0000 C CNN
	1    5150 2700
	0    1    1    0   
$EndComp
Wire Wire Line
	5500 2400 4850 2400
Wire Wire Line
	5150 2350 5150 2400
Wire Wire Line
	5500 2700 5300 2700
Wire Wire Line
	5000 2700 4850 2700
Wire Wire Line
	5500 2500 4850 2500
NoConn ~ 3350 2800
Wire Wire Line
	2350 2800 2350 2400
Wire Wire Line
	2050 2700 2050 2400
$EndSCHEMATC
