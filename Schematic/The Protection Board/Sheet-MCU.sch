EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 2 5
Title "the Protection Board - the Brains"
Date "2021-07-02"
Rev "A5"
Comp "simple-ee.com"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	4125 2700 4125 2575
Text Label 3825 2575 0    50   ~ 0
TX_M
Text Label 3825 2475 0    50   ~ 0
RX_M
Wire Wire Line
	4225 2475 4225 2700
$Comp
L Capacitor_0603:C0603C104K5RACAUTO C204
U 1 1 5D3431B9
P 4675 2250
F 0 "C204" V 4550 2250 50  0000 C CNN
F 1 "C0603C104K5RACAUTO" H 4675 2550 50  0001 L CNN
F 2 "Passives:C_0603_Handsolder" H 4675 1650 50  0001 C CNN
F 3 "" H 4700 2350 50  0000 C CNN
F 4 "KEMET" H 4800 2450 50  0001 C CNN "Manufacturer"
F 5 "0.1uF" V 4800 2250 50  0000 C CNN "P_Value"
F 6 "50V" V 4625 2300 25  0000 L CNN "P_Rating_U"
F 7 "X7R" H 4925 1900 50  0001 C CNN "P_Tolerance"
F 8 "0603" V 4725 2300 25  0000 L CNN "Package"
	1    4675 2250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5025 2250 4825 2250
Text Label 5025 2250 2    50   ~ 0
DTR
$Comp
L Resistors_0603:ERA-3AEB103V R201
U 1 1 5D3451CB
P 4325 2050
F 0 "R201" V 4325 1950 50  0000 L CNN
F 1 "ERA-3AEB103V" V 4425 2050 50  0001 C CNN
F 2 "Passives:R_0603_Handsolder" V 4255 2050 50  0001 C CNN
F 3 "" V 4405 2050 50  0000 C CNN
F 4 "Panasonic Electronic Components" V 4505 2150 60  0001 C CNN "Manufacturer"
F 5 "10k" H 4375 2100 50  0000 L CNN "P_Value"
F 6 "1/10W" V 4625 2350 60  0001 C CNN "P_Rating_U"
F 7 "0.1%" H 4400 1975 25  0000 L CNN "P_Tolerance"
F 8 "0603" H 4400 2025 25  0000 L CNN "Package"
	1    4325 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4325 1875 4325 1900
Wire Wire Line
	3575 3250 3325 3250
Wire Wire Line
	3575 3550 3325 3550
Text Label 3325 3250 0    50   ~ 0
SDA1
Text Label 3325 3550 0    50   ~ 0
SCL1
Wire Wire Line
	3575 3350 3325 3350
Text Label 3325 3350 0    50   ~ 0
+5V
Wire Wire Line
	3575 3450 3325 3450
Text Label 3325 3450 0    50   ~ 0
GND
NoConn ~ 3575 3750
Wire Wire Line
	5075 3650 5300 3650
Text Label 5300 3650 2    50   ~ 0
+5V
Wire Wire Line
	5075 3350 5300 3350
Text Label 5300 3350 2    50   ~ 0
GND
Wire Wire Line
	4025 2700 4025 2675
Text Label 3825 2675 0    50   ~ 0
INT0
Wire Wire Line
	3825 2575 4125 2575
Wire Wire Line
	3825 2475 4225 2475
$Comp
L Capacitor_0603:C0603C104K5RACAUTO C202
U 1 1 5D34C1BE
P 4100 1175
F 0 "C202" H 3975 1075 50  0000 C CNN
F 1 "C0603C104K5RACAUTO" H 4100 1475 50  0001 L CNN
F 2 "Passives:C_0603_Handsolder" H 4100 575 50  0001 C CNN
F 3 "" H 4125 1275 50  0000 C CNN
F 4 "KEMET" H 4225 1375 50  0001 C CNN "Manufacturer"
F 5 "0.1uF" H 3900 1175 50  0000 C CNN "P_Value"
F 6 "50V" H 4000 1300 25  0000 L CNN "P_Rating_U"
F 7 "X7R" H 4350 825 50  0001 C CNN "P_Tolerance"
F 8 "0603" H 3975 1250 25  0000 L CNN "Package"
	1    4100 1175
	-1   0    0    1   
$EndComp
Wire Wire Line
	4100 975  4100 1025
$Comp
L power:GND #PWR0205
U 1 1 5D34D157
P 4100 1375
F 0 "#PWR0205" H 4100 1125 50  0001 C CNN
F 1 "GND" H 4100 1225 50  0000 C CNN
F 2 "" H 4100 1375 50  0001 C CNN
F 3 "" H 4100 1375 50  0001 C CNN
	1    4100 1375
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 1375 4100 1325
$Comp
L Capacitor_0603:C0603C104K5RACAUTO C203
U 1 1 5D34EFE5
P 4525 1175
F 0 "C203" H 4400 1075 50  0000 C CNN
F 1 "C0603C104K5RACAUTO" H 4525 1475 50  0001 L CNN
F 2 "Passives:C_0603_Handsolder" H 4525 575 50  0001 C CNN
F 3 "" H 4550 1275 50  0000 C CNN
F 4 "KEMET" H 4650 1375 50  0001 C CNN "Manufacturer"
F 5 "0.1uF" H 4325 1175 50  0000 C CNN "P_Value"
F 6 "50V" H 4425 1300 25  0000 L CNN "P_Rating_U"
F 7 "X7R" H 4775 825 50  0001 C CNN "P_Tolerance"
F 8 "0603" H 4400 1250 25  0000 L CNN "Package"
	1    4525 1175
	-1   0    0    1   
$EndComp
Wire Wire Line
	4525 975  4525 1025
$Comp
L power:GND #PWR0207
U 1 1 5D34EFEC
P 4525 1375
F 0 "#PWR0207" H 4525 1125 50  0001 C CNN
F 1 "GND" H 4525 1225 50  0000 C CNN
F 2 "" H 4525 1375 50  0001 C CNN
F 3 "" H 4525 1375 50  0001 C CNN
	1    4525 1375
	1    0    0    -1  
$EndComp
Wire Wire Line
	4525 1375 4525 1325
