# SETUP for modular BMS by simple-ee.com
Here we will choose the bootloader for this board, upload the arduino sketch,
and run through the different serial and I2C commands for both the Protection
board as well as the BMS board.

We will also run through the calibration of the adc inputs to get an accurate
voltage measurement and current measurement.

We will also run through the two different ways of using this system.
1. Using the Protection board on its own
2. Connecting the Protection board to the BMS board for cell level protection


## the Table of Contents
1. [the bootloader](#bootloader)
2. [Arduino Sketch](#sketch)
3. [the Protection Board Configuration](#protection)
4. [the BMS Board Configuration](#bms)

## Bootloader<a name="bootloader"></a>
Here I decided to use the minicore bootloader for the atmega328PB as it allowed
me to configure the arduino with various options, it seems very efficient in 
memory space and also supports the PB variant of atmega328

[minicore](https://github.com/MCUdude/MiniCore)

Note: Since I did not add the SPI pins on the board (MOSI,MISO) you will have
to install the bootloader before soldering it to the board.  You can follow the
guide below to add the bootloader using an arduino uno board:

[Install ardunio bootloader](https://www.arduino.cc/en/Tutorial/BuiltInExamples/ArduinoToBreadboard)

https://www.arduino.cc/en/Tutorial/BuiltInExamples/ArduinoToBreadboard

## Arduino sketch<a name="sketch"></a>
Here is the source code link for both:

1. The Protection board
    1. [theProtectionBoard](https://github.com/simple-ee/mBMS/tree/main/Source%20Code/theProtectionBoard/)
2. The BMS Board
    1. [theBmsBoard](https://github.com/simple-ee/mBMS/tree/main/Source%20Code/theBMSBoard/20210703_theBMSBoard_A6)

Note: For board source code files, I created a second file called ADS1119.h which
I created to make using the ADC easier in the arduino code.  This file must be in the
same folder as the arduino ino.

## the Protection Board configuration<a name="protection"></a>

To perform setup you will need the following items:
1. Multimeter
2. UART FTDI adaptor, ex. [FTDI](https://www.amazon.com/HiLetgo-FT232RL-Converter-Adapter-Breakout/dp/B00IJXZQ7C/ref=sr_1_3?dchild=1&keywords=ftdi&qid=1625502998&sr=8-3)
    1. Use the 5V configuration
3. a Pair of metal tweezers
4. 20V - 30V DC source, it could be connected to the battery 


After you upload the sketch to the Protection board, there are still a couple of
steps that need to be performed to get the unit up and operational.

In the arduino sketch, towards the end of the arduino code, you will find the
following serial monitor commands:

```c++
////////////////////////////////////////////////////////////////////////////////
// This function is called everytime a uart command is received.  We use it 
// combined with the arduino serial monitor to set variables and perform
// certain commands.
// example of command to send via serial monitor:
// ex. 1004, OCP, OVP, UVP
//     1004,30.00,29.00,21.00
//------------------------------------------------------------------------------
// List of commands
//------------------------------------------------------------------------------
// 1. 1001,2.500  | This is for performing a two point calibration for the 
//                | current measurement and then storing those values in 
//                | the eeprom.
//------------------------------------------------------------------------------
// 2. 1002,29.00  | This is for performing a two point calibration for the 
//                | voltage of the battery and then storing is in eeprom
//------------------------------------------------------------------------------
// 3. 1003,5.00   | This is for performing a two point calibration for the 
//                | system rail voltage and then storing is in eeprom
//------------------------------------------------------------------------------
// 4. 1004,30.00, | This is to enter new values for over current limit,
//    29.00,21.00 | over voltage limit, and under voltage limit
//------------------------------------------------------------------------------
// 5. 1005        | Future command place holder
//------------------------------------------------------------------------------
// 6. 1006        | Turns off the mosfets to prevent current flow
//------------------------------------------------------------------------------
// 7. 1007        | This resets any and all fault conditions and returns system
//                | to normal conditions
//------------------------------------------------------------------------------
// 8. 1008,0.01333| This sets the sensativity value for the current sensor
//------------------------------------------------------------------------------
// 9. 1009        | Outputs limits and revision number
//------------------------------------------------------------------------------
// 10. 1010       | Sets the interval value for display output
//------------------------------------------------------------------------------
// 11. 1011       | Sets the offsetcurrentzero value to help with getting a 
//                | a better current measurement
////////////////////////////////////////////////////////////////////////////////
```
Perform the following steps in order:
1. In serial monitor using the FTDI adaptor, set the BAUD rate to 115200
2. Initially you will not see anything on the monitor because we need to set
the interval of the serial print loop.
    1. Type in:
    ```c++
    1010, 1000
    ```
    This will set the interval to 1 second interval.  Since we are storing
    this value in eeprom, with a new MCU IC the eeprom has this value as 0 so
    the loop will not operate without entering a value in eeprom and this
    command stores the 1000 millisecond value in eeprom.

    <img src="https://github.com/simple-ee/mBMS/blob/main/images/serial_1010.PNG" width="80%">

2. Next we will set the sensativity value of the hall effect sensor
    1. Type in:
    ```c++
    1008, 0.01333
    ```
    This sets the sensativity value to 13.33mV

3. Now we will perform 1 of 3 two point calibration measurements.  Here you will
need to now power the board from a 20V-30V dc source ( your battery pack will
work just fine) instead of the ftdi board. You will also need the metal tweezers.
    1. First take a measurement of the output of the current sensor (pin 3) with
    you multimeter and write down that value.
    2. Next type in the following into the serial monitor but do not hit enter
    just yet:
    ```c++
    1001, 2.517
    ```
    The 2.500 is the voltage measurement you just took with your multimeter

    <img src="https://github.com/simple-ee/mBMS/blob/main/images/serial_1001.PNG" width="80%">

    3. Now with the metal tweezers, short the points across resistor R203 with 
    your tweezers and then hit enter on the serial monitor.
    4. Hold the tweezers until the serial monitor prompts you with the following:
    ```c++
    Connect Full scale reference and enter value 1
    ```
    <img src="https://github.com/simple-ee/mBMS/blob/main/images/serial_1001_after_1.PNG" width="80%">

    5. Then let go of the tweezers and enter 1 in the serial monitor.
    6. Now the current sensor is calibrated.

4. 2 of 3 two point calibration measurements.  Here you will
need to now power the board from a 20V-30V dc source ( your battery pack will
work just fine) instead of the ftdi board. You will also need the metal tweezers.
    1. First take a measurement at the VBAT+ terminal with your multimeter and
    write down that value.
    2. Next type in the following into the serial monitor but do not hit enter
    just yet:
    ```c++
    1002, 24.00
    ```

    <img src="https://github.com/simple-ee/mBMS/blob/main/images/serial_1002.PNG" width="80%">

    The 24.00 is the voltage measurement you jsut took with your multimeter

    3. Hold the tweezers across resistor R205 and then hit enter on the serial
    monitor.
    4. Hold the tweezers until the serial monitor prompts you with the following:
    ```c++
    Connect full scale reference and enter value 1
    ```

    <img src="https://github.com/simple-ee/mBMS/blob/main/images/serial_1002_after_1.PNG" width="80%">

    5. Then let go of the tweezers and enter 1 in the serial monitor.
    6. Now the battery voltage adc is calibrated.
5. Last we will perform 3 of 3 two point calibration.  This last calibration is
for the system rail at the output of the buck converter.  This is needed to get 
a good 0A reference for the current sensor since its bi-directional it takes
Vsystem/2 to get the 0A reference.
    1. First take a measurement at the output of the buck converter with the 
    multimeter and write down that value.
    2. Next type in the following into the serial monitor but do not hit enter 
    just yet:
    ```c++
    1003, 5.002
    ```
    The 5.002 represents the measurement system voltage

    3. Hold the tweezers across resistor R213 and the nhit enter on the serial
    monitor.
    4. Hold the tweezers until the serial monitor prompts you with the following:
    ```c++
    Connect full scale reference and enter value 1
    ```

    5. Then let go of the tweezers and enter 1 in the serial monitor.
    6. Now the system voltage adc is calibrated

The last step is to set the limit for the protection threshold values.
6. Enter the following into the serial monitor;
```c++
1004,30.00, 29.00, 21.00
```
The first value is the over-current threshold limit so the mosfets will stop
charging or discharging if the current hits this limit. 

The next value is the over-voltage threshold limit so the charging mosfet will
stop charging if the voltage threshold is hit.

The last value is the under-voltage threshold limit so the discharging mosfet will
stop discharging if the voltage of the pack goes below this value.

7. Last step is to set the offset zero current commands.  This automatically
eliminates any offset that will show a positive or negative current value
when no load is connected.
    1. Enter the following in serial monitor:
    ```c++ 
    1011
    ```  

    <img src="https://github.com/simple-ee/mBMS/blob/main/images/serial_1011.PNG" width="80%">

Now you are ready to use the Protection Board.

## the BMS Board configuration<a name="bms"></a>

To perform setup you will need the following items:
1. Multimeter
2. UART FTDI adaptor, ex. [FTDI](https://www.amazon.com/HiLetgo-FT232RL-Converter-Adapter-Breakout/dp/B00IJXZQ7C/ref=sr_1_3?dchild=1&keywords=ftdi&qid=1625502998&sr=8-3)
    1. Use the 5V configuration
4. Here there are two options you can go about for adc calibration:
    1. 8S battery or
    2. A stackable 8 series voltage reference. Here is a link to the REF50 which
    is what I use to calibrate my BMS:
        1. Link: [Stackable Voltage Reference](https://www.ti.com/lit/an/sbaa203/sbaa203.pdf?ts=1625974619837&ref_url=https%253A%252F%252Fwww.google.com%252F)

After you upload the sketch to the BMS boar, there are still a couple of steps that
you need to perform before the system is up and running.

In the arduino sketch, towards the end of the arduni code, you will find the 
following serial monitor commands:

```c++
////////////////////////////////////////////////////////////////////////////////
// This function is called everytime a uart command is received.  We use it 
// combined with the arduino serial monitor to set variables and perform
// certain commands.
// example of command to send via serial monitor:
// ex. 101, UVP
//     101, 2.70
//------------------------------------------------------------------------------
// List of commands
//------------------------------------------------------------------------------
// 1. 10          | Resets two point calibration values
//------------------------------------------------------------------------------
// 2. 11          | Blank Function 
//------------------------------------------------------------------------------
// 3. 12,3.00,6.00, | Two point calibration for the adc values.  First set 
//    9.00,12.00,   | the jumper to external power for the bms board, then
//    15.00,18.00,  | apply voltages to each adc input and measure each 
//    21.00,24.00   | point with a multimeter and write down those values.
//                  | Enter those values in order from lowest to highest
//                  | like so: 12,cell1,cell2,cell3,cell4,cell5,cell6,cell7,
//                  | cell8
//------------------------------------------------------------------------------
// 4. 100,0.015   | Sets new delta between the lowest cell and the rest of the 
//                | cells.  The example on the left sets the tolerance to 15mV
//------------------------------------------------------------------------------
// 5. 101, 2.70   | Sets new under voltage threshold value
//------------------------------------------------------------------------------
// 6. 102, 3.75   | Sets new over voltage threshold value
//------------------------------------------------------------------------------
// 7. 103, 1000   | Sets new value for main loop interval
//------------------------------------------------------------------------------
// 8. 1000        | Resets fault condition and returns system to normal
//------------------------------------------------------------------------------
// 9. 1001        | Test function (not used)
////////////////////////////////////////////////////////////////////////////////



```

### Wiring and Connection


