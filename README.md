# modular BMS by simple-ee.com
This is what I am calling the modular BMS for an 8S LiFePO4 pack.  I've designed
this as three main parts
1. The Protection board
    - This board will handle discharge and charge currents between the battery
    - and the external world.  It had the following specs:
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
2. 