$Comp
L MCU:ATMEGA328PB-AU U202
U 1 1 5D33FFB6
P 4325 3400
F 0 "U202" H 4825 4050 60  0000 L CNN
F 1 "ATMEGA328PB-AU" H 4750 2700 25  0000 L CNN
F 2 "QFP:TQFP-32" H 3875 3500 60  0001 C CNN
F 3 "" H 3875 3500 60  0001 C CNN
F 4 "1V8-5V" H 4325 3400 60  0001 C CNN "P_Rating_U"
F 5 "Atmega" H 4325 3400 60  0001 C CNN "Manufacturer"
F 6 "MCU" H 4325 3400 60  0001 C CNN "P_Value"
F 7 "TQFP" H 4325 3400 60  0001 C CNN "Package"
F 8 "Value" H 4325 3400 60  0001 C CNN "P_Tolerance"
	1    4325 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4375 4150 4375 4350
Wire Wire Line
	4375 4350 4800 4350
Text Label 5500 4625 2    50   ~ 0
GATE_LOAD
NoConn ~ 4625 2700
NoConn ~ 4725 2700
NoConn ~ 5075 3550
NoConn ~ 5075 3750
NoConn ~ 4575 4150
NoConn ~ 4475 4150
NoConn ~ 4175 4150
NoConn ~ 4075 4150
Text HLabel 1050 1150 0    50   BiDi ~ 0
DTR
Text HLabel 1050 1050 0    50   Output ~ 0
TX_M
Text HLabel 1050 950  0    50   Input ~ 0
RX_M
Text HLabel 1050 1325 0    50   BiDi ~ 0
SDA1
Text HLabel 1050 1425 0    50   BiDi ~ 0
SCL1
Wire Wire Line
	1050 950  1300 950 
Wire Wire Line
	1050 1050 1300 1050
Wire Wire Line
	1050 1150 1300 1150
Text Label 1300 1150 2    50   ~ 0
DTR
Text Label 1300 1050 2    50   ~ 0
TX_M
Text Label 1300 950  2    50   ~ 0
RX_M
Wire Wire Line
	1050 1325 1300 1325
Wire Wire Line
	1050 1425 1300 1425
Text Label 1300 1325 2    50   ~ 0
SDA1
Text Label 1300 1425 2    50   ~ 0
SCL1
Text HLabel 9450 1475 2    50   Input ~ 0
VIN
Text HLabel 9450 1575 2    50   Output ~ 0
GATE_LOAD
Wire Wire Line
	9450 1475 9175 1475
Wire Wire Line
	9450 1575 9025 1575
Text Label 9025 1575 0    50   ~ 0
GATE_LOAD
Text Label 9175 1475 0    50   ~ 0
VIN
Wire Wire Line
	9425 4125 9425 4200
$Comp
L power:GND #PWR0210
U 1 1 5D6E8770
P 9425 4675
F 0 "#PWR0210" H 9425 4425 50  0001 C CNN
F 1 "GND" H 9425 4525 50  0000 C CNN
F 2 "" H 9425 4675 50  0001 C CNN
F 3 "" H 9425 4675 50  0001 C CNN
	1    9425 4675
	1    0    0    -1  
$EndComp
Wire Wire Line
	9425 3825 9425 3725
Wire Wire Line
	9425 3725 9600 3725
Connection ~ 9425 4200
Wire Wire Line
	9425 4200 9425 4275
Text Label 8975 4200 0    50   ~ 0
V_SENSE_P
$Comp
L power:GND #PWR0209
U 1 1 5D6F6888
P 9425 3375
F 0 "#PWR0209" H 9425 3125 50  0001 C CNN
F 1 "GND" H 9425 3225 50  0000 C CNN
F 2 "" H 9425 3375 50  0001 C CNN
F 3 "" H 9425 3375 50  0001 C CNN
	1    9425 3375
	1    0    0    -1  
$EndComp
Wire Wire Line
	9425 2850 9425 2900
Wire Wire Line
	9425 2550 9425 2425
Wire Wire Line
	9425 2425 9650 2425
Connection ~ 9425 2900
Wire Wire Line
	9425 2900 9425 2975
Text Label 8975 2900 0    50   ~ 0
I_SENSE_P
Text HLabel 9450 1375 2    50   Input ~ 0
I_OUT
Wire Wire Line
	9450 1375 9175 1375
Text Label 9175 1375 0    50   ~ 0
I_OUT
Text Label 9650 2425 2    50   ~ 0
I_OUT
NoConn ~ 5075 3050
$Comp
L Capacitor_0603:C0603C104K5RACAUTO C205
U 1 1 5DD69BE6
P 7375 3200
F 0 "C205" H 7250 3100 50  0000 C CNN
F 1 "C0603C104K5RACAUTO" H 7375 3500 50  0001 L CNN
F 2 "Passives:C_0603_Handsolder" H 7375 2600 50  0001 C CNN
F 3 "" H 7400 3300 50  0000 C CNN
F 4 "KEMET" H 7500 3400 50  0001 C CNN "Manufacturer"
F 5 "0.1uF" H 7175 3200 50  0000 C CNN "P_Value"
F 6 "50V" H 7275 3325 25  0000 L CNN "P_Rating_U"
F 7 "X7R" H 7625 2850 50  0001 C CNN "P_Tolerance"
F 8 "0603" H 7250 3275 25  0000 L CNN "Package"
	1    7375 3200
	-1   0    0    1   
$EndComp
Wire Wire Line
	7375 3000 7375 3050
$Comp
L power:GND #PWR0115
U 1 1 5DD69BED
P 7375 3400
F 0 "#PWR0115" H 7375 3150 50  0001 C CNN
F 1 "GND" H 7375 3250 50  0000 C CNN
F 2 "" H 7375 3400 50  0001 C CNN
F 3 "" H 7375 3400 50  0001 C CNN
	1    7375 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7375 3400 7375 3350
Wire Wire Line
	8975 4200 9425 4200
NoConn ~ 5075 3150
$Comp
L Crystals:CB3-3I-16M0000 Y201
U 1 1 5F0DF77E
P 2825 3700
F 0 "Y201" H 2825 3875 50  0000 C CNN
F 1 "CB3-3I-16M0000" H 2725 4500 50  0001 C CNN
F 2 "Crystals_sg:CB3" H 2625 4475 50  0001 C CNN
F 3 "" H 2725 4575 50  0001 C CNN
F 4 "CTS-Frequency Controls" H 2825 4675 50  0001 C CNN "Manufacturer"
F 5 "16MHz" H 2825 3500 50  0000 C CNN "P_Value"
F 6 "5V" H 2825 3700 50  0001 C CNN "P_Rating"
F 7 "4-SMD" H 3025 4875 50  0001 C CNN "Package"
	1    2825 3700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0201
U 1 1 5F0E4A55
P 3175 3850
F 0 "#PWR0201" H 3175 3600 50  0001 C CNN
F 1 "GND" H 3175 3700 50  0000 C CNN
F 2 "" H 3175 3850 50  0001 C CNN
F 3 "" H 3175 3850 50  0001 C CNN
	1    3175 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3125 3775 3175 3775
