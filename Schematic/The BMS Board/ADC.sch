EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 3 4
Title "the BMS Board - the Measurement"
Date "2021-02-07"
Rev "A2"
Comp "simple-ee.com"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L ADC:ADS1119IPWR U?
U 1 1 5E2104E8
P 3625 2300
AR Path="/5E2104E8" Ref="U?"  Part="1" 
AR Path="/5E20C295/5E2104E8" Ref="U301"  Part="1" 
F 0 "U301" H 3825 2800 50  0000 C CNN
F 1 "ADS1119IPWR" H 3625 1800 50  0000 C CNN
F 2 "SSOP:TSSOP-16" H 2825 3500 60  0001 C CNN
F 3 "" H 2825 3500 60  0001 C CNN
F 4 "2V - 5V5" H 2875 3650 60  0001 C CNN "P_Rating"
F 5 "Texas Instruments" H 2825 3500 60  0001 C CNN "Manufacturer"
F 6 "16-BIT" H 2825 3500 60  0001 C CNN "P_Value"
F 7 "4S_2D" H 2825 3500 60  0001 C CNN "P_Tolerance"
F 8 "TSSOP-16" H 2825 3500 60  0001 C CNN "Package"
	1    3625 2300
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E2104EE
P 4100 2700
AR Path="/5E2104EE" Ref="#PWR?"  Part="1" 
AR Path="/5E20C295/5E2104EE" Ref="#PWR0316"  Part="1" 
F 0 "#PWR0316" H 4100 2450 50  0001 C CNN
F 1 "GND" H 4100 2550 50  0000 C CNN
F 2 "" H 4100 2700 50  0001 C CNN
F 3 "" H 4100 2700 50  0001 C CNN
	1    4100 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4025 2550 4100 2550
Wire Wire Line
	4100 2550 4100 2650
Wire Wire Line
	4025 2650 4100 2650
Connection ~ 4100 2650
Wire Wire Line
	4100 2650 4100 2700
$Comp
L Capacitor_0603:CL10B104KB8NNNC C?
U 1 1 5E2104FE
P 3150 1125
AR Path="/5E2104FE" Ref="C?"  Part="1" 
AR Path="/5E20C295/5E2104FE" Ref="C301"  Part="1" 
F 0 "C301" H 3175 1225 50  0000 L CNN
F 1 "CL10B104KB8NNNC" H 3150 1425 50  0001 L CNN
F 2 "Passives:C_0603_Handsolder" H 3150 525 50  0001 C CNN
F 3 "" H 3175 1225 50  0000 C CNN
F 4 " 	Samsung Electro-Mechanics" H 3275 1325 50  0001 C CNN "Manufacturer"
F 5 "0.1uF" H 3250 1125 50  0000 L CNN "P_Value"
F 6 "50V" H 3200 1050 25  0000 L CNN "P_Rating_U"
F 7 "X7R" H 3400 775 50  0001 C CNN "P_Tolerance"
F 8 "0603" H 3200 1000 25  0000 L CNN "Package"
	1    3150 1125
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5E210504
P 3150 925
AR Path="/5E210504" Ref="#PWR?"  Part="1" 
AR Path="/5E20C295/5E210504" Ref="#PWR0302"  Part="1" 
F 0 "#PWR0302" H 3150 775 50  0001 C CNN
F 1 "+5V" H 3150 1075 50  0000 C CNN
F 2 "" H 3150 925 50  0001 C CNN
F 3 "" H 3150 925 50  0001 C CNN
	1    3150 925 
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 925  3150 975 
$Comp
L power:GND #PWR?
U 1 1 5E21050B
P 3150 1350
AR Path="/5E21050B" Ref="#PWR?"  Part="1" 
AR Path="/5E20C295/5E21050B" Ref="#PWR0303"  Part="1" 
F 0 "#PWR0303" H 3150 1100 50  0001 C CNN
F 1 "GND" H 3150 1200 50  0000 C CNN
F 2 "" H 3150 1350 50  0001 C CNN
F 3 "" H 3150 1350 50  0001 C CNN
	1    3150 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 1350 3150 1275
$Comp
L Capacitor_0603:CL10B104KB8NNNC C?
U 1 1 5E210517
P 3575 1125
AR Path="/5E210517" Ref="C?"  Part="1" 
AR Path="/5E20C295/5E210517" Ref="C303"  Part="1" 
F 0 "C303" H 3600 1225 50  0000 L CNN
F 1 "CL10B104KB8NNNC" H 3575 1425 50  0001 L CNN
F 2 "Passives:C_0603_Handsolder" H 3575 525 50  0001 C CNN
F 3 "" H 3600 1225 50  0000 C CNN
F 4 " 	Samsung Electro-Mechanics" H 3700 1325 50  0001 C CNN "Manufacturer"
F 5 "0.1uF" H 3675 1125 50  0000 L CNN "P_Value"
F 6 "50V" H 3625 1050 25  0000 L CNN "P_Rating_U"
F 7 "X7R" H 3825 775 50  0001 C CNN "P_Tolerance"
F 8 "0603" H 3625 1000 25  0000 L CNN "Package"
	1    3575 1125
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5E21051D
P 3575 925
AR Path="/5E21051D" Ref="#PWR?"  Part="1" 
AR Path="/5E20C295/5E21051D" Ref="#PWR0309"  Part="1" 
F 0 "#PWR0309" H 3575 775 50  0001 C CNN
F 1 "+5V" H 3575 1075 50  0000 C CNN
F 2 "" H 3575 925 50  0001 C CNN
F 3 "" H 3575 925 50  0001 C CNN
	1    3575 925 
	1    0    0    -1  
$EndComp
Wire Wire Line
	3575 925  3575 975 
$Comp
L power:GND #PWR?
U 1 1 5E210524
P 3575 1350
AR Path="/5E210524" Ref="#PWR?"  Part="1" 
AR Path="/5E20C295/5E210524" Ref="#PWR0310"  Part="1" 
F 0 "#PWR0310" H 3575 1100 50  0001 C CNN
F 1 "GND" H 3575 1200 50  0000 C CNN
F 2 "" H 3575 1350 50  0001 C CNN
F 3 "" H 3575 1350 50  0001 C CNN
	1    3575 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3575 1350 3575 1275
$Comp
L Capacitor_0603:CL10B104KB8NNNC C?
U 1 1 5E210530
P 4000 1125
AR Path="/5E210530" Ref="C?"  Part="1" 
AR Path="/5E20C295/5E210530" Ref="C305"  Part="1" 
F 0 "C305" H 4025 1225 50  0000 L CNN
F 1 "CL10B104KB8NNNC" H 4000 1425 50  0001 L CNN
F 2 "Passives:C_0603_Handsolder" H 4000 525 50  0001 C CNN
F 3 "" H 4025 1225 50  0000 C CNN
F 4 " 	Samsung Electro-Mechanics" H 4125 1325 50  0001 C CNN "Manufacturer"
F 5 "0.1uF" H 4100 1125 50  0000 L CNN "P_Value"
F 6 "50V" H 4050 1050 25  0000 L CNN "P_Rating_U"
F 7 "X7R" H 4250 775 50  0001 C CNN "P_Tolerance"
F 8 "0603" H 4050 1000 25  0000 L CNN "Package"
	1    4000 1125
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5E210536
P 4000 925
AR Path="/5E210536" Ref="#PWR?"  Part="1" 
AR Path="/5E20C295/5E210536" Ref="#PWR0313"  Part="1" 
F 0 "#PWR0313" H 4000 775 50  0001 C CNN
F 1 "+5V" H 4000 1075 50  0000 C CNN
F 2 "" H 4000 925 50  0001 C CNN
F 3 "" H 4000 925 50  0001 C CNN
	1    4000 925 
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 925  4000 975 
$Comp
L power:GND #PWR?
U 1 1 5E21053D
P 4000 1350
AR Path="/5E21053D" Ref="#PWR?"  Part="1" 
AR Path="/5E20C295/5E21053D" Ref="#PWR0314"  Part="1" 
F 0 "#PWR0314" H 4000 1100 50  0001 C CNN
F 1 "GND" H 4000 1200 50  0000 C CNN
F 2 "" H 4000 1350 50  0001 C CNN
F 3 "" H 4000 1350 50  0001 C CNN
	1    4000 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 1350 4000 1275
