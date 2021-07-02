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
    1. Test

Note: For board source code files, I created a second file called ADS1119.h which
I created to make using the ADC easier in the arduino code.  This file must be in the
same folder as the arduino ino.

### Wiring and Connection

## Pinout and Block Diagram

## Board information

### The Protection board