Wire Wire Line
	3175 3775 3175 3850
NoConn ~ 2525 3775
Wire Wire Line
	3125 3650 3575 3650
$Comp
L ADC:ADS1119IPWR U203
U 1 1 5F106FFD
P 7400 4250
F 0 "U203" H 7625 4750 50  0000 C CNN
F 1 "ADS1119IPWR" H 7400 3725 50  0000 C CNN
F 2 "SSOP:TSSOP-16" H 6600 5450 60  0001 C CNN
F 3 "" H 6600 5450 60  0001 C CNN
F 4 "2V - 5V5" H 6650 5600 60  0001 C CNN "P_Rating"
F 5 "Texas Instruments" H 6600 5450 60  0001 C CNN "Manufacturer"
F 6 "16-BIT" H 6600 5450 60  0001 C CNN "P_Value"
F 7 "4S_2D" H 6600 5450 60  0001 C CNN "P_Tolerance"
F 8 "TSSOP-16" H 6600 5450 60  0001 C CNN "Package"
	1    7400 4250
	-1   0    0    -1  
$EndComp
Text Label 6775 4000 0    50   ~ 0
SCL
Text Label 6775 4100 0    50   ~ 0
SDA
Wire Wire Line
	7000 4100 6775 4100
Wire Wire Line
	7000 4000 6775 4000
$Comp
L power:GND #PWR0218
U 1 1 5F10F19D
P 6950 4650
F 0 "#PWR0218" H 6950 4400 50  0001 C CNN
F 1 "GND" H 6950 4500 50  0000 C CNN
F 2 "" H 6950 4650 50  0001 C CNN
F 3 "" H 6950 4650 50  0001 C CNN
	1    6950 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 4650 6950 4600
Wire Wire Line
	6950 4600 7000 4600
$Comp
L power:GND #PWR0220
U 1 1 5F110A4F
P 7850 4650
F 0 "#PWR0220" H 7850 4400 50  0001 C CNN
F 1 "GND" H 7850 4500 50  0000 C CNN
F 2 "" H 7850 4650 50  0001 C CNN
F 3 "" H 7850 4650 50  0001 C CNN
	1    7850 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 4500 7850 4500
Wire Wire Line
	7850 4500 7850 4600
Wire Wire Line
	7800 4600 7850 4600
Connection ~ 7850 4600
Wire Wire Line
	7850 4600 7850 4650
Wire Wire Line
	7000 4200 6950 4200
Text Label 6775 4200 0    50   ~ 0
GND
Wire Wire Line
	7000 4300 6950 4300
Wire Wire Line
	6950 4300 6950 4200
Connection ~ 6950 4200
Wire Wire Line
	6950 4200 6775 4200
Text Notes 6100 4300 0    50   ~ 0
I2C ADDRESS:\n0h40
$Comp
L power:+5V #PWR0214
U 1 1 5F123714
P 4100 975
F 0 "#PWR0214" H 4100 825 50  0001 C CNN
F 1 "+5V" H 4075 1125 50  0000 C CNN
F 2 "" H 4100 975 50  0001 C CNN
F 3 "" H 4100 975 50  0001 C CNN
	1    4100 975 
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0216
U 1 1 5F1243F3
P 4525 975
F 0 "#PWR0216" H 4525 825 50  0001 C CNN
F 1 "+5V" H 4500 1125 50  0000 C CNN
F 2 "" H 4525 975 50  0001 C CNN
F 3 "" H 4525 975 50  0001 C CNN
	1    4525 975 
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0215
U 1 1 5F1245E8
P 4325 1875
F 0 "#PWR0215" H 4325 1725 50  0001 C CNN
F 1 "+5V" H 4325 2025 50  0000 C CNN
F 2 "" H 4325 1875 50  0001 C CNN
F 3 "" H 4325 1875 50  0001 C CNN
	1    4325 1875
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0219
U 1 1 5F124D85
P 7375 3000
F 0 "#PWR0219" H 7375 2850 50  0001 C CNN
F 1 "+5V" H 7350 3150 50  0000 C CNN
F 2 "" H 7375 3000 50  0001 C CNN
F 3 "" H 7375 3000 50  0001 C CNN
	1    7375 3000
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0221
U 1 1 5F13051F
P 7875 3850
F 0 "#PWR0221" H 7875 3700 50  0001 C CNN
F 1 "+5V" H 7850 4000 50  0000 C CNN
F 2 "" H 7875 3850 50  0001 C CNN
F 3 "" H 7875 3850 50  0001 C CNN
	1    7875 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 3900 7875 3900
Wire Wire Line
	7875 3900 7875 3850
Wire Wire Line
	7800 4000 7875 4000
Wire Wire Line
	7875 4000 7875 3900
Connection ~ 7875 3900
$Comp
L power:+5V #PWR0217
U 1 1 5F134670
P 6950 3875
F 0 "#PWR0217" H 6950 3725 50  0001 C CNN
F 1 "+5V" H 6925 4025 50  0000 C CNN
F 2 "" H 6950 3875 50  0001 C CNN
F 3 "" H 6950 3875 50  0001 C CNN
	1    6950 3875
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 3875 6950 3900
Wire Wire Line
	6950 3900 7000 3900
Wire Wire Line
	7800 4100 8225 4100
Wire Wire Line
	7800 4200 8225 4200
Text Label 8225 4100 2    50   ~ 0
I_SENSE_P
Text Label 8225 4200 2    50   ~ 0
V_SENSE_P
$Comp
L Resistors_0603:RC0603FR-0730KL R202
U 1 1 5F150011
P 9425 2700
F 0 "R202" V 9425 2700 50  0000 C CNN
F 1 "RC0603FR-0730KL" V 9525 2700 50  0001 C CNN
F 2 "Passives:R_0603_Handsolder" V 9355 2700 50  0001 C CNN
F 3 "" V 9505 2700 50  0000 C CNN
F 4 "Yageo" V 9605 2800 60  0001 C CNN "Manufacturer"
F 5 "30k" H 9475 2750 50  0000 L CNN "P_Value"
F 6 "1/10W" V 9725 3000 60  0001 C CNN "P_Rating_U"
F 7 "1%" H 9500 2625 25  0000 L CNN "P_Tolerance"
F 8 "0603" H 9500 2675 25  0000 L CNN "Package"
	1    9425 2700
	1    0    0    -1  