$Comp
L power:+5V #PWR?
U 1 1 5E210544
P 3125 1900
AR Path="/5E210544" Ref="#PWR?"  Part="1" 
AR Path="/5E20C295/5E210544" Ref="#PWR0301"  Part="1" 
F 0 "#PWR0301" H 3125 1750 50  0001 C CNN
F 1 "+5V" H 3125 2050 50  0000 C CNN
F 2 "" H 3125 1900 50  0001 C CNN
F 3 "" H 3125 1900 50  0001 C CNN
	1    3125 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3125 1900 3125 1950
Wire Wire Line
	3125 1950 3225 1950
$Comp
L power:+5V #PWR?
U 1 1 5E21054C
P 4100 1875
AR Path="/5E21054C" Ref="#PWR?"  Part="1" 
AR Path="/5E20C295/5E21054C" Ref="#PWR0315"  Part="1" 
F 0 "#PWR0315" H 4100 1725 50  0001 C CNN
F 1 "+5V" H 4100 2025 50  0000 C CNN
F 2 "" H 4100 1875 50  0001 C CNN
F 3 "" H 4100 1875 50  0001 C CNN
	1    4100 1875
	1    0    0    -1  
$EndComp
Wire Wire Line
	4025 1950 4100 1950
Wire Wire Line
	4100 1950 4100 1875
Wire Wire Line
	4025 2050 4100 2050
Wire Wire Line
	4100 2050 4100 1950
Connection ~ 4100 1950
$Comp
L power:GND #PWR?
U 1 1 5E210557
P 3175 2700
AR Path="/5E210557" Ref="#PWR?"  Part="1" 
AR Path="/5E20C295/5E210557" Ref="#PWR0304"  Part="1" 
F 0 "#PWR0304" H 3175 2450 50  0001 C CNN
F 1 "GND" H 3175 2550 50  0000 C CNN
F 2 "" H 3175 2700 50  0001 C CNN
F 3 "" H 3175 2700 50  0001 C CNN
	1    3175 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3225 2650 3175 2650
Wire Wire Line
	3175 2650 3175 2700
Wire Wire Line
	3050 2050 3225 2050
Wire Wire Line
	3050 2150 3225 2150
Text Label 3050 2050 0    50   ~ 0
SCL
Text Label 3050 2150 0    50   ~ 0
SDA
Wire Wire Line
	3225 2250 3050 2250
Wire Wire Line
	3225 2350 3050 2350
Text Label 3050 2250 0    50   ~ 0
+5V
Text Label 3050 2350 0    50   ~ 0
GND
Wire Wire Line
	3225 2550 3050 2550
Text Label 3050 2550 0    50   ~ 0
+5V
Wire Wire Line
	4025 2150 4225 2150
Wire Wire Line
	4025 2250 4225 2250
Wire Wire Line
	4025 2350 4225 2350
Wire Wire Line
	4025 2450 4225 2450
Text Label 4225 2150 2    50   ~ 0
C4
Text Label 4225 2250 2    50   ~ 0
C5
Text Label 4225 2350 2    50   ~ 0
C6
Text Label 4225 2450 2    50   ~ 0
C7
Text Notes 2275 2425 0    50   ~ 0
I2C ADDRESS:\n0h41
$Comp
L ADC:ADS1119IPWR U?
U 1 1 5E214D50
P 3775 6100
AR Path="/5E214D50" Ref="U?"  Part="1" 
AR Path="/5E20C295/5E214D50" Ref="U302"  Part="1" 
F 0 "U302" H 3975 6600 50  0000 C CNN
F 1 "ADS1119IPWR" H 3775 5600 50  0000 C CNN
F 2 "SSOP:TSSOP-16" H 2975 7300 60  0001 C CNN
F 3 "" H 2975 7300 60  0001 C CNN
F 4 "2V - 5V5" H 3025 7450 60  0001 C CNN "P_Rating"
F 5 "Texas Instruments" H 2975 7300 60  0001 C CNN "Manufacturer"
F 6 "16-BIT" H 2975 7300 60  0001 C CNN "P_Value"
F 7 "4S_2D" H 2975 7300 60  0001 C CNN "P_Tolerance"
F 8 "TSSOP-16" H 2975 7300 60  0001 C CNN "Package"
	1    3775 6100
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E214D56
P 4250 6500
AR Path="/5E214D56" Ref="#PWR?"  Part="1" 
AR Path="/5E20C295/5E214D56" Ref="#PWR0320"  Part="1" 
F 0 "#PWR0320" H 4250 6250 50  0001 C CNN
F 1 "GND" H 4250 6350 50  0000 C CNN
F 2 "" H 4250 6500 50  0001 C CNN
F 3 "" H 4250 6500 50  0001 C CNN
	1    4250 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4175 6350 4250 6350
Wire Wire Line
	4250 6350 4250 6450
Wire Wire Line
	4175 6450 4250 6450
Connection ~ 4250 6450
Wire Wire Line
	4250 6450 4250 6500
$Comp
L power:+5V #PWR?
U 1 1 5E214D61
P 3275 5650
AR Path="/5E214D61" Ref="#PWR?"  Part="1" 
AR Path="/5E20C295/5E214D61" Ref="#PWR0305"  Part="1" 
F 0 "#PWR0305" H 3275 5500 50  0001 C CNN
F 1 "+5V" H 3275 5800 50  0000 C CNN
F 2 "" H 3275 5650 50  0001 C CNN
F 3 "" H 3275 5650 50  0001 C CNN
	1    3275 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3275 5650 3275 5750
Wire Wire Line
	3275 5750 3375 5750
$Comp
L power:+5V #PWR?
U 1 1 5E214D69
P 4250 5675
AR Path="/5E214D69" Ref="#PWR?"  Part="1" 
AR Path="/5E20C295/5E214D69" Ref="#PWR0319"  Part="1" 
F 0 "#PWR0319" H 4250 5525 50  0001 C CNN
F 1 "+5V" H 4250 5825 50  0000 C CNN
F 2 "" H 4250 5675 50  0001 C CNN
F 3 "" H 4250 5675 50  0001 C CNN
	1    4250 5675
	1    0    0    -1  
$EndComp
Wire Wire Line
	4175 5750 4250 5750
Wire Wire Line
	4250 5750 4250 5675
Wire Wire Line
	4175 5850 4250 5850
Wire Wire Line
	4250 5850 4250 5750
