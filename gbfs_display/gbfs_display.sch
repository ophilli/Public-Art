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
LIBS:gbfs_display-cache
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
F 2 "gbfs_display:NeoConnect_SolderWirePad_3x_2-5mmDrill" H 2850 3050 60  0001 C CNN
F 3 "" H 2850 3050 60  0001 C CNN
	1    2850 3150
	1    0    0    -1  
$EndComp
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
	2050 2700 2050 2400
Wire Wire Line
	2350 2800 2350 2400
Wire Wire Line
	5500 2500 4850 2500
Wire Wire Line
	5000 2700 4850 2700
Wire Wire Line
	5500 2700 5300 2700
Wire Wire Line
	5150 2350 5150 2400
Wire Wire Line
	5500 2400 4850 2400
Connection ~ 2350 2500
Connection ~ 2050 2500
Connection ~ 2050 2700
Wire Wire Line
	2450 2700 2050 2700
Wire Wire Line
	3700 2500 3750 2500
Wire Wire Line
	2450 2800 2350 2800
Wire Wire Line
	6950 2500 6950 1900
Wire Wire Line
	6600 2500 6950 2500
Connection ~ 5150 2400
Wire Wire Line
	3750 2400 3550 2400
Wire Wire Line
	6750 2400 6600 2400
Wire Wire Line
	6750 1900 6750 2400
Wire Wire Line
	3750 2700 3250 2700
Connection ~ 2350 2800
NoConn ~ 3250 2800
$Comp
L aux_conn P1
U 1 1 5A07C2BB
P 3950 3950
F 0 "P1" H 3950 4100 50  0000 C CNN
F 1 "power" V 4050 3950 50  0000 C CNN
F 2 "gbfs_display:Power_SolderWirePad_2x_2-5mmDrill" H 3950 3950 50  0001 C CNN
F 3 "" H 3950 3950 50  0000 C CNN
	1    3950 3950
	-1   0    0    1   
$EndComp
Wire Wire Line
	4250 3900 4150 3900
Wire Wire Line
	4150 4000 4500 4000
$Comp
L aux_conn P2
U 1 1 5A07C552
P 3950 3600
F 0 "P2" H 3950 3750 50  0000 C CNN
F 1 "power" V 4050 3600 50  0000 C CNN
F 2 "gbfs_display:Power_SolderWirePad_2x_2-5mmDrill" H 3950 3600 50  0001 C CNN
F 3 "" H 3950 3600 50  0000 C CNN
	1    3950 3600
	-1   0    0    1   
$EndComp
Wire Wire Line
	4250 3550 4150 3550
Wire Wire Line
	4150 3650 4500 3650
Text Label 4500 3650 0    60   ~ 0
GND
Text Label 2050 2400 1    60   ~ 0
GND
Text Label 5150 2350 1    60   ~ 0
GND
Text Label 6750 1900 1    60   ~ 0
GND
Text Label 3550 2400 2    60   ~ 0
GND
Text Label 4500 4000 0    60   ~ 0
GND
Text Label 6950 1900 1    60   ~ 0
5v
Text Label 3700 2500 2    60   ~ 0
5v
Text Label 4250 3550 0    60   ~ 0
5v
Text Label 4250 3900 0    60   ~ 0
5v
Text Label 2350 2400 1    60   ~ 0
5v
$EndSCHEMATC