$EndComp
$Comp
L Resistors_0603:RR0816P-203-D R203
U 1 1 5F150DD1
P 9425 3125
F 0 "R203" V 9425 3125 50  0000 C CNN
F 1 "RR0816P-203-D" V 9525 3125 50  0001 C CNN
F 2 "Passives:R_0603_Handsolder" V 9355 3125 50  0001 C CNN
F 3 "" V 9505 3125 50  0000 C CNN
F 4 "Susumu" V 9605 3225 60  0001 C CNN "Manufacturer"
F 5 "20k" H 9495 3106 50  0000 L CNN "P_Value"
F 6 "1/16W" V 9725 3425 60  0001 C CNN "P_Rating_U"
F 7 "0.5%" V 9825 3525 60  0001 C CNN "P_Tolerance"
F 8 "0603" H 9495 3034 25  0000 L CNN "Package"
	1    9425 3125
	1    0    0    -1  
$EndComp
NoConn ~ 5075 3250
NoConn ~ 5075 3450
$Comp
L 20190720_Project_OCP-OVP-UVP-rescue:TP_CIRCLE_1MM-TestPoint TP201
U 1 1 5F163948
P 3625 2550
F 0 "TP201" H 3475 2700 60  0000 L CNN
F 1 "TP_CIRCLE_1MM" H 3575 2150 50  0001 C CNN
F 2 "TestPoint:TP_CIRCLE_1MM" V 4225 2350 60  0001 C CNN
F 3 "" H 3625 2700 60  0001 C CNN
F 4 "CUSTOM" H 4175 3200 50  0001 C CNN "Manufacturer"
F 5 "1POS" H 3625 2300 50  0001 C CNN "P_Value"
F 6 "##" H 4175 3000 60  0001 C CNN "P_Rating_U"
F 7 "1MM" H 4175 3100 60  0001 C CNN "P_Tolerance"
F 8 "SMD" H 4175 3300 60  0001 C CNN "Package"
	1    3625 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3625 2600 3625 2675
Wire Wire Line
	4325 2200 4325 2250
Wire Wire Line
	4525 2250 4325 2250
Connection ~ 4325 2250
Wire Wire Line
	4325 2250 4325 2700
Wire Wire Line
	3625 2675 4025 2675
$Comp
L 20190720_Project_OCP-OVP-UVP-rescue:KSC721G-Switch SW201
U 1 1 5F192C1C
P 1600 6850
F 0 "SW201" H 1600 7025 50  0000 C CNN
F 1 "KSC721G" H 1600 7250 50  0001 C CNN
F 2 "Switches_sg:KSC721G" H 1600 7050 50  0001 C CNN
F 3 "" H 1600 7050 50  0001 C CNN
F 4 "C&K" H 1600 7250 50  0001 C CNN "Manufacturer"
F 5 "SPST-NO" H 1600 6775 25  0000 C CNN "P_Value"
F 6 "0.05A @ 32VDC" H 1600 7250 50  0001 C CNN "P_Rating"
F 7 "300,000 cycles" H 1650 7250 50  0001 C CNN "P_Tolerance"
F 8 "SMD" H 1600 7250 50  0001 C CNN "Package"
	1    1600 6850
	1    0    0    -1  
$EndComp
$Comp
L Resistors_0603:ERA-3AEB103V R?
U 1 1 5F19604A
P 1950 6600
AR Path="/5D3D6AE6/5F19604A" Ref="R?"  Part="1" 
AR Path="/5D33FBEB/5F19604A" Ref="R206"  Part="1" 
F 0 "R206" V 1950 6600 50  0000 C CNN
F 1 "ERA-3AEB103V" V 2050 6600 50  0001 C CNN
F 2 "Passives:R_0603_Handsolder" V 1880 6600 50  0001 C CNN
F 3 "" V 2030 6600 50  0000 C CNN
F 4 "Panasonic Electronic Components" V 2130 6700 60  0001 C CNN "Manufacturer"
F 5 "10k" H 2000 6650 50  0000 L CNN "P_Value"
F 6 "1/10W" V 2250 6900 60  0001 C CNN "P_Rating_U"
F 7 "0.1%" H 2025 6525 25  0000 L CNN "P_Tolerance"
F 8 "0603" H 2025 6575 25  0000 L CNN "Package"
	1    1950 6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 6850 1950 6850
Wire Wire Line
	1950 6850 1950 6750
$Comp
L Resistors_0603:ERA-3AEB103V R?
U 1 1 5F19A81F
P 2225 6850
AR Path="/5D3D6AE6/5F19A81F" Ref="R?"  Part="1" 
AR Path="/5D33FBEB/5F19A81F" Ref="R207"  Part="1" 
F 0 "R207" V 2225 6850 50  0000 C CNN
F 1 "ERA-3AEB103V" V 2325 6850 50  0001 C CNN
F 2 "Passives:R_0603_Handsolder" V 2155 6850 50  0001 C CNN
F 3 "" V 2305 6850 50  0000 C CNN
F 4 "Panasonic Electronic Components" V 2405 6950 60  0001 C CNN "Manufacturer"
F 5 "10k" V 2125 6775 50  0000 L CNN "P_Value"
F 6 "1/10W" V 2525 7150 60  0001 C CNN "P_Rating_U"
F 7 "0.1%" V 2350 6800 25  0000 L CNN "P_Tolerance"
F 8 "0603" V 2300 6800 25  0000 L CNN "Package"
	1    2225 6850
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR0204
U 1 1 5F19AFFF
P 1950 6375
F 0 "#PWR0204" H 1950 6225 50  0001 C CNN
F 1 "+5V" H 1925 6525 50  0000 C CNN
F 2 "" H 1950 6375 50  0001 C CNN
F 3 "" H 1950 6375 50  0001 C CNN
	1    1950 6375
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 6375 1950 6450
Wire Wire Line
	2075 6850 1950 6850
Connection ~ 1950 6850
$Comp
L Capacitor_0603:C0603C104K5RACAUTO C206
U 1 1 5F1A0A4C
P 2550 7050
F 0 "C206" H 2425 6950 50  0000 C CNN
F 1 "C0603C104K5RACAUTO" H 2550 7350 50  0001 L CNN
F 2 "Passives:C_0603_Handsolder" H 2550 6450 50  0001 C CNN
F 3 "" H 2575 7150 50  0000 C CNN
F 4 "KEMET" H 2675 7250 50  0001 C CNN "Manufacturer"
F 5 "0.1uF" H 2350 7050 50  0000 C CNN "P_Value"
F 6 "50V" H 2450 7175 25  0000 L CNN "P_Rating_U"
F 7 "X7R" H 2800 6700 50  0001 C CNN "P_Tolerance"
F 8 "0603" H 2425 7125 25  0000 L CNN "Package"
	1    2550 7050
	1    0    0    1   