Connection ~ 4250 5750
$Comp
L power:GND #PWR?
U 1 1 5E214D74
P 3325 6500
AR Path="/5E214D74" Ref="#PWR?"  Part="1" 
AR Path="/5E20C295/5E214D74" Ref="#PWR0308"  Part="1" 
F 0 "#PWR0308" H 3325 6250 50  0001 C CNN
F 1 "GND" H 3325 6350 50  0000 C CNN
F 2 "" H 3325 6500 50  0001 C CNN
F 3 "" H 3325 6500 50  0001 C CNN
	1    3325 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3375 6450 3325 6450
Wire Wire Line
	3325 6450 3325 6500
Wire Wire Line
	3200 5850 3375 5850
Wire Wire Line
	3200 5950 3375 5950
Text Label 3200 5850 0    50   ~ 0
SCL
Text Label 3200 5950 0    50   ~ 0
SDA
Wire Wire Line
	3375 6050 3200 6050
Wire Wire Line
	3375 6150 3200 6150
Text Label 3200 6050 0    50   ~ 0
GND
Text Label 3200 6150 0    50   ~ 0
GND
Wire Wire Line
	3375 6350 3200 6350
Text Label 3200 6350 0    50   ~ 0
+5V
Wire Wire Line
	4175 5950 4375 5950
Wire Wire Line
	4175 6050 4375 6050
Wire Wire Line
	4175 6150 4375 6150
Wire Wire Line
	4175 6250 4375 6250
Text Label 4375 5950 2    50   ~ 0
C0
Text Label 4375 6050 2    50   ~ 0
C1
Text Label 4375 6150 2    50   ~ 0
C2
Text Label 4375 6250 2    50   ~ 0
C3
Text Notes 2450 6200 0    50   ~ 0
I2C ADDRESS:\n0h40
$Comp
L Capacitor_0603:CL10B104KB8NNNC C?
U 1 1 5E216D73
P 3325 4875
AR Path="/5E216D73" Ref="C?"  Part="1" 
AR Path="/5E20C295/5E216D73" Ref="C302"  Part="1" 
F 0 "C302" H 3350 4975 50  0000 L CNN
F 1 "CL10B104KB8NNNC" H 3325 5175 50  0001 L CNN
F 2 "Passives:C_0603_Handsolder" H 3325 4275 50  0001 C CNN
F 3 "" H 3350 4975 50  0000 C CNN
F 4 " 	Samsung Electro-Mechanics" H 3450 5075 50  0001 C CNN "Manufacturer"
F 5 "0.1uF" H 3425 4875 50  0000 L CNN "P_Value"
F 6 "50V" H 3375 4800 25  0000 L CNN "P_Rating_U"
F 7 "X7R" H 3575 4525 50  0001 C CNN "P_Tolerance"
F 8 "0603" H 3375 4750 25  0000 L CNN "Package"
	1    3325 4875
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5E216D79
P 3325 4675
AR Path="/5E216D79" Ref="#PWR?"  Part="1" 
AR Path="/5E20C295/5E216D79" Ref="#PWR0306"  Part="1" 
F 0 "#PWR0306" H 3325 4525 50  0001 C CNN
F 1 "+5V" H 3325 4825 50  0000 C CNN
F 2 "" H 3325 4675 50  0001 C CNN
F 3 "" H 3325 4675 50  0001 C CNN
	1    3325 4675
	1    0    0    -1  
$EndComp
Wire Wire Line
	3325 4675 3325 4725
$Comp
L power:GND #PWR?
U 1 1 5E216D80
P 3325 5100
AR Path="/5E216D80" Ref="#PWR?"  Part="1" 
AR Path="/5E20C295/5E216D80" Ref="#PWR0307"  Part="1" 
F 0 "#PWR0307" H 3325 4850 50  0001 C CNN
F 1 "GND" H 3325 4950 50  0000 C CNN
F 2 "" H 3325 5100 50  0001 C CNN
F 3 "" H 3325 5100 50  0001 C CNN
	1    3325 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3325 5100 3325 5025
$Comp
L Capacitor_0603:CL10B104KB8NNNC C?
U 1 1 5E216D8C
P 3750 4875
AR Path="/5E216D8C" Ref="C?"  Part="1" 
AR Path="/5E20C295/5E216D8C" Ref="C304"  Part="1" 
F 0 "C304" H 3775 4975 50  0000 L CNN
F 1 "CL10B104KB8NNNC" H 3750 5175 50  0001 L CNN
F 2 "Passives:C_0603_Handsolder" H 3750 4275 50  0001 C CNN
F 3 "" H 3775 4975 50  0000 C CNN
F 4 " 	Samsung Electro-Mechanics" H 3875 5075 50  0001 C CNN "Manufacturer"
F 5 "0.1uF" H 3850 4875 50  0000 L CNN "P_Value"
F 6 "50V" H 3800 4800 25  0000 L CNN "P_Rating_U"
F 7 "X7R" H 4000 4525 50  0001 C CNN "P_Tolerance"
F 8 "0603" H 3800 4750 25  0000 L CNN "Package"
	1    3750 4875
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5E216D92
P 3750 4675
AR Path="/5E216D92" Ref="#PWR?"  Part="1" 
AR Path="/5E20C295/5E216D92" Ref="#PWR0311"  Part="1" 
F 0 "#PWR0311" H 3750 4525 50  0001 C CNN
F 1 "+5V" H 3750 4825 50  0000 C CNN
F 2 "" H 3750 4675 50  0001 C CNN
F 3 "" H 3750 4675 50  0001 C CNN
	1    3750 4675
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 4675 3750 4725
$Comp
L power:GND #PWR?
U 1 1 5E216D99
P 3750 5100
AR Path="/5E216D99" Ref="#PWR?"  Part="1" 
AR Path="/5E20C295/5E216D99" Ref="#PWR0312"  Part="1" 
F 0 "#PWR0312" H 3750 4850 50  0001 C CNN
F 1 "GND" H 3750 4950 50  0000 C CNN
F 2 "" H 3750 5100 50  0001 C CNN
F 3 "" H 3750 5100 50  0001 C CNN
	1    3750 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 5100 3750 5025
$Comp
L Capacitor_0603:CL10B104KB8NNNC C?
U 1 1 5E216DA5
P 4175 4875
AR Path="/5E216DA5" Ref="C?"  Part="1" 
AR Path="/5E20C295/5E216DA5" Ref="C306"  Part="1" 
F 0 "C306" H 4200 4975 50  0000 L CNN
F 1 "CL10B104KB8NNNC" H 4175 5175 50  0001 L CNN
F 2 "Passives:C_0603_Handsolder" H 4175 4275 50  0001 C CNN
F 3 "" H 4200 4975 50  0000 C CNN
F 4 " 	Samsung Electro-Mechanics" H 4300 5075 50  0001 C CNN "Manufacturer"
F 5 "0.1uF" H 4275 4875 50  0000 L CNN "P_Value"
F 6 "50V" H 4225 4800 25  0000 L CNN "P_Rating_U"
F 7 "X7R" H 4425 4525 50  0001 C CNN "P_Tolerance"
F 8 "0603" H 4225 4750 25  0000 L CNN "Package"
	1    4175 4875
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5E216DAB
P 4175 4675
AR Path="/5E216DAB" Ref="#PWR?"  Part="1" 
AR Path="/5E20C295/5E216DAB" Ref="#PWR0317"  Part="1" 
F 0 "#PWR0317" H 4175 4525 50  0001 C CNN
F 1 "+5V" H 4175 4825 50  0000 C CNN
F 2 "" H 4175 4675 50  0001 C CNN
F 3 "" H 4175 4675 50  0001 C CNN
	1    4175 4675
	1    0    0    -1  
