#ifndef __ADS1119_H__
#define __ADS1119_H__

/////////////////////////////////////////////////////////////////////////////////////
// Defined ADC Configuration parameters
/////////////////////////////////////////////////////////////////////////////////////
#define ADDR0 0x40  // I2C address of first ADC
#define ADDR1 0x41  // I2C address of second ADC

#define RESET 0x06 // Reset command
#define START 0x08
#define POWERDOWN 0x02
#define WRITENOW 0x40
#define RDATA 0x10
#define RREG 0x20
#define DRDY 0x24

#define AIN0 0x60
#define AIN1 0x80
#define AIN2 0xA0
#define AIN3 0xC0
/////////////////////////////////////////////////////////////////////////////////////

int address[2] = {ADDR0,ADDR1};
int READY[2] = {0,0};

uint16_t ReadValue[8];

byte tempValue[2];
byte CH[8] = {AIN0, AIN1, AIN2, AIN3, AIN0, AIN1, AIN2, AIN3};

void ReadADC( int x, int y)
{
    Wire.beginTransmission(address[y]);
    Wire.write(WRITENOW);
    Wire.write(CH[x]);
    Wire.endTransmission();

    Wire.beginTransmission(address[y]);
    Wire.write(START);
    Wire.endTransmission();
    delay(60);

    Wire.beginTransmission(address[y]);
    Wire.write(DRDY);
    Wire.endTransmission();

    Wire.requestFrom(address[y],1);
    READY[y] = Wire.read();
    //Serial.println(READY[y], HEX);

    if (READY[y] == 0xF0)
    {
        Wire.beginTransmission(address[y]);
        Wire.write(RDATA);
        Wire.endTransmission();

        Wire.requestFrom(address[y], 2);
        while (Wire.available())
        {
            tempValue[0] = Wire.read();
            tempValue[1] = Wire.read();
        }

        Wire.beginTransmission(address[y]);
        Wire.write(POWERDOWN);
        Wire.endTransmission();

        ReadValue[x] = tempValue[0] << 8 | tempValue[1]; 

        Wire.flush();
    }

}

#endif