$EndComp
Wire Wire Line
	2375 6850 2550 6850
Wire Wire Line
	2550 6850 2550 6900
$Comp
L power:GND #PWR0203
U 1 1 5F1A5F2C
P 1300 7000
F 0 "#PWR0203" H 1300 6750 50  0001 C CNN
F 1 "GND" H 1300 6850 50  0000 C CNN
F 2 "" H 1300 7000 50  0001 C CNN
F 3 "" H 1300 7000 50  0001 C CNN
	1    1300 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 7000 1300 6850
Wire Wire Line
	1300 6850 1400 6850
$Comp
L power:GND #PWR0208
U 1 1 5F1A9122
P 2550 7300
F 0 "#PWR0208" H 2550 7050 50  0001 C CNN
F 1 "GND" H 2550 7150 50  0000 C CNN
F 2 "" H 2550 7300 50  0001 C CNN
F 3 "" H 2550 7300 50  0001 C CNN
	1    2550 7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 7300 2550 7250
$Comp
L OpAmps:MC74HC1G04DFT1G U201
U 1 1 5F1AC8CF
P 3075 6900
F 0 "U201" H 3075 7150 60  0000 C CNN
F 1 "MC74HC1G04DFT1G" H 3075 6775 25  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-353_SC-70-5" H 3075 6600 60  0001 C CNN
F 3 "" H 3075 6900 60  0001 C CNN
F 4 "ON Semiconductor" H 3075 6600 50  0001 C CNN "Manufacturer"
F 5 "Inverter Gate" H 3125 6600 50  0001 C CNN "P_Value"
F 6 "2V-6V" H 3075 6600 50  0001 C CNN "P_Rating"
F 7 "SC-70-5" H 3075 6600 50  0001 C CNN "Package"
	1    3075 6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2775 6850 2550 6850
Connection ~ 2550 6850
Wire Wire Line
	2775 6950 2725 6950
Wire Wire Line
	2725 6950 2725 7250
Wire Wire Line
	2725 7250 2550 7250
Connection ~ 2550 7250
Wire Wire Line
	2550 7250 2550 7200
NoConn ~ 2775 6750
$Comp
L Capacitor_0603:C0603C104K5RACAUTO C207
U 1 1 5F1D91DC
P 3125 6150
F 0 "C207" H 3000 6050 50  0000 C CNN
F 1 "C0603C104K5RACAUTO" H 3125 6450 50  0001 L CNN
F 2 "Passives:C_0603_Handsolder" H 3125 5550 50  0001 C CNN
F 3 "" H 3150 6250 50  0000 C CNN
F 4 "KEMET" H 3250 6350 50  0001 C CNN "Manufacturer"
F 5 "0.1uF" H 2925 6150 50  0000 C CNN "P_Value"
F 6 "50V" H 3025 6275 25  0000 L CNN "P_Rating_U"
F 7 "X7R" H 3375 5800 50  0001 C CNN "P_Tolerance"
F 8 "0603" H 3000 6225 25  0000 L CNN "Package"
	1    3125 6150
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR0212
U 1 1 5F1D983A
P 3125 6350
F 0 "#PWR0212" H 3125 6100 50  0001 C CNN
F 1 "GND" H 3125 6200 50  0000 C CNN
F 2 "" H 3125 6350 50  0001 C CNN
F 3 "" H 3125 6350 50  0001 C CNN
	1    3125 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3125 6350 3125 6300
$Comp
L power:+5V #PWR0211
U 1 1 5F1E57B8
P 3125 5950
F 0 "#PWR0211" H 3125 5800 50  0001 C CNN
F 1 "+5V" H 3100 6100 50  0000 C CNN
F 2 "" H 3125 5950 50  0001 C CNN
F 3 "" H 3125 5950 50  0001 C CNN
	1    3125 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3125 5950 3125 6000
$Comp
L power:+5V #PWR0213
U 1 1 5F1E8F77
P 3475 6675
F 0 "#PWR0213" H 3475 6525 50  0001 C CNN
F 1 "+5V" H 3450 6825 50  0000 C CNN
F 2 "" H 3475 6675 50  0001 C CNN
F 3 "" H 3475 6675 50  0001 C CNN
	1    3475 6675
	1    0    0    -1  
$EndComp
Wire Wire Line
	3425 6750 3475 6750
Wire Wire Line
	3475 6750 3475 6675
Wire Wire Line
	3425 6950 3800 6950
Text Label 3800 6950 2    50   ~ 0
RESTORE
Wire Wire Line
	3575 3050 3225 3050
Text Label 3225 3050 0    50   ~ 0
RESTORE
Wire Notes Line width 25
	1050 5700 1050 7675
Wire Notes Line width 25
	1050 7675 4025 7675
Wire Notes Line width 25
	4025 7675 4025 5700
Wire Notes Line width 25
	4025 5700 1050 5700
Text Notes 1125 6025 0    50   ~ 10
INPUT BUTTON\nFOR RESET WHEN \nFAULT OCCURS
Wire Wire Line
	2525 3650 2475 3650
Wire Wire Line
	2475 3650 2475 3525
$Comp
L power:+5V #PWR0206
U 1 1 5F124ADF
P 2150 3475
F 0 "#PWR0206" H 2150 3325 50  0001 C CNN
F 1 "+5V" H 2125 3625 50  0000 C CNN
F 2 "" H 2150 3475 50  0001 C CNN
F 3 "" H 2150 3475 50  0001 C CNN
	1    2150 3475
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 3525 2150 3575
Connection ~ 2150 3525
Wire Wire Line
	2475 3525 2150 3525
Wire Wire Line
	2150 3475 2150 3525
Wire Wire Line
	2150 3925 2150 3875
$Comp
L power:GND #PWR0202
U 1 1 5D3681CF
P 2150 3925
F 0 "#PWR0202" H 2150 3675 50  0001 C CNN
F 1 "GND" H 2150 3775 50  0000 C CNN
F 2 "" H 2150 3925 50  0001 C CNN
F 3 "" H 2150 3925 50  0001 C CNN
	1    2150 3925
	1    0    0    -1  