$EndComp
Wire Wire Line
	4175 4675 4175 4725
$Comp
L power:GND #PWR?
U 1 1 5E216DB2
P 4175 5100
AR Path="/5E216DB2" Ref="#PWR?"  Part="1" 
AR Path="/5E20C295/5E216DB2" Ref="#PWR0318"  Part="1" 
F 0 "#PWR0318" H 4175 4850 50  0001 C CNN
F 1 "GND" H 4175 4950 50  0000 C CNN
F 2 "" H 4175 5100 50  0001 C CNN
F 3 "" H 4175 5100 50  0001 C CNN
	1    4175 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4175 5100 4175 5025
Wire Wire Line
	8975 3750 8650 3750
Wire Wire Line
	8975 3850 8650 3850
Wire Wire Line
	8975 3950 8650 3950
Wire Wire Line
	8650 4050 8975 4050
Wire Wire Line
	8975 4150 8650 4150
Wire Wire Line
	8975 4250 8650 4250
Wire Wire Line
	8975 4350 8650 4350
Wire Wire Line
	8975 4450 8650 4450
Text Label 8650 4250 0    50   ~ 0
cell5
Text Label 8650 4150 0    50   ~ 0
cell4
Text Label 8650 4350 0    50   ~ 0
cell6
Text Label 8650 4450 0    50   ~ 0
cell7
Text Label 8650 3850 0    50   ~ 0
cell1
Text Label 8650 3750 0    50   ~ 0
cell0
Text Label 8650 3950 0    50   ~ 0
cell2
Text Label 8650 4050 0    50   ~ 0
cell3
$Comp
L power:GND #PWR0321
U 1 1 5E227DAA
P 5475 2075
F 0 "#PWR0321" H 5475 1825 50  0001 C CNN
F 1 "GND" H 5475 1925 50  0000 C CNN
F 2 "" H 5475 2075 50  0001 C CNN
F 3 "" H 5475 2075 50  0001 C CNN
	1    5475 2075
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0322
U 1 1 5E227DB0
P 5825 2075
F 0 "#PWR0322" H 5825 1825 50  0001 C CNN
F 1 "GND" H 5825 1925 50  0000 C CNN
F 2 "" H 5825 2075 50  0001 C CNN
F 3 "" H 5825 2075 50  0001 C CNN
	1    5825 2075
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0323
U 1 1 5E227DB6
P 6175 2075
F 0 "#PWR0323" H 6175 1825 50  0001 C CNN
F 1 "GND" H 6175 1925 50  0000 C CNN
F 2 "" H 6175 2075 50  0001 C CNN
F 3 "" H 6175 2075 50  0001 C CNN
	1    6175 2075
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0324
U 1 1 5E227DBC
P 6525 2075
F 0 "#PWR0324" H 6525 1825 50  0001 C CNN
F 1 "GND" H 6525 1925 50  0000 C CNN
F 2 "" H 6525 2075 50  0001 C CNN
F 3 "" H 6525 2075 50  0001 C CNN
	1    6525 2075
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0325
U 1 1 5E227DC2
P 6900 2075
F 0 "#PWR0325" H 6900 1825 50  0001 C CNN
F 1 "GND" H 6900 1925 50  0000 C CNN
F 2 "" H 6900 2075 50  0001 C CNN
F 3 "" H 6900 2075 50  0001 C CNN
	1    6900 2075
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0326
U 1 1 5E227DC8
P 7250 2075
F 0 "#PWR0326" H 7250 1825 50  0001 C CNN
F 1 "GND" H 7250 1925 50  0000 C CNN
F 2 "" H 7250 2075 50  0001 C CNN
F 3 "" H 7250 2075 50  0001 C CNN
	1    7250 2075
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0327
U 1 1 5E227DCE
P 7600 2075
F 0 "#PWR0327" H 7600 1825 50  0001 C CNN
F 1 "GND" H 7600 1925 50  0000 C CNN
F 2 "" H 7600 2075 50  0001 C CNN
F 3 "" H 7600 2075 50  0001 C CNN
	1    7600 2075
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0328
U 1 1 5E227DD4
P 7950 2075
F 0 "#PWR0328" H 7950 1825 50  0001 C CNN
F 1 "GND" H 7950 1925 50  0000 C CNN
F 2 "" H 7950 2075 50  0001 C CNN
F 3 "" H 7950 2075 50  0001 C CNN
	1    7950 2075
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 2025 7950 2075
Wire Wire Line
	7600 2025 7600 2075
Wire Wire Line
	7250 2025 7250 2075
Wire Wire Line
	6900 2025 6900 2075
Wire Wire Line
	6525 2025 6525 2075
Wire Wire Line
	6175 2025 6175 2075
Wire Wire Line
	5825 2025 5825 2075
Wire Wire Line
	5475 2025 5475 2075
Wire Wire Line
	5475 1625 5475 1675
Wire Wire Line
	5475 1175 5275 1175
Wire Wire Line
	5825 1625 5825 1675
Wire Wire Line
	5825 1325 5825 1175
Wire Wire Line
	5825 1175 5625 1175
Text Label 5275 1175 0    50   ~ 0
cell0
Text Label 5625 1175 0    50   ~ 0
cell1
Wire Wire Line
	6175 1625 6175 1675
Wire Wire Line
	6175 1325 6175 1175
Wire Wire Line
	6175 1175 5975 1175
Text Label 5975 1175 0    50   ~ 0
cell2
Wire Wire Line
	6525 1625 6525 1675
Wire Wire Line
	6900 1625 6900 1675
Wire Wire Line
	7250 1625 7250 1675
Wire Wire Line
	7600 1625 7600 1675
Wire Wire Line
	7950 1625 7950 1675
Wire Wire Line
	6525 1325 6525 1175
Wire Wire Line
	6525 1175 6325 1175
Wire Wire Line
	6900 1325 6900 1175
Wire Wire Line
	6900 1175 6700 1175
Wire Wire Line
	7250 1325 7250 1175
Wire Wire Line
	7250 1175 7050 1175
Wire Wire Line
	7600 1325 7600 1175
Wire Wire Line
	7600 1175 7400 1175
Wire Wire Line
	7950 1325 7950 1175
Wire Wire Line
	7950 1175 7750 1175
Text Label 6325 1175 0    50   ~ 0
cell3
Text Label 6700 1175 0    50   ~ 0
cell4
Text Label 7050 1175 0    50   ~ 0
cell5
Text Label 7400 1175 0    50   ~ 0
cell6
Text Label 7750 1175 0    50   ~ 0
cell7
Wire Wire Line
	5475 1675 5325 1675
Connection ~ 5475 1675
Wire Wire Line
	5475 1675 5475 1725
Text Label 5325 1675 0    50   ~ 0
C0
Text Label 5700 1675 0    50   ~ 0
C1
Text Label 6025 1675 0    50   ~ 0
C2
Text Label 6375 1675 0    50   ~ 0
C3
Text Label 6775 1675 0    50   ~ 0
C4
Text Label 7100 1675 0    50   ~ 0
C5
Text Label 7450 1675 0    50   ~ 0
C6
Text Label 7800 1675 0    50   ~ 0
C7
Wire Wire Line
	5700 1675 5825 1675
