# WARNING!
Just a reminder that this is a DIY product/solution so don’t use this for safety 
critical systems or in any situation where there could be a risk to life. 
There is no warranty, it may not work as expected or at all.

# modular BMS by simple-ee.com
This is what I am calling the modular BMS for an 8S LiFePO4 pack.  I've designed
this as three main parts.  Currently this design is functional and running my
system but I am in the progress of overhauling the design by upgrading from an 
8-bit ATmega328PB to a 32-bit SAMD21G18 using the arduino zero bootloader.

Right now I'm essentially maxed out resources and memory on the atmega328PB and
cannot add anymore features which is why I'm planning on upgrading the design.

Even though this design is now my old design its still very functional and very
stable as it has been running my 4kWh system for about 6 months and protecting 
the cells perfectly.  

The reason for making it a modular design is for easy upgradability and also,
considering the current chip shortage, is to replace sections of the board in
case there are no parts available.  This will prevent the need to redo and 
re-layout of the entire design.

I'm posting this design because I've learned a lot from other projects and feel
this will help a lot of people and want to give back.  Also smarter people than
me could take this design and help optomize the code and design and make this a
community BMS.

## the Table of Contents
1. [the Setup](#thesetup)
    1. [Software/Bootloader](#software)
    2. [Wiring and Connection](#connect)
2. [Pinout and Block Diagram](#pinout)
3. [Board Information](#information)
    1. [the Protection Board](#theProtectionBoard)
    2. [the BMS Board](#theBMSBoard)
    3. [the Passive Board](#thePassiveBoard)
    4. [the Display](#display)

## the SETUP <a name="thesetup"></a>

### Software/Bootloader <a name="software"></a>
[Software Setup](https://github.com/simple-ee/mBMS/tree/main/Setup)

### Wiring and Connection <a name="connect"></a>
#### Single 8S Pack Wiring Diagram
Here we have the wiring diagram for connecting the mBMS to an 8S pack and is considered a single pack system:

<img src="/images/20211015_mBMS_WiringDiagram_SingleBattery.png" width="60%">

#### Parallel multiple 8S Wiring Diagram
Here we have the wiring diagram for connecting multiple 8S packs in parallel.  Here each 8S pack is protected by its own mBMS and then they are paralleled together using 
ideal diodes to make sure that the other packs in parallel do not charge or discharge a pack that has gone into protection.  I designed the system this way to allow
for scalability of system storage.  By protecting each pack separately then you can, theoretically, add tens of hundreds of 8S packs in parallel when you need more storage
without having to reconfigure your system to add more storage or turn off the system to add more storage.

<img src="/images/20230113_mBMS_WiringDiagram_MultiBattery.png" width="60%"> 



## Pinout and Block Diagram <a name="pinout"></a>

### the Protection Board
<img src="images/20210704_theProtectionBoard_Pinout.png" width="30%">

## Board information <a name="information"></a>

### the Protection board <a name="theProtectionBoard"></a>

[kicad Files and gerber files](https://github.com/simple-ee/mBMS/tree/main/Schematic/The%20Protection%20Board)

#### Rendered PCB
<img src="images/20190720_Project_OCP-OVP-UVP.png" width="30%">

#### Actual PCB
<img src="/images/OCP_Board.jpg" width="40%">

- This board will handle discharge and charge currents between the battery
and the external world.  
- It has the following specs:

    Item | Description
    -----|------------
    1 | 4-Channel 16-BIT ADC with an effective resolution of 16-Bit at 20sps
    2 | 100A hall effect current sensor
    3 | Up to 3 Discharge N-Channel MOSFETS with 0.7mOhm DCR and 425A current capability. ( Effective current handling per mosfet without heatsink is 30A)
    4 | Up to 2 charge N-Channle MOSFETS with 0.7mOhm DCR and 425A current capability. (Effective current handling per mosfet without heatsink is 30A)
    5 | Optoisolator to drive the charge mosfets as it is floating relative to the battery ground.
    6 | High efficiency buck converter to power the MCU and supporting circuits.
    7 | Low power LDO to power the secondary side of the optoisolator to drive the charge MOSFET
    8 | Two I2C ports, one to act as an internal COM for adc and display, andsecond one to act as external COM to relay information to BMS board
    9 | 125A fuse that will act as the short circuit protection with a breaking capacity of 1kA.

### the BMS Board <a name="theBMSBoard"></a>

[kicad Files and gerber files](https://github.com/simple-ee/mBMS/tree/main/Schematic/The%20BMS%20Board)

#### Rendered PCB
<img src="images/20200103_8SBMS_A2_00003.png" width="30%">

#### Actual PCB
<img src="images/BMS.jpg" width="30%">

- This board is handling the cell level monitoring function as well as sending
controls to the passive balance resistors for balancing the cells.  It 
incorporates cell level OVP and UVP which is configurable and also receives the
current values from the Protection board via I2C and then displays all values
on a TFT display either ST7735 or ST7789.  If for any reason a fault is triggered
or one of the configured protection values is triggered you can send a reset
fault command either via an external trigger button or serial command over uart.
- It has the following specs:

Item | Description
-----|------------
1 | x2 4-Channel 16-BIT ADC with an effective resolution of 16-BIT at 20sps
2 | External 16MHz Crystal oscillator
3 | External SPI port to connect TFT display
4 | Can be powered via the battery pack or external power source
5 | External action button. Default state is for reset fault condition

### the Passive Balance Board <a name="thePassiveBoard"></a>

[kicad Files and gerber files](https://github.com/simple-ee/mBMS/tree/main/Schematic/The%20Passive%20Balance%20Board)

#### Rendered PCB
<img src="images/20190708_PassiveBoard.png" width="30%">


#### Actual PCB
<img src="images/Balance_Board.jpg" width="30%">

The passive board essentially is controlled by the BMS board to allow the 
bleeder resistor to slow down the rate of charge for that particular cell when
the BMS board detects that the cell is too high of a delta from the rest.

Currently I have a 2W 10R resistor but I'm having thermal issues because its 
quite a lot of power to dissapate over the whole board so I'd recommend a 22R 2W
resistor which is still good for what you need but will not cause any potential
damage.

The board also have the option of adding thermal jumpers and if you do decide to 
do that then I'd recommend a 2oz copper for that PCB.  Thermal jumpers are electrically
isolated and allow you to connect directly to ground without shorting anything
which is pretty awesome in my opinion.

Heres the link for the thermal jumpers.  They are really awesome but with the chip
shortage its a decent lead time for them.

https://www.digikey.com/en/products/detail/vishay-dale-thin-film/THJP0612AST1/11313314



### the Display (optional) <a name="display"></a>
<img src="images/tftScreen.jpg" width="30%">

Currently the SoC is not an implemented function its just a placeholder.  But if
anyone is willing to help out with this SoC code section then that would be 
awesome as I'm still not sure the best way to implement this.

The screen is to be used with the BMS board.  the Protection does not have 
the ability to use a SPI TFT display but if you use it on its own, then you can
add an I2C oled display because the secondary I2C will not be used.

Here is a link to the tft display that I used.
https://www.adafruit.com/product/4383