$EndComp
$Comp
L Capacitor_0603:C0603C104K5RACAUTO C201
U 1 1 5D3681C8
P 2150 3725
F 0 "C201" H 2025 3625 50  0000 C CNN
F 1 "C0603C104K5RACAUTO" H 2150 4025 50  0001 L CNN
F 2 "Passives:C_0603_Handsolder" H 2150 3125 50  0001 C CNN
F 3 "" H 2175 3825 50  0000 C CNN
F 4 "KEMET" H 2275 3925 50  0001 C CNN "Manufacturer"
F 5 "0.1uF" H 1950 3725 50  0000 C CNN "P_Value"
F 6 "50V" H 2050 3850 25  0000 L CNN "P_Rating_U"
F 7 "X7R" H 2400 3375 50  0001 C CNN "P_Tolerance"
F 8 "0603" H 2025 3800 25  0000 L CNN "Package"
	1    2150 3725
	-1   0    0    1   
$EndComp
Wire Wire Line
	7000 4500 6800 4500
Text Label 6800 4500 0    50   ~ 0
+5V
NoConn ~ 4675 4150
Text HLabel 9450 1675 2    50   Output ~ 0
CHRG_ON
Wire Wire Line
	9450 1675 9025 1675
Text Label 9025 1675 0    50   ~ 0
CHRG_ON
Wire Wire Line
	4275 4150 4275 4625
Wire Wire Line
	4275 4625 4800 4625
Text Label 5475 4350 2    50   ~ 0
CHRG_ON
Text Label 9600 3725 2    50   ~ 0
VIN
Wire Wire Line
	9425 3275 9425 3325
Wire Wire Line
	9425 4575 9425 4625
NoConn ~ 7800 4400
Wire Wire Line
	4525 2700 4525 2650
Wire Wire Line
	4525 2650 4750 2650
Text Label 4750 2650 2    50   ~ 0
SDA
Wire Wire Line
	4750 2575 4425 2575
Wire Wire Line
	4425 2575 4425 2700
Text Label 4750 2575 2    50   ~ 0
SCL
NoConn ~ 3575 3150
$Comp
L Resistors_0603:ERA-3AEB103V R?
U 1 1 5F8A087E
P 6500 2900
AR Path="/5D3D6AE6/5F8A087E" Ref="R?"  Part="1" 
AR Path="/5D33FBEB/5F8A087E" Ref="R209"  Part="1" 
F 0 "R209" V 6500 2900 50  0000 C CNN
F 1 "ERA-3AEB103V" V 6600 2900 50  0001 C CNN
F 2 "Passives:R_0603_Handsolder" V 6430 2900 50  0001 C CNN
F 3 "" V 6580 2900 50  0000 C CNN
F 4 "Panasonic Electronic Components" V 6680 3000 60  0001 C CNN "Manufacturer"
F 5 "10k" H 6550 2950 50  0000 L CNN "P_Value"
F 6 "1/10W" V 6800 3200 60  0001 C CNN "P_Rating_U"
F 7 "0.1%" H 6575 2825 25  0000 L CNN "P_Tolerance"
F 8 "0603" H 6575 2875 25  0000 L CNN "Package"
	1    6500 2900
	1    0    0    -1  
$EndComp
$Comp
L Resistors_0603:ERA-3AEB103V R?
U 1 1 5F8A34AD
P 6250 2900
AR Path="/5D3D6AE6/5F8A34AD" Ref="R?"  Part="1" 
AR Path="/5D33FBEB/5F8A34AD" Ref="R208"  Part="1" 
F 0 "R208" V 6250 2900 50  0000 C CNN
F 1 "ERA-3AEB103V" V 6350 2900 50  0001 C CNN
F 2 "Passives:R_0603_Handsolder" V 6180 2900 50  0001 C CNN
F 3 "" V 6330 2900 50  0000 C CNN
F 4 "Panasonic Electronic Components" V 6430 3000 60  0001 C CNN "Manufacturer"
F 5 "10k" H 6300 2950 50  0000 L CNN "P_Value"
F 6 "1/10W" V 6550 3200 60  0001 C CNN "P_Rating_U"
F 7 "0.1%" H 6325 2825 25  0000 L CNN "P_Tolerance"
F 8 "0603" H 6325 2875 25  0000 L CNN "Package"
	1    6250 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 2700 6500 2750
$Comp
L power:+5V #PWR0223
U 1 1 5F8AB794
P 6500 2700
F 0 "#PWR0223" H 6500 2550 50  0001 C CNN
F 1 "+5V" H 6475 2850 50  0000 C CNN
F 2 "" H 6500 2700 50  0001 C CNN
F 3 "" H 6500 2700 50  0001 C CNN
	1    6500 2700
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0222
U 1 1 5F8B595C
P 6250 2700
F 0 "#PWR0222" H 6250 2550 50  0001 C CNN
F 1 "+5V" H 6225 2850 50  0000 C CNN
F 2 "" H 6250 2700 50  0001 C CNN
F 3 "" H 6250 2700 50  0001 C CNN
	1    6250 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 2700 6250 2750
Text Label 6650 3125 2    50   ~ 0
SCL
Text Label 6650 3225 2    50   ~ 0
SDA
Wire Wire Line
	6500 3050 6500 3125
Wire Wire Line
	6500 3125 6650 3125
Wire Wire Line
	6250 3050 6250 3225
Wire Wire Line
	6250 3225 6650 3225
NoConn ~ 7000 4400
$Comp
L Resistors_0603:RC0603FR-07470RL R211
U 1 1 5FD7D13A
P 4950 4625
F 0 "R211" V 4950 4625 50  0000 C CNN
F 1 "RC0603FR-07470RL" H 5250 5250 50  0001 C CNN
F 2 "Passives:R_0603_Handsolder" H 5500 5150 50  0001 C CNN
F 3 "" V 5030 4625 50  0000 C CNN
F 4 "Yageo" V 5130 4725 60  0001 C CNN "Manufacturer"
F 5 "470R" V 5025 4625 50  0000 C CNN "P_Value"
F 6 "1/10W" V 5250 4925 60  0001 C CNN "P_Rating_U"
F 7 "1%" V 4825 4625 25  0000 C CNN "P_Tolerance"
F 8 "0603" V 4875 4625 25  0000 C CNN "Package"
F 9 "311-470HRCT-ND " H 5100 5325 50  0001 C CNN "P_Digikey"
	1    4950 4625
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5500 4625 5100 4625
$Comp
L Resistors_0603:RC0603FR-07470RL R210
U 1 1 5FD8CD60
P 4950 4350
F 0 "R210" V 4950 4350 50  0000 C CNN
F 1 "RC0603FR-07470RL" H 5250 4975 50  0001 C CNN
F 2 "Passives:R_0603_Handsolder" H 5500 4875 50  0001 C CNN
F 3 "" V 5030 4350 50  0000 C CNN
F 4 "Yageo" V 5130 4450 60  0001 C CNN "Manufacturer"
F 5 "470R" V 5025 4350 50  0000 C CNN "P_Value"
F 6 "1/10W" V 5250 4650 60  0001 C CNN "P_Rating_U"
F 7 "1%" V 4825 4350 25  0000 C CNN "P_Tolerance"
F 8 "0603" V 4875 4350 25  0000 C CNN "Package"
F 9 "311-470HRCT-ND " H 5100 5050 50  0001 C CNN "P_Digikey"
	1    4950 4350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5475 4350 5100 4350