Connection ~ 5825 1675
Wire Wire Line
	5825 1675 5825 1725
Wire Wire Line
	6025 1675 6175 1675
Connection ~ 6175 1675
Wire Wire Line
	6175 1675 6175 1725
Wire Wire Line
	6375 1675 6525 1675
Connection ~ 6525 1675
Wire Wire Line
	6525 1675 6525 1725
Wire Wire Line
	6775 1675 6900 1675
Connection ~ 6900 1675
Wire Wire Line
	6900 1675 6900 1725
Wire Wire Line
	7100 1675 7250 1675
Connection ~ 7250 1675
Wire Wire Line
	7250 1675 7250 1725
Wire Wire Line
	7450 1675 7600 1675
Connection ~ 7600 1675
Wire Wire Line
	7600 1675 7600 1725
Wire Wire Line
	7800 1675 7950 1675
Connection ~ 7950 1675
Wire Wire Line
	7950 1675 7950 1725
$Comp
L power:GND #PWR0329
U 1 1 5E227E38
P 9525 4675
F 0 "#PWR0329" H 9525 4425 50  0001 C CNN
F 1 "GND" H 9525 4525 50  0000 C CNN
F 2 "" H 9525 4675 50  0001 C CNN
F 3 "" H 9525 4675 50  0001 C CNN
	1    9525 4675
	1    0    0    -1  
$EndComp
Wire Wire Line
	9575 4550 9525 4550
Wire Wire Line
	9525 4550 9525 4675
$Comp
L Connectors:S9B-PH-SM4-TB(LF)(SN) P301
U 1 1 5E227E44
P 9675 4500
F 0 "P301" H 9675 4650 50  0000 R CNN
F 1 "S9B-PH-SM4-TB(LF)(SN)" H 9625 3850 60  0001 C CNN
F 2 "Connectors_sg:S9B-PH-SM4-TB" V 10275 4950 60  0001 C CNN
F 3 "" H 9625 4700 60  0001 C CNN
F 4 "JST Sales America Inc." H 9575 4800 60  0001 C CNN "Manufacturer"
F 5 "9POS" H 9725 3650 50  0000 R CNN "P_Value"
F 6 "2A" H 9925 4950 50  0001 C CNN "P_Rating"
F 7 "SMD" H 9675 5100 60  0001 C CNN "Package"
	1    9675 4500
	-1   0    0    1   
$EndComp
$Comp
L Fuses:0686F1000-01 F301
U 1 1 5E227E4F
P 9125 3750
F 0 "F301" V 9125 3750 25  0000 C CNN
F 1 "0686F1000-01" V 9050 3750 50  0001 C CNN
F 2 "Fuse:Fuse_0603_1608Metric" V 9055 3750 50  0001 C CNN
F 3 "" H 9125 3750 50  0001 C CNN
F 4 "Bel Fuse Inc" H 9125 3750 50  0001 C CNN "Manufacturer"
F 5 "1A" V 9075 3900 25  0000 C CNN "P_Value"
F 6 "63VDC" H 9125 3750 50  0001 C CNN "P_Rating"
F 7 "~40C~125C" H 9125 3750 50  0001 C CNN "P_Tolerance"
F 8 "0603" V 9075 3575 25  0000 C CNN "Package"
	1    9125 3750
	0    1    1    0   
$EndComp
$Comp
L Fuses:0686F1000-01 F302
U 1 1 5E227E5A
P 9125 3850
F 0 "F302" V 9125 3850 25  0000 C CNN
F 1 "0686F1000-01" V 9050 3850 50  0001 C CNN
F 2 "Fuse:Fuse_0603_1608Metric" V 9055 3850 50  0001 C CNN
F 3 "" H 9125 3850 50  0001 C CNN
F 4 "Bel Fuse Inc" H 9125 3850 50  0001 C CNN "Manufacturer"
F 5 "1A" V 9075 4000 25  0000 C CNN "P_Value"
F 6 "63VDC" H 9125 3850 50  0001 C CNN "P_Rating"
F 7 "~40C~125C" H 9125 3850 50  0001 C CNN "P_Tolerance"
F 8 "0603" V 9075 3675 25  0000 C CNN "Package"
	1    9125 3850
	0    1    1    0   
$EndComp
$Comp
L Fuses:0686F1000-01 F303
U 1 1 5E227E65
P 9125 3950
F 0 "F303" V 9125 3950 25  0000 C CNN
F 1 "0686F1000-01" V 9050 3950 50  0001 C CNN
F 2 "Fuse:Fuse_0603_1608Metric" V 9055 3950 50  0001 C CNN
F 3 "" H 9125 3950 50  0001 C CNN
F 4 "Bel Fuse Inc" H 9125 3950 50  0001 C CNN "Manufacturer"
F 5 "1A" V 9075 4100 25  0000 C CNN "P_Value"
F 6 "63VDC" H 9125 3950 50  0001 C CNN "P_Rating"
F 7 "~40C~125C" H 9125 3950 50  0001 C CNN "P_Tolerance"
F 8 "0603" V 9075 3775 25  0000 C CNN "Package"
	1    9125 3950
	0    1    1    0   
$EndComp
$Comp
L Fuses:0686F1000-01 F304
U 1 1 5E227E70
P 9125 4050
F 0 "F304" V 9125 4050 25  0000 C CNN
F 1 "0686F1000-01" V 9050 4050 50  0001 C CNN
F 2 "Fuse:Fuse_0603_1608Metric" V 9055 4050 50  0001 C CNN
F 3 "" H 9125 4050 50  0001 C CNN
F 4 "Bel Fuse Inc" H 9125 4050 50  0001 C CNN "Manufacturer"
F 5 "1A" V 9075 4200 25  0000 C CNN "P_Value"
F 6 "63VDC" H 9125 4050 50  0001 C CNN "P_Rating"
F 7 "~40C~125C" H 9125 4050 50  0001 C CNN "P_Tolerance"
F 8 "0603" V 9075 3875 25  0000 C CNN "Package"
	1    9125 4050
	0    1    1    0   
$EndComp
$Comp
L Fuses:0686F1000-01 F305
U 1 1 5E227E7B
P 9125 4150
F 0 "F305" V 9125 4150 25  0000 C CNN
F 1 "0686F1000-01" V 9050 4150 50  0001 C CNN
F 2 "Fuse:Fuse_0603_1608Metric" V 9055 4150 50  0001 C CNN
F 3 "" H 9125 4150 50  0001 C CNN
F 4 "Bel Fuse Inc" H 9125 4150 50  0001 C CNN "Manufacturer"
F 5 "1A" V 9075 4300 25  0000 C CNN "P_Value"
F 6 "63VDC" H 9125 4150 50  0001 C CNN "P_Rating"
F 7 "~40C~125C" H 9125 4150 50  0001 C CNN "P_Tolerance"
F 8 "0603" V 9075 3975 25  0000 C CNN "Package"
	1    9125 4150
	0    1    1    0   
