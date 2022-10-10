#ifndef __ADS1119_H__
#define __ADS1119_H__

/////////////////////////////////////////////////////////////////////////////////////
// Defined ADC Configuration parameters
/////////////////////////////////////////////////////////////////////////////////////
#define ADDR0 0x40  // I2C address of first ADC

#define RESET 0x06 // Reset command
#define START 0x08
#define POWERDOWN 0x02
#define WRITENOW 0x40
#define RDATA 0x10
#define RREG 0x20
#define DRDY 0x24

#define AIN0 0x60   // Current Sense
#define AIN1 0x80   // Voltage sense
#define AIN2 0xA0   // Voltage sense of rail voltage for zero point on current sensor
//#define AIN0 0x00   // Measures differential voltage for better accuracy
//#define AIN1 0x20   // Measures differential voltage from current sensor
/////////////////////////////////////////////////////////////////////////////////////

int address[1] = {ADDR0};
int READY = 0;

uint16_t ReadValue[3];

byte tempValue[3];
byte CH[3] = {AIN0, AIN1, AIN2};

void ReadADC( int x)
{
    Wire.beginTransmission(ADDR0);
    Wire.write(WRITENOW);
    Wire.write(CH[x]);
    Wire.endTransmission();

    Wire.beginTransmission(ADDR0);
    Wire.write(START);
    Wire.endTransmission();
    delay(60);

    Wire.beginTransmission(ADDR0);
    Wire.write(DRDY);
    Wire.endTransmission();

    Wire.requestFrom(ADDR0,1);
    READY = Wire.read();
    //Serial.println(READY[y], HEX);

    if (READY == 0xF0)
    {
        Wire.beginTransmission(ADDR0);
        Wire.write(RDATA);
        Wire.endTransmission();

        Wire.requestFrom(ADDR0, 2);
        while (Wire.available())
        {
            tempValue[0] = Wire.read();
            tempValue[1] = Wire.read();
        }

        Wire.beginTransmission(ADDR0);
        Wire.write(POWERDOWN);
        Wire.endTransmission();

        ReadValue[x] = tempValue[0] << 8 | tempValue[1]; 
    }

}

#endif