Wire Wire Line
	7800 4300 8075 4300
$Comp
L power:GND #PWR0225
U 1 1 600F08DD
P 9425 6125
F 0 "#PWR0225" H 9425 5875 50  0001 C CNN
F 1 "GND" H 9425 5975 50  0000 C CNN
F 2 "" H 9425 6125 50  0001 C CNN
F 3 "" H 9425 6125 50  0001 C CNN
	1    9425 6125
	1    0    0    -1  
$EndComp
Wire Wire Line
	9425 5600 9425 5650
Wire Wire Line
	9425 5300 9425 5225
Wire Wire Line
	9425 5650 9125 5650
Connection ~ 9425 5650
Wire Wire Line
	9425 5650 9425 5725
Text Label 9125 5650 0    50   ~ 0
V_RAIL
$Comp
L Resistors_0603:RC0603FR-0730KL R212
U 1 1 600F08F0
P 9425 5450
F 0 "R212" V 9425 5450 50  0000 C CNN
F 1 "RC0603FR-0730KL" V 9525 5450 50  0001 C CNN
F 2 "Passives:R_0603_Handsolder" V 9355 5450 50  0001 C CNN
F 3 "" V 9505 5450 50  0000 C CNN
F 4 "Yageo" V 9605 5550 60  0001 C CNN "Manufacturer"
F 5 "30k" H 9475 5500 50  0000 L CNN "P_Value"
F 6 "1/10W" V 9725 5750 60  0001 C CNN "P_Rating_U"
F 7 "1%" H 9500 5375 25  0000 L CNN "P_Tolerance"
F 8 "0603" H 9500 5425 25  0000 L CNN "Package"
	1    9425 5450
	1    0    0    -1  
$EndComp
$Comp
L Resistors_0603:RR0816P-203-D R213
U 1 1 600F08FB
P 9425 5875
F 0 "R213" V 9425 5875 50  0000 C CNN
F 1 "RR0816P-203-D" V 9525 5875 50  0001 C CNN
F 2 "Passives:R_0603_Handsolder" V 9355 5875 50  0001 C CNN
F 3 "" V 9505 5875 50  0000 C CNN
F 4 "Susumu" V 9605 5975 60  0001 C CNN "Manufacturer"
F 5 "20k" H 9495 5856 50  0000 L CNN "P_Value"
F 6 "1/16W" V 9725 6175 60  0001 C CNN "P_Rating_U"
F 7 "0.5%" V 9825 6275 60  0001 C CNN "P_Tolerance"
F 8 "0603" H 9495 5784 25  0000 L CNN "Package"
	1    9425 5875
	1    0    0    -1  
$EndComp
Wire Wire Line
	9425 6025 9425 6075
$Comp
L power:+5V #PWR0224
U 1 1 600F456A
P 9425 5225
F 0 "#PWR0224" H 9425 5075 50  0001 C CNN
F 1 "+5V" H 9400 5375 50  0000 C CNN
F 2 "" H 9425 5225 50  0001 C CNN
F 3 "" H 9425 5225 50  0001 C CNN
	1    9425 5225
	1    0    0    -1  
$EndComp
Text Label 8075 4300 2    50   ~ 0
V_RAIL
Wire Wire Line
	3975 4150 3975 4400
Wire Wire Line
	3975 4400 3600 4400
Text Label 3600 4400 0    50   ~ 0
OCP_TRIG
Text HLabel 1050 1525 0    50   Output ~ 0
OCP_TRIG
Wire Wire Line
	1050 1525 1425 1525
Text Label 1425 1525 2    50   ~ 0
OCP_TRIG
$Comp
L 20190720_Project_OCP-OVP-UVP-rescue:TP_CIRCLE_1.5MM TP202
U 1 1 602A9186
P 9750 2775
F 0 "TP202" H 9675 2925 60  0000 L CNN
F 1 "TP_CIRCLE_1.5MM" H 9700 2375 50  0001 C CNN
F 2 "TestPoint:TP_CIRCLE_1.5MM" V 10350 2575 60  0001 C CNN
F 3 "" H 9750 2925 60  0001 C CNN
F 4 "CUSTOM" H 10300 3425 50  0001 C CNN "Manufacturer"
F 5 "1POS" H 9750 2525 50  0001 C CNN "P_Value"
F 6 "##" H 10300 3225 60  0001 C CNN "P_Rating_U"
F 7 "1.5MM" H 10300 3325 60  0001 C CNN "P_Tolerance"
F 8 "SMD" H 10300 3525 60  0001 C CNN "Package"
	1    9750 2775
	1    0    0    -1  
$EndComp
Wire Wire Line
	9425 2900 8975 2900
$Comp
L 20190720_Project_OCP-OVP-UVP-rescue:TP_CIRCLE_1.5MM TP203
U 1 1 602AFA5C
P 9750 3150
F 0 "TP203" H 9675 3300 60  0000 L CNN
F 1 "TP_CIRCLE_1.5MM" H 9700 2750 50  0001 C CNN
F 2 "TestPoint:TP_CIRCLE_1.5MM" V 10350 2950 60  0001 C CNN
F 3 "" H 9750 3300 60  0001 C CNN
F 4 "CUSTOM" H 10300 3800 50  0001 C CNN "Manufacturer"
F 5 "1POS" H 9750 2900 50  0001 C CNN "P_Value"
F 6 "##" H 10300 3600 60  0001 C CNN "P_Rating_U"
F 7 "1.5MM" H 10300 3700 60  0001 C CNN "P_Tolerance"
F 8 "SMD" H 10300 3900 60  0001 C CNN "Package"
	1    9750 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9750 3200 9750 3325
Wire Wire Line
	9750 3325 9425 3325
Connection ~ 9425 3325
Wire Wire Line
	9425 3325 9425 3375
Wire Wire Line
	9750 2825 9750 2900
Wire Wire Line
	9750 2900 9425 2900