$EndComp
$Comp
L Fuses:0686F1000-01 F306
U 1 1 5E227E86
P 9125 4250
F 0 "F306" V 9125 4250 25  0000 C CNN
F 1 "0686F1000-01" V 9050 4250 50  0001 C CNN
F 2 "Fuse:Fuse_0603_1608Metric" V 9055 4250 50  0001 C CNN
F 3 "" H 9125 4250 50  0001 C CNN
F 4 "Bel Fuse Inc" H 9125 4250 50  0001 C CNN "Manufacturer"
F 5 "1A" V 9075 4400 25  0000 C CNN "P_Value"
F 6 "63VDC" H 9125 4250 50  0001 C CNN "P_Rating"
F 7 "~40C~125C" H 9125 4250 50  0001 C CNN "P_Tolerance"
F 8 "0603" V 9075 4075 25  0000 C CNN "Package"
	1    9125 4250
	0    1    1    0   
$EndComp
$Comp
L Fuses:0686F1000-01 F307
U 1 1 5E227E91
P 9125 4350
F 0 "F307" V 9125 4350 25  0000 C CNN
F 1 "0686F1000-01" V 9050 4350 50  0001 C CNN
F 2 "Fuse:Fuse_0603_1608Metric" V 9055 4350 50  0001 C CNN
F 3 "" H 9125 4350 50  0001 C CNN
F 4 "Bel Fuse Inc" H 9125 4350 50  0001 C CNN "Manufacturer"
F 5 "1A" V 9075 4500 25  0000 C CNN "P_Value"
F 6 "63VDC" H 9125 4350 50  0001 C CNN "P_Rating"
F 7 "~40C~125C" H 9125 4350 50  0001 C CNN "P_Tolerance"
F 8 "0603" V 9075 4175 25  0000 C CNN "Package"
	1    9125 4350
	0    1    1    0   
$EndComp
$Comp
L Fuses:0686F1000-01 F308
U 1 1 5E227E9C
P 9125 4450
F 0 "F308" V 9125 4450 25  0000 C CNN
F 1 "0686F1000-01" V 9050 4450 50  0001 C CNN
F 2 "Fuse:Fuse_0603_1608Metric" V 9055 4450 50  0001 C CNN
F 3 "" H 9125 4450 50  0001 C CNN
F 4 "Bel Fuse Inc" H 9125 4450 50  0001 C CNN "Manufacturer"
F 5 "1A" V 9075 4600 25  0000 C CNN "P_Value"
F 6 "63VDC" H 9125 4450 50  0001 C CNN "P_Rating"
F 7 "~40C~125C" H 9125 4450 50  0001 C CNN "P_Tolerance"
F 8 "0603" V 9075 4275 25  0000 C CNN "Package"
	1    9125 4450
	0    1    1    0   
$EndComp
Wire Wire Line
	9275 4450 9575 4450
Wire Wire Line
	9275 4350 9575 4350
Wire Wire Line
	9275 4250 9575 4250
Wire Wire Line
	9275 4150 9575 4150
Wire Wire Line
	9275 4050 9575 4050
Wire Wire Line
	9275 3950 9575 3950
Wire Wire Line
	9275 3850 9575 3850
Wire Wire Line
	9275 3750 9575 3750
Text HLabel 1150 3400 0    50   BiDi ~ 0
SDA
Text HLabel 1150 3500 0    50   BiDi ~ 0
SCL
Wire Wire Line
	1150 3400 1325 3400
Wire Wire Line
	1150 3500 1325 3500
Text Label 1325 3400 2    50   ~ 0
SDA
Text Label 1325 3500 2    50   ~ 0
SCL
Text Label 9375 4450 0    50   ~ 0
BAT8
Text Label 9375 4350 0    50   ~ 0
BAT7
Text Label 9375 4250 0    50   ~ 0
BAT6
Text Label 9375 4150 0    50   ~ 0
BAT5
Text Label 9375 4050 0    50   ~ 0
BAT4
Text Label 9375 3950 0    50   ~ 0
BAT3
Text Label 9375 3850 0    50   ~ 0
BAT2
Text Label 9375 3750 0    50   ~ 0
BAT1
Text HLabel 1150 3750 0    50   Output ~ 0
BAT1
Text HLabel 1150 3850 0    50   Output ~ 0
BAT2
Text HLabel 1150 3950 0    50   Output ~ 0
BAT3
Text HLabel 1150 4050 0    50   Output ~ 0
BAT4
Text HLabel 1150 4150 0    50   Output ~ 0
BAT5
Text HLabel 1150 4250 0    50   Output ~ 0
BAT6
Text HLabel 1150 4350 0    50   Output ~ 0
BAT7
Text HLabel 1150 4450 0    50   Output ~ 0
BAT8
Wire Wire Line
	1150 3750 1450 3750
Wire Wire Line
	1150 3850 1450 3850
Wire Wire Line
	1150 3950 1450 3950
Wire Wire Line
	1150 4050 1450 4050
Wire Wire Line
	1150 4150 1450 4150
Wire Wire Line
	1150 4250 1450 4250
Wire Wire Line
	1150 4350 1450 4350
Wire Wire Line
	1150 4450 1450 4450
Text Label 1450 4450 2    50   ~ 0
BAT8
Text Label 1450 4350 2    50   ~ 0
BAT7
Text Label 1450 4250 2    50   ~ 0
BAT6
Text Label 1450 4150 2    50   ~ 0
BAT5
Text Label 1450 4050 2    50   ~ 0
BAT4
Text Label 1450 3950 2    50   ~ 0
BAT3
Text Label 1450 3850 2    50   ~ 0
BAT2
Text Label 1450 3750 2    50   ~ 0
BAT1
NoConn ~ 3375 6250
NoConn ~ 3225 2450
$Comp
L Resistors_0603:RT0603BRE07673KL R303
U 1 1 5F745158
P 5825 1475
F 0 "R303" V 5825 1475 50  0000 C CNN
F 1 "RT0603BRE07673KL" V 5925 1475 50  0001 C CNN
F 2 "Passives:R_0603_Handsolder" V 5755 1475 50  0001 C CNN
F 3 "" V 5905 1475 50  0000 C CNN
F 4 "Yageo" V 6005 1575 60  0001 C CNN "Manufacturer"
F 5 "673k" H 5875 1525 50  0000 L CNN "P_Value"
F 6 "1/10W" V 6125 1775 60  0001 C CNN "P_Rating_U"
F 7 "0.1%" H 5900 1400 25  0000 L CNN "P_Tolerance"
F 8 "0603" H 5900 1450 25  0000 L CNN "Package"
F 9 "YAG4765CT-ND" H 5825 1475 50  0001 C CNN "P_Digikey"
	1    5825 1475
	1    0    0    -1  
$EndComp
$Comp
L Resistors_0603:RT0603BRE07673KL R305
U 1 1 5F7463A2
P 6175 1475
F 0 "R305" V 6175 1475 50  0000 C CNN
F 1 "RT0603BRE07673KL" V 6275 1475 50  0001 C CNN
F 2 "Passives:R_0603_Handsolder" V 6105 1475 50  0001 C CNN
F 3 "" V 6255 1475 50  0000 C CNN
F 4 "Yageo" V 6355 1575 60  0001 C CNN "Manufacturer"
F 5 "673k" H 6225 1525 50  0000 L CNN "P_Value"
F 6 "1/10W" V 6475 1775 60  0001 C CNN "P_Rating_U"
F 7 "0.1%" H 6250 1400 25  0000 L CNN "P_Tolerance"
F 8 "0603" H 6250 1450 25  0000 L CNN "Package"
F 9 "YAG4765CT-ND" H 6175 1475 50  0001 C CNN "P_Digikey"
	1    6175 1475
	1    0    0    -1  
