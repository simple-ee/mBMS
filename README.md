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

I'm posting this design because I've learned a lot from other projects and feel
this will help a lot of people and want to give back.  Also smarter people than
me could take this desig and help optomize the code and design as I'm not perfect
and probably over designed this.

## The Protection board
<img src="/images/OCP_Board.jpg" width="50%">

1. This board will handle discharge and charge currents between the battery
and the external world.  
2. It has the following specs:
    1. 4-Channel 16-BIT ADC with an effective resolution of 16-Bit
    2. 100A hall effect current sensor
    3. Up to 3 Discharge N-Channel MOSFETS with 0.7mOhm DCR and 425A 
    current capability. ( Effective current handling per mosfet without
    heatsink is 30A)
    4. Up to 2 charge N-Channle MOSFETS with 0.7mOhm DCR and 425A current
    capability. (Effective current handling per mosfet without heatsink is 
    30A)
    5. Optoisolator to drive the charge mosfets as it is floating relative
    to the battery ground.
    6. High efficiency buck converter to power the MCU and supporting 
    circuits.
    7. Low power LDO to power the secondary side of the optoisolator to 
    drive the charge MOSFET
    8. Two I2C ports, one to act as an internal COM for adc and display, and
    second one to act as external COM to relay information to BMS board
    9. 125A fuse that will act as the short circuit protection with a high I^2t\
    to prevent
## The BMS Board