$Comp
L 20190720_Project_OCP-OVP-UVP-rescue:TP_CIRCLE_1.5MM TP204
U 1 1 602B8858
P 9800 4025
F 0 "TP204" H 9725 4175 60  0000 L CNN
F 1 "TP_CIRCLE_1.5MM" H 9750 3625 50  0001 C CNN
F 2 "TestPoint:TP_CIRCLE_1.5MM" V 10400 3825 60  0001 C CNN
F 3 "" H 9800 4175 60  0001 C CNN
F 4 "CUSTOM" H 10350 4675 50  0001 C CNN "Manufacturer"
F 5 "1POS" H 9800 3775 50  0001 C CNN "P_Value"
F 6 "##" H 10350 4475 60  0001 C CNN "P_Rating_U"
F 7 "1.5MM" H 10350 4575 60  0001 C CNN "P_Tolerance"
F 8 "SMD" H 10350 4775 60  0001 C CNN "Package"
	1    9800 4025
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 4075 9800 4200
Wire Wire Line
	9800 4200 9425 4200
$Comp
L 20190720_Project_OCP-OVP-UVP-rescue:TP_CIRCLE_1.5MM TP205
U 1 1 602BD825
P 9800 4500
F 0 "TP205" H 9725 4650 60  0000 L CNN
F 1 "TP_CIRCLE_1.5MM" H 9750 4100 50  0001 C CNN
F 2 "TestPoint:TP_CIRCLE_1.5MM" V 10400 4300 60  0001 C CNN
F 3 "" H 9800 4650 60  0001 C CNN
F 4 "CUSTOM" H 10350 5150 50  0001 C CNN "Manufacturer"
F 5 "1POS" H 9800 4250 50  0001 C CNN "P_Value"
F 6 "##" H 10350 4950 60  0001 C CNN "P_Rating_U"
F 7 "1.5MM" H 10350 5050 60  0001 C CNN "P_Tolerance"
F 8 "SMD" H 10350 5250 60  0001 C CNN "Package"
	1    9800 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 4550 9800 4625
Wire Wire Line
	9800 4625 9425 4625
Connection ~ 9425 4625
Wire Wire Line
	9425 4625 9425 4675
Wire Wire Line
	9800 5525 9800 5650
Wire Wire Line
	9425 5650 9800 5650
Wire Wire Line
	9800 5975 9800 6075
Wire Wire Line
	9800 6075 9425 6075
Connection ~ 9425 6075
Wire Wire Line
	9425 6075 9425 6125
$Comp
L 20190720_Project_OCP-OVP-UVP-rescue:TP_CIRCLE_1MM-TestPoint TP206
U 1 1 602DE39B
P 9800 5475
F 0 "TP206" H 9650 5625 60  0000 L CNN
F 1 "TP_CIRCLE_1MM-TestPoint" H 9750 5075 50  0001 C CNN
F 2 "TestPoint:TP_CIRCLE_1MM" V 10400 5275 60  0001 C CNN
F 3 "" H 9800 5625 60  0001 C CNN
F 4 "CUSTOM" H 10350 6125 50  0001 C CNN "Manufacturer"
F 5 "1POS" H 9800 5225 50  0001 C CNN "P_Value"
F 6 "##" H 10350 5925 60  0001 C CNN "P_Rating_U"
F 7 "1MM" H 10350 6025 60  0001 C CNN "P_Tolerance"
F 8 "SMD" H 10350 6225 60  0001 C CNN "Package"
	1    9800 5475
	1    0    0    -1  
$EndComp
$Comp
L 20190720_Project_OCP-OVP-UVP-rescue:TP_CIRCLE_1MM-TestPoint TP207
U 1 1 602DE938
P 9800 5925
F 0 "TP207" H 9650 6075 60  0000 L CNN
F 1 "TP_CIRCLE_1MM-TestPoint" H 9750 5525 50  0001 C CNN
F 2 "TestPoint:TP_CIRCLE_1MM" V 10400 5725 60  0001 C CNN
F 3 "" H 9800 6075 60  0001 C CNN
F 4 "CUSTOM" H 10350 6575 50  0001 C CNN "Manufacturer"
F 5 "1POS" H 9800 5675 50  0001 C CNN "P_Value"
F 6 "##" H 10350 6375 60  0001 C CNN "P_Rating_U"
F 7 "1MM" H 10350 6475 60  0001 C CNN "P_Tolerance"
F 8 "SMD" H 10350 6675 60  0001 C CNN "Package"
	1    9800 5925
	1    0    0    -1  
$EndComp
$Comp
L Resistors_0603:RT0603BRE07673KL R204
U 1 1 60E2800D
P 9425 3975
F 0 "R204" V 9425 3875 50  0000 L CNN
F 1 "RT0603BRE07673KL" V 9525 3975 50  0001 C CNN
F 2 "Passives:R_0603_Handsolder" V 9355 3975 50  0001 C CNN
F 3 "" V 9505 3975 50  0000 C CNN
F 4 "Yageo" V 9605 4075 60  0001 C CNN "Manufacturer"
F 5 "673k" H 9475 4025 50  0000 L CNN "P_Value"
F 6 "1/10W" V 9725 4275 60  0001 C CNN "P_Rating_U"
F 7 "0.1%" H 9500 3900 25  0000 L CNN "P_Tolerance"
F 8 "0603" H 9500 3950 25  0000 L CNN "Package"
F 9 "YAG4765CT-ND" H 9425 3975 50  0001 C CNN "P_Digikey"
	1    9425 3975
	1    0    0    -1  
$EndComp
$Comp
L Resistors_0603:ERJ-PB3B4222V R205
U 1 1 60E2905D
P 9425 4425
F 0 "R205" V 9425 4325 50  0000 L CNN
F 1 "ERJ-PB3B4222V" V 9525 4425 50  0001 C CNN
F 2 "Passives:R_0603_Handsolder" V 9355 4425 50  0001 C CNN
F 3 "" V 9505 4425 50  0000 C CNN
F 4 "Panasonic Electronic Components" V 9605 4525 60  0001 C CNN "Manufacturer"
F 5 "42.2k" H 9475 4475 50  0000 L CNN "P_Value"
F 6 "1/5W" V 9725 4725 60  0001 C CNN "P_Rating_U"
F 7 "0.1%" H 9550 4350 25  0000 C CNN "P_Tolerance"
F 8 "0603" H 9500 4400 25  0000 L CNN "Package"
F 9 "P20156CT-ND" H 9425 4425 50  0001 C CNN "P_Digikey"
	1    9425 4425
	1    0    0    -1  
$EndComp
$EndSCHEMATC