$EndComp
$Comp
L Resistors_0603:RT0603BRE07673KL R307
U 1 1 5F7467B6
P 6525 1475
F 0 "R307" V 6525 1475 50  0000 C CNN
F 1 "RT0603BRE07673KL" V 6625 1475 50  0001 C CNN
F 2 "Passives:R_0603_Handsolder" V 6455 1475 50  0001 C CNN
F 3 "" V 6605 1475 50  0000 C CNN
F 4 "Yageo" V 6705 1575 60  0001 C CNN "Manufacturer"
F 5 "673k" H 6575 1525 50  0000 L CNN "P_Value"
F 6 "1/10W" V 6825 1775 60  0001 C CNN "P_Rating_U"
F 7 "0.1%" H 6600 1400 25  0000 L CNN "P_Tolerance"
F 8 "0603" H 6600 1450 25  0000 L CNN "Package"
F 9 "YAG4765CT-ND" H 6525 1475 50  0001 C CNN "P_Digikey"
	1    6525 1475
	1    0    0    -1  
$EndComp
$Comp
L Resistors_0603:RT0603BRE07673KL R309
U 1 1 5F746C60
P 6900 1475
F 0 "R309" V 6900 1475 50  0000 C CNN
F 1 "RT0603BRE07673KL" V 7000 1475 50  0001 C CNN
F 2 "Passives:R_0603_Handsolder" V 6830 1475 50  0001 C CNN
F 3 "" V 6980 1475 50  0000 C CNN
F 4 "Yageo" V 7080 1575 60  0001 C CNN "Manufacturer"
F 5 "673k" H 6950 1525 50  0000 L CNN "P_Value"
F 6 "1/10W" V 7200 1775 60  0001 C CNN "P_Rating_U"
F 7 "0.1%" H 6975 1400 25  0000 L CNN "P_Tolerance"
F 8 "0603" H 6975 1450 25  0000 L CNN "Package"
F 9 "YAG4765CT-ND" H 6900 1475 50  0001 C CNN "P_Digikey"
	1    6900 1475
	1    0    0    -1  
$EndComp
$Comp
L Resistors_0603:RT0603BRE07673KL R311
U 1 1 5F746EC1
P 7250 1475
F 0 "R311" V 7250 1475 50  0000 C CNN
F 1 "RT0603BRE07673KL" V 7350 1475 50  0001 C CNN
F 2 "Passives:R_0603_Handsolder" V 7180 1475 50  0001 C CNN
F 3 "" V 7330 1475 50  0000 C CNN
F 4 "Yageo" V 7430 1575 60  0001 C CNN "Manufacturer"
F 5 "673k" H 7300 1525 50  0000 L CNN "P_Value"
F 6 "1/10W" V 7550 1775 60  0001 C CNN "P_Rating_U"
F 7 "0.1%" H 7325 1400 25  0000 L CNN "P_Tolerance"
F 8 "0603" H 7325 1450 25  0000 L CNN "Package"
F 9 "YAG4765CT-ND" H 7250 1475 50  0001 C CNN "P_Digikey"
	1    7250 1475
	1    0    0    -1  
$EndComp
$Comp
L Resistors_0603:RT0603BRE07673KL R313
U 1 1 5F747447
P 7600 1475
F 0 "R313" V 7600 1475 50  0000 C CNN
F 1 "RT0603BRE07673KL" V 7700 1475 50  0001 C CNN
F 2 "Passives:R_0603_Handsolder" V 7530 1475 50  0001 C CNN
F 3 "" V 7680 1475 50  0000 C CNN
F 4 "Yageo" V 7780 1575 60  0001 C CNN "Manufacturer"
F 5 "673k" H 7650 1525 50  0000 L CNN "P_Value"
F 6 "1/10W" V 7900 1775 60  0001 C CNN "P_Rating_U"
F 7 "0.1%" H 7675 1400 25  0000 L CNN "P_Tolerance"
F 8 "0603" H 7675 1450 25  0000 L CNN "Package"
F 9 "YAG4765CT-ND" H 7600 1475 50  0001 C CNN "P_Digikey"
	1    7600 1475
	1    0    0    -1  
$EndComp
$Comp
L Resistors_0603:RT0603BRE07673KL R315
U 1 1 5F747602
P 7950 1475
F 0 "R315" V 7950 1475 50  0000 C CNN
F 1 "RT0603BRE07673KL" V 8050 1475 50  0001 C CNN
F 2 "Passives:R_0603_Handsolder" V 7880 1475 50  0001 C CNN
F 3 "" V 8030 1475 50  0000 C CNN
F 4 "Yageo" V 8130 1575 60  0001 C CNN "Manufacturer"
F 5 "673k" H 8000 1525 50  0000 L CNN "P_Value"
F 6 "1/10W" V 8250 1775 60  0001 C CNN "P_Rating_U"
F 7 "0.1%" H 8025 1400 25  0000 L CNN "P_Tolerance"
F 8 "0603" H 8025 1450 25  0000 L CNN "Package"
F 9 "YAG4765CT-ND" H 7950 1475 50  0001 C CNN "P_Digikey"
	1    7950 1475
	1    0    0    -1  
$EndComp
Wire Wire Line
	5475 1325 5475 1175
$Comp
L Resistors_0603:RT0603BRE07673KL R301
U 1 1 5F6ACF54
P 5475 1475
F 0 "R301" V 5475 1475 50  0000 C CNN
F 1 "RT0603BRE07673KL" V 5575 1475 50  0001 C CNN
F 2 "Passives:R_0603_Handsolder" V 5405 1475 50  0001 C CNN
F 3 "" V 5555 1475 50  0000 C CNN
F 4 "Yageo" V 5655 1575 60  0001 C CNN "Manufacturer"
F 5 "673k" H 5525 1525 50  0000 L CNN "P_Value"
F 6 "1/10W" V 5775 1775 60  0001 C CNN "P_Rating_U"
F 7 "0.1%" H 5550 1400 25  0000 L CNN "P_Tolerance"
F 8 "0603" H 5550 1450 25  0000 L CNN "Package"
F 9 "YAG4765CT-ND" H 5475 1475 50  0001 C CNN "P_Digikey"
	1    5475 1475
	1    0    0    -1  
$EndComp
$Comp
L Resistors_0603:ERJ-PB3B4222V R302
U 1 1 5F75172D
P 5475 1875
F 0 "R302" V 5475 1875 50  0000 C CNN
F 1 "ERJ-PB3B4222V" V 5575 1875 50  0001 C CNN
F 2 "Passives:R_0603_Handsolder" V 5405 1875 50  0001 C CNN
F 3 "" V 5555 1875 50  0000 C CNN
F 4 "Panasonic Electronic Components" V 5655 1975 60  0001 C CNN "Manufacturer"
F 5 "42.2k" H 5525 1925 50  0000 L CNN "P_Value"
F 6 "1/5W" V 5775 2175 60  0001 C CNN "P_Rating_U"
F 7 "0.1%" H 5550 1800 25  0000 L CNN "P_Tolerance"
F 8 "0603" H 5550 1850 25  0000 L CNN "Package"
F 9 "P20156CT-ND" H 5475 1875 50  0001 C CNN "P_Digikey"
	1    5475 1875
	1    0    0    -1  
