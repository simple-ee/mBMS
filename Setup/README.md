# SETUP for modular BMS by simple-ee.com
Here we will choose the bootloader for this board, upload the arduino sketch,
and run through the different serial and I2C commands for both the Protection
board as well as the BMS board.

We will also run through the calibration of the adc inputs to get an accurate
voltage measurement and current measurement.

We will also run through the two different ways of using this system.
1. Using the Protection board on its own
2. Connecting the Protection board to the BMS board for cell level protection


## Bootloader
Here I decided to use the minicore bootloader for the atmega328PB as it allowed
me to configure the arduino with various options, it seems very efficient in 
memory space and also supports the PB variant of atmega328

[minicore](https://github.com/MCUdude/MiniCore)

## Arduino sketch
Here is the source code link for both:

1. The Protection board
    1. [theProtectionBoard](https://github.com/simple-ee/mBMS/tree/main/Source%20Code/theProtectionBoard/)
2. The BMS Board
    1. [theBmsBoard](https://github.com/simple-ee/mBMS/tree/main/Source%20Code/theBMSBoard/20210703_theBMSBoard_A6)

Note: For board source code files, I created a second file called ADS1119.h which
I created to make using the ADC easier in the arduino code.  This file must be in the
same folder as the arduino ino.

### the Protection Board configuration

To perform setup you will need the following items:
1. Multimeter
2. UART FTDI adaptor, ex. [FTDI](https://www.amazon.com/HiLetgo-FT232RL-Converter-Adapter-Breakout/dp/B00IJXZQ7C/ref=sr_1_3?dchild=1&keywords=ftdi&qid=1625502998&sr=8-3)
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
1. In serial monitor using 

### Wiring and Connection