$EndComp
$Comp
L Resistors_0603:ERJ-PB3B4222V R304
U 1 1 5F752B47
P 5825 1875
F 0 "R304" V 5825 1875 50  0000 C CNN
F 1 "ERJ-PB3B4222V" V 5925 1875 50  0001 C CNN
F 2 "Passives:R_0603_Handsolder" V 5755 1875 50  0001 C CNN
F 3 "" V 5905 1875 50  0000 C CNN
F 4 "Panasonic Electronic Components" V 6005 1975 60  0001 C CNN "Manufacturer"
F 5 "42.2k" H 5875 1925 50  0000 L CNN "P_Value"
F 6 "1/5W" V 6125 2175 60  0001 C CNN "P_Rating_U"
F 7 "0.1%" H 5900 1800 25  0000 L CNN "P_Tolerance"
F 8 "0603" H 5900 1850 25  0000 L CNN "Package"
F 9 "P20156CT-ND" H 5825 1875 50  0001 C CNN "P_Digikey"
	1    5825 1875
	1    0    0    -1  
$EndComp
$Comp
L Resistors_0603:ERJ-PB3B4222V R306
U 1 1 5F752E2A
P 6175 1875
F 0 "R306" V 6175 1875 50  0000 C CNN
F 1 "ERJ-PB3B4222V" V 6275 1875 50  0001 C CNN
F 2 "Passives:R_0603_Handsolder" V 6105 1875 50  0001 C CNN
F 3 "" V 6255 1875 50  0000 C CNN
F 4 "Panasonic Electronic Components" V 6355 1975 60  0001 C CNN "Manufacturer"
F 5 "42.2k" H 6225 1925 50  0000 L CNN "P_Value"
F 6 "1/5W" V 6475 2175 60  0001 C CNN "P_Rating_U"
F 7 "0.1%" H 6250 1800 25  0000 L CNN "P_Tolerance"
F 8 "0603" H 6250 1850 25  0000 L CNN "Package"
F 9 "P20156CT-ND" H 6175 1875 50  0001 C CNN "P_Digikey"
	1    6175 1875
	1    0    0    -1  
$EndComp
$Comp
L Resistors_0603:ERJ-PB3B4222V R308
U 1 1 5F7531CD
P 6525 1875
F 0 "R308" V 6525 1875 50  0000 C CNN
F 1 "ERJ-PB3B4222V" V 6625 1875 50  0001 C CNN
F 2 "Passives:R_0603_Handsolder" V 6455 1875 50  0001 C CNN
F 3 "" V 6605 1875 50  0000 C CNN
F 4 "Panasonic Electronic Components" V 6705 1975 60  0001 C CNN "Manufacturer"
F 5 "42.2k" H 6575 1925 50  0000 L CNN "P_Value"
F 6 "1/5W" V 6825 2175 60  0001 C CNN "P_Rating_U"
F 7 "0.1%" H 6600 1800 25  0000 L CNN "P_Tolerance"
F 8 "0603" H 6600 1850 25  0000 L CNN "Package"
F 9 "P20156CT-ND" H 6525 1875 50  0001 C CNN "P_Digikey"
	1    6525 1875
	1    0    0    -1  
$EndComp
$Comp
L Resistors_0603:ERJ-PB3B4222V R310
U 1 1 5F753673
P 6900 1875
F 0 "R310" V 6900 1875 50  0000 C CNN
F 1 "ERJ-PB3B4222V" V 7000 1875 50  0001 C CNN
F 2 "Passives:R_0603_Handsolder" V 6830 1875 50  0001 C CNN
F 3 "" V 6980 1875 50  0000 C CNN
F 4 "Panasonic Electronic Components" V 7080 1975 60  0001 C CNN "Manufacturer"
F 5 "42.2k" H 6950 1925 50  0000 L CNN "P_Value"
F 6 "1/5W" V 7200 2175 60  0001 C CNN "P_Rating_U"
F 7 "0.1%" H 6975 1800 25  0000 L CNN "P_Tolerance"
F 8 "0603" H 6975 1850 25  0000 L CNN "Package"
F 9 "P20156CT-ND" H 6900 1875 50  0001 C CNN "P_Digikey"
	1    6900 1875
	1    0    0    -1  
$EndComp
$Comp
L Resistors_0603:ERJ-PB3B4222V R312
U 1 1 5F7539AF
P 7250 1875
F 0 "R312" V 7250 1875 50  0000 C CNN
F 1 "ERJ-PB3B4222V" V 7350 1875 50  0001 C CNN
F 2 "Passives:R_0603_Handsolder" V 7180 1875 50  0001 C CNN
F 3 "" V 7330 1875 50  0000 C CNN
F 4 "Panasonic Electronic Components" V 7430 1975 60  0001 C CNN "Manufacturer"
F 5 "42.2k" H 7300 1925 50  0000 L CNN "P_Value"
F 6 "1/5W" V 7550 2175 60  0001 C CNN "P_Rating_U"
F 7 "0.1%" H 7325 1800 25  0000 L CNN "P_Tolerance"
F 8 "0603" H 7325 1850 25  0000 L CNN "Package"
F 9 "P20156CT-ND" H 7250 1875 50  0001 C CNN "P_Digikey"
	1    7250 1875
	1    0    0    -1  
$EndComp
$Comp
L Resistors_0603:ERJ-PB3B4222V R314
U 1 1 5F753CD9
P 7600 1875
F 0 "R314" V 7600 1875 50  0000 C CNN
F 1 "ERJ-PB3B4222V" V 7700 1875 50  0001 C CNN
F 2 "Passives:R_0603_Handsolder" V 7530 1875 50  0001 C CNN
F 3 "" V 7680 1875 50  0000 C CNN
F 4 "Panasonic Electronic Components" V 7780 1975 60  0001 C CNN "Manufacturer"
F 5 "42.2k" H 7650 1925 50  0000 L CNN "P_Value"
F 6 "1/5W" V 7900 2175 60  0001 C CNN "P_Rating_U"
F 7 "0.1%" H 7675 1800 25  0000 L CNN "P_Tolerance"
F 8 "0603" H 7675 1850 25  0000 L CNN "Package"
F 9 "P20156CT-ND" H 7600 1875 50  0001 C CNN "P_Digikey"
	1    7600 1875
	1    0    0    -1  
$EndComp
$Comp
L Resistors_0603:ERJ-PB3B4222V R316
U 1 1 5F75404E
P 7950 1875
F 0 "R316" V 7950 1875 50  0000 C CNN
F 1 "ERJ-PB3B4222V" V 8050 1875 50  0001 C CNN
F 2 "Passives:R_0603_Handsolder" V 7880 1875 50  0001 C CNN
F 3 "" V 8030 1875 50  0000 C CNN
F 4 "Panasonic Electronic Components" V 8130 1975 60  0001 C CNN "Manufacturer"
F 5 "42.2k" H 8000 1925 50  0000 L CNN "P_Value"
F 6 "1/5W" V 8250 2175 60  0001 C CNN "P_Rating_U"
F 7 "0.1%" H 8025 1800 25  0000 L CNN "P_Tolerance"
F 8 "0603" H 8025 1850 25  0000 L CNN "Package"
F 9 "P20156CT-ND" H 7950 1875 50  0001 C CNN "P_Digikey"
	1    7950 1875
	1    0    0    -1  
$EndComp
$EndSCHEMATC