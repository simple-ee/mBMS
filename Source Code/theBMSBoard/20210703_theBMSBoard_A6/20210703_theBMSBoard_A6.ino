////////////////////////////////////////////////////////////////////////////////
// 
// Title: 8S Arduino BMS
// Date: 20210324
// Version: A5
// Description: This code will work with hardware version A2_00003
// -----------------------------------------------------------------------------
// Bootloader settings: Minicore
// https://github.com/MCUdude/MiniCore#supported-microcontrollers
// -----------------------------------------------------------------------------
// 1. Clock: External 16 MHz 
// 2. BOD: BOD 2.7V
// 3. Compiler LTO: LTO disabled
// 4. Varient: 328PB
// 5. Bootloader: Yes (UART0)
////////////////////////////////////////////////////////////////////////////////


////////////////////////////////////////////////////////////////////////////////
// Libraries used for TFT Screen
////////////////////////////////////////////////////////////////////////////////
#include <Adafruit_GFX.h>    // Core graphics library
#include <Adafruit_ST7789.h> // Hardware-specific library for ST7789
#include <SPI.h>

#include <Wire1.h>
#include <Wire.h>
#include <EEPROM.h>
#include <avr/wdt.h>
#include "ADS1119.h"

////////////////////////////////////////////////////////////////////////////////
// Defines for TFT screen
////////////////////////////////////////////////////////////////////////////////
#define TFT_CS      2
#define TFT_RST     -1
#define TFT_DC      3
Adafruit_ST7789 tft = Adafruit_ST7789(TFT_CS, TFT_DC, TFT_RST);

// Color definitions
const uint16_t  Display_Color_Black     = 0x0000;
const uint16_t  Display_Color_Blue      = 0x001F;
//const uint16_t  Display_Color_Red       = 0xF800;
const uint16_t  Display_Color_Green     = 0x07E0;
const uint16_t  Display_Color_Cyan      = 0x07FF;
//const uint16_t  Display_Color_Magenta   = 0xF81F;
//const uint16_t  Display_Color_Yellow    = 0xFFE0;
//const uint16_t  Display_Color_White     = 0xFFFF;

// The colors we actually want to use
//uint16_t    Display_Text_Color      = Display_Color_White;
uint16_t    Display_Backround_Color = Display_Color_Black;


////////////////////////////////////////////////////////////////////////////////
// Array used for setting digital pins output
////////////////////////////////////////////////////////////////////////////////
int DigitalPin[8] = {5,6,7,8,9,10,4,12};

////////////////////////////////////////////////////////////////////////////////
// Variables used for counters to ensure that other functions can run during the
// off time of other functions
////////////////////////////////////////////////////////////////////////////////
int currentTime = 0;
int previousTimeDisplay = 0;
int previousTimeLoop = 0;
int previousTimeTFTDisplay = 0;
int previousTimeReset = 0;

////////////////////////////////////////////////////////////////////////////////
// Variables used for fault conditions when triggered in order to know what 
// fault scenario was triggered
////////////////////////////////////////////////////////////////////////////////
int flag[6] = {0,0,0,0,0};  // {UVP cell, OVP cell, UVP pack, OVP pack, OCP}
int resetP = 0;
int countOVP = 0;
int countUVP = 0;
int faultCase = 0;
char *faultCondtion[] = {"No fault          ", "Cell UVP Triggered ", "Cell OVP Triggered ", "Pack OVP Triggered", "Pack UVP Triggered", "OCP Triggered"};
int fc = 0;


////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
float diff[8];
float cell[8] = {0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000};
float BAT[8] = {0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000};

////////////////////////////////////////////////////////////////////////////////
// Two point calibration method values
////////////////////////////////////////////////////////////////////////////////
int Code_low[8];
int Code_high[8];

float Gain_error[8];
unsigned int Offset[8];

////////////////////////////////////////////////////////////////////////////////
// Configurable variables via Serial monitor and stored in EEPROM
////////////////////////////////////////////////////////////////////////////////
int revision = 6;
int onTime = 1000;

float tol = 0.02;
float OVP = 3.75;
float UVP = 2.70;
float CurrentPack = 0.000;

////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
char balanceState[8];
char Current_Pack[6];


void setup()
{
    Serial.begin(115200);

    Wire1.begin(); // Server I2C address 
    Wire.begin(); //  Start I2C for ADC

    /* Store ADC calibration values in EEPROM memory */
    for (int t = 0; t < 8; t++)
    {        
        EEPROM.get((t*4),Offset[t]);
        Serial.println(Offset[t],3);
    }

    for (int t = 0; t < 8; t++)
    {        
        EEPROM.get((t*4)+100,Gain_error[t]);
        Serial.println(Gain_error[t]);
    }

    for (int t = 0; t < 5; t++)
    {
      EEPROM.get((t*2)+500,flag[t]);
      Serial.print("Flag ");
      Serial.print(t);
      Serial.print(": ");
      Serial.println(flag[t]);
    }

    /* Store tolerance value (delta between the lowest cell and the rest of 
    the cells.  Also store cell level over-voltage and under-voltage limits */
    EEPROM.get(200,tol);
    Serial.println(tol,3);

    EEPROM.get(204,UVP);
    Serial.println(UVP,3);

    EEPROM.get(208,OVP);
    Serial.println(OVP,3);

    EEPROM.get(212,onTime);

    /* Configure I/O ports */
    for (int x = 0; x < 8; x++)
    {
        pinMode(DigitalPin[x],OUTPUT);
    }

    pinMode(PIN_PB7,INPUT_PULLUP);
    pinMode(A1, INPUT_PULLUP);

    PORTD = PORTD & B00001111;
    PORTB = PORTB & B11101000;


    /* Setup for TFT screen and for template for measurement */
    tft.init(135, 240);

    tft.fillScreen(ST77XX_BLACK);
    tft.setRotation(0);
    
    tft.setCursor(0,0);
    tft.setTextSize(2);
    tft.print("B1: ");

    tft.setCursor(0,20);
    tft.setTextSize(2);
    tft.print("B2: ");

    tft.setCursor(0,40);
    tft.setTextSize(2);
    tft.print("B3: ");

    tft.setCursor(0,60);
    tft.setTextSize(2);
    tft.print("B4: ");

    tft.setCursor(0,80);
    tft.setTextSize(2);
    tft.print("B5: ");

    tft.setCursor(0,100);
    tft.setTextSize(2);
    tft.print("B6: ");

    tft.setCursor(0,120);
    tft.setTextSize(2);
    tft.print("B7: ");

    tft.setCursor(0,140);
    tft.setTextSize(2);
    tft.print("B8: ");

    tft.setCursor(0,160);
    tft.setTextColor(Display_Color_Cyan , ST77XX_BLACK);
    tft.setTextSize(1);
    tft.print("V_Pack: ");

    tft.setCursor(0,170);
    tft.setTextColor(Display_Color_Cyan , ST77XX_BLACK);
    tft.setTextSize(1);
    tft.print("Current: ");

    tft.setCursor(0,180);
    tft.setTextColor(Display_Color_Cyan , ST77XX_BLACK);
    tft.setTextSize(1);
    tft.print("Power: ");

    tft.setCursor(0,190);
    tft.setTextColor(Display_Color_Blue , ST77XX_BLACK);
    tft.setTextSize(1);
    tft.print("Fault: ");

    tft.setCursor(0,200);
    tft.setTextColor(Display_Color_Blue , ST77XX_BLACK);
    tft.setTextSize(1);
    tft.print("SoC: ");

    // Setup up watchdog timer to reset
    // after 8 seconds 
    wdt_enable(WDTO_8S);

}

void loop()
{
    
    currentTime = millis(); // Capture the current time for use later
      
    if ( currentTime - previousTimeLoop >= onTime)
    {
        /* Here we will read all adc values and calculate cell voltage levels
        and apply the two point calibration values for best accurary */
        Calculate();  

        /* Finds the lowest cell and balances the remaining cells with respect
        to the lowest cell and stops balancing cells when cells are within the
        tolerance delta value */
        LowestCellAlgorithm(); 

        /* Enables or disables the balance passive resistors on the balance 
        board based on the lowestCellAlgorithm which keeps track on which cells
        are above the tolerance delta variable */
        for ( int t = 0; t < 8; t++)
        {
            if ((diff[t] > tol) && (BAT[t] >= UVP))
            {
                digitalWrite(DigitalPin[t], HIGH);
                balanceState[t] = 'H';
            }
            else 
            {
                digitalWrite(DigitalPin[t], LOW);
                balanceState[t] = 'L';
            }

            
            /* Counter used to keep track if any cell hits the OVP or UVP limit
            */
            if (BAT[t] > OVP)
            {
                countOVP = countOVP + 1;
            }

            if (BAT[t] < UVP)
            {
                countUVP = countUVP + 1;
            }
        }

        /* sets the currentTime to the previous time variable to reset the 
        counter and start again */
        previousTimeLoop = currentTime;
    }

    
    /* Counter for displaying cell values and various other variables on the 
    tft display */
    if ( currentTime - previousTimeTFTDisplay >= 1000)
    {
        DisplayTFT();
        previousTimeTFTDisplay = currentTime;
    }

    /* Function for checking fault conditions of uvp and ovp and then sends a 
    command to the Protection Board to turn of FETS */
    FaultState();

    /*Displays values in serial monitor */
    SerialMonitor();

    /* Reset faults using external button trigger */
    ResetButton();

    /* Resets watchdog timer */
    wdt_reset();
}



////////////////////////////////////////////////////////////////////////////////
// Function for reading ADC values
////////////////////////////////////////////////////////////////////////////////
void Calculate()
{
    /* Zero out variables and set balance loads to zero before taking a new 
    voltage measurement. */
    for (int x = 0; x < 8; x++)
    {
        diff[x] = 0.000;
        cell[x] = 0.000;
        //BAT[x] = 0.000;
        digitalWrite(DigitalPin[x],LOW);
    }

    for (int i = 0; i < 8; i++)
    {
        if (i < 4)
        {
            ReadADC(i,0);
            cell[i] = (ReadValue[i] - Offset[i]) / (Gain_error[i]);      
        }

        if (i >= 4)
        {
            ReadADC(i,1);
            cell[i] = (ReadValue[i] - Offset[i]) / (Gain_error[i]);
        }  
    }

    for (int b = 0; b < 8; b++)
    {
        if (b == 0)
        {
            BAT[b] = cell[b];
        }

        if (b > 0)
        {
            BAT[b] = (cell[b] - cell[b-1]);
        }
    }
}


////////////////////////////////////////////////////////////////////////////////
// Function for displaying all values in serial monitor as well as requesting 
// the current value from the Protection Boards current sensor
////////////////////////////////////////////////////////////////////////////////
void SerialMonitor()
{
    if (currentTime - previousTimeDisplay >= 1000)
    {
        /* Wire1 used to grab current value from Protection board. This will 
        trigger a onReceive interrupt on the client board. */ 
        Wire1.beginTransmission(2);
        Wire1.write('C');
        Wire1.endTransmission();

        /* Wire1 used to grab current value from Protection board. This will 
        trigger a onRequest interrupt on the client board. */
        Wire1.requestFrom(2,5);
        while (Wire1.available())
        {
            Current_Pack[0] = Wire1.read();
            Current_Pack[1] = Wire1.read();
            Current_Pack[2] = Wire1.read();
            Current_Pack[3] = Wire1.read();
            Current_Pack[4] = Wire1.read();

            CurrentPack = atof(Current_Pack);
        }
    
        /* Serial prints voltage levels of the battery cells */
        for (int i = 0; i < 7; i++)
        {
          Serial.print(BAT[i],3);
          Serial.print(",");
        }
        Serial.print(BAT[7],3);
        Serial.print(",");
        Serial.print(CurrentPack,3);

        /* Serial prints the power from the pack */
        Serial.print(",");
        Serial.println(cell[7]*CurrentPack);
      


        /* Serial prints balance state of the battery cells
        for (int i = 0; i < 7; i++)
        {
            Serial.print(balanceState[i]);
            Serial.print(",");
        }
            Serial.println(balanceState[7]);
       */
        
        previousTimeDisplay = currentTime;
    }   
}

////////////////////////////////////////////////////////////////////////////////
// Function for displaying values to the SPI TFT Display
////////////////////////////////////////////////////////////////////////////////
void DisplayTFT()
{
    tft.setTextWrap(false);

    /* Battery cell #1 */
    tft.setCursor(35,0);
    //tft.fillRect(35,0,100,19,ST77XX_BLACK);
    tft.setTextSize(2);
    tft.print(BAT[0],3);
    tft.print(" V  ");

    /* Battery cell #2 */
    tft.setCursor(35,20);
    //tft.fillRect(35,20,100,19,ST77XX_BLACK);
    tft.setTextSize(2);
    tft.print(BAT[1],3);
    tft.print(" V  ");

    /* Battery cell #3 */
    tft.setCursor(35,40);
    //tft.fillRect(35,40,100,19,ST77XX_BLACK);
    tft.setTextSize(2);
    tft.print(BAT[2],3);
    tft.print(" V  ");

    /* Battery cell #4 */
    tft.setCursor(35,60);
    //tft.fillRect(35,60,100,19,ST77XX_BLACK);
    tft.setTextSize(2);
    tft.print(BAT[3],3);
    tft.print(" V  ");

    /* Battery cell #5 */
    tft.setCursor(35,80);
    //tft.fillRect(35,80,100,19,ST77XX_BLACK);
    tft.setTextSize(2);
    tft.print(BAT[4],3);
    tft.print(" V  ");

    /* Battery cell #6 */
    tft.setCursor(35,100);
    //tft.fillRect(35,100,100,19,ST77XX_BLACK);
    tft.setTextSize(2);
    tft.print(BAT[5],3);
    tft.print(" V  ");

    /* Battery cell #7 */
    tft.setCursor(35,120);
    //tft.fillRect(35,120,100,19,ST77XX_BLACK);
    tft.setTextSize(2);
    tft.print(BAT[6],3);
    tft.print(" V  ");

    /* Battery cell #8 */
    tft.setCursor(35,140);
    //tft.fillRect(35,140,100,19,ST77XX_BLACK);
    tft.setTextSize(2);
    tft.print(BAT[7],3);
    tft.print(" V  ");
    

    /* Voltage pack voltage */
    tft.setCursor(50,160);
    tft.setTextColor(Display_Color_Cyan , ST77XX_BLACK);
    tft.setTextSize(1);
    tft.print(cell[7],3);
    tft.print(" V    ");

    /* Pack current */
    tft.setCursor(50,170);
    tft.setTextColor(Display_Color_Cyan , ST77XX_BLACK);
    tft.setTextSize(1);
    tft.print(CurrentPack,3);
    tft.print(" A    ");

    /* Power from pack */
    tft.setCursor(40,180);
    tft.setTextColor(Display_Color_Cyan , ST77XX_BLACK);
    tft.setTextSize(1);
    tft.print(cell[7]*CurrentPack,3);
    tft.print(" W    ");

    /* Displays fault */
    tft.setCursor(40,190);
    tft.setTextColor(Display_Color_Blue , ST77XX_BLACK);
    tft.setTextSize(1);
    tft.print(faultCondtion[fc]);

    /* State of Charge (SoC) */
    tft.setCursor(30,200);
    tft.setTextColor(Display_Color_Green , ST77XX_BLACK);
    tft.setTextSize(1);
    tft.print("90%");

}


////////////////////////////////////////////////////////////////////////////
// The current function below is used to find the lowest cell value and then
// calculate the difference between the lowest cell and the remaining cells
////////////////////////////////////////////////////////////////////////////
void LowestCellAlgorithm()
{
    /* Checks to see if cell # 1 is the lowest cell */
    if ((BAT[0] <= BAT[1]) && (BAT[0] <= BAT[2]) && (BAT[0] <= BAT[3]) && 
        (BAT[0] <= BAT[4]) && (BAT[0] <= BAT[5]) && (BAT[0] <= BAT[6]) &&
        (BAT[0] <= BAT[7]))
    {
        diff[0] = 0;
        diff[1] = BAT[1] - BAT[0];
        diff[2] = BAT[2] - BAT[0];
        diff[3] = BAT[3] - BAT[0];
        diff[4] = BAT[4] - BAT[0];
        diff[5] = BAT[5] - BAT[0];
        diff[6] = BAT[6] - BAT[0];
        diff[7] = BAT[7] - BAT[0];
    } 

    /* Checks to see if cell # 2 is the lowest cell */
    else if ((BAT[1] <= BAT[0]) && (BAT[1] <= BAT[2]) && (BAT[1] <= BAT[3]) && 
        (BAT[1] <= BAT[4]) && (BAT[1] <= BAT[5]) && (BAT[1] <= BAT[6]) &&
        (BAT[1] <= BAT[7]))
    {
        diff[0] = BAT[0] - BAT[1];
        diff[1] = 0;
        diff[2] = BAT[2] - BAT[1];
        diff[3] = BAT[3] - BAT[1];
        diff[4] = BAT[4] - BAT[1];
        diff[5] = BAT[5] - BAT[1];
        diff[6] = BAT[6] - BAT[1];
        diff[7] = BAT[7] - BAT[1];
    } 

    /* Checks to see if cell # 3 is the lowest cell */
    else if ((BAT[2] <= BAT[0]) && (BAT[2] <= BAT[1]) && (BAT[2] <= BAT[3]) && 
        (BAT[2] <= BAT[4]) && (BAT[2] <= BAT[5]) && (BAT[2] <= BAT[6]) &&
        (BAT[2] <= BAT[7]))
    {
        diff[0] = BAT[0] - BAT[2];
        diff[1] = BAT[1] - BAT[2];
        diff[2] = 0;
        diff[3] = BAT[3] - BAT[2];
        diff[4] = BAT[4] - BAT[2];
        diff[5] = BAT[5] - BAT[2];
        diff[6] = BAT[6] - BAT[2];
        diff[7] = BAT[7] - BAT[2];
    }  

    /* Checks to see if cell # 4 is the lowest cell */
    else if ((BAT[3] <= BAT[0]) && (BAT[3] <= BAT[1]) && (BAT[3] <= BAT[2]) && 
        (BAT[3] <= BAT[4]) && (BAT[3] <= BAT[5]) && (BAT[3] <= BAT[6]) &&
        (BAT[3] <= BAT[7]))
    {
        diff[0] = BAT[0] - BAT[3];
        diff[1] = BAT[1] - BAT[3];
        diff[2] = BAT[2] - BAT[3];
        diff[3] = 0;
        diff[4] = BAT[4] - BAT[3];
        diff[5] = BAT[5] - BAT[3];
        diff[6] = BAT[6] - BAT[3];
        diff[7] = BAT[7] - BAT[3];
    } 

    /* Checks to see if cell # 5 is the lowest cell */
    else if ((BAT[4] <= BAT[0]) && (BAT[4] <= BAT[1]) && (BAT[4] <= BAT[2]) && 
        (BAT[4] <= BAT[3]) && (BAT[4] <= BAT[5]) && (BAT[4] <= BAT[6]) &&
        (BAT[4] <= BAT[7]))
    {
        diff[0] = BAT[0] - BAT[4];
        diff[1] = BAT[1] - BAT[4];
        diff[2] = BAT[2] - BAT[4];
        diff[3] = BAT[3] - BAT[4];
        diff[4] = 0;
        diff[5] = BAT[5] - BAT[4];
        diff[6] = BAT[6] - BAT[4];
        diff[7] = BAT[7] - BAT[4];
    } 

    /* Checks to see if cell # 6 is the lowest cell */
    else if ((BAT[5] <= BAT[0]) && (BAT[5] <= BAT[1]) && (BAT[5] <= BAT[2]) && 
        (BAT[5] <= BAT[3]) && (BAT[5] <= BAT[4]) && (BAT[5] <= BAT[6]) &&
        (BAT[5] <= BAT[7]))
    {
        diff[0] = BAT[0] - BAT[5];
        diff[1] = BAT[1] - BAT[5];
        diff[2] = BAT[2] - BAT[5];
        diff[3] = BAT[3] - BAT[5];
        diff[4] = BAT[4] - BAT[5];
        diff[5] = 0;
        diff[6] = BAT[6] - BAT[5];
        diff[7] = BAT[7] - BAT[5];
    } 

    /* Checks to see if cell # 7 is the lowest cell */
    else if ((BAT[6] <= BAT[0]) && (BAT[6] <= BAT[1]) && (BAT[6] <= BAT[2]) && 
        (BAT[6] <= BAT[3]) && (BAT[6] <= BAT[4]) && (BAT[6] <= BAT[5]) &&
        (BAT[6] <= BAT[7]))
    {
        diff[0] = BAT[0] - BAT[6];
        diff[1] = BAT[1] - BAT[6];
        diff[2] = BAT[2] - BAT[6];
        diff[3] = BAT[3] - BAT[6];
        diff[4] = BAT[4] - BAT[6];
        diff[5] = BAT[5] - BAT[6];
        diff[6] = 0;
        diff[7] = BAT[7] - BAT[6];
    } 

    /* Checks to see if cell # 8 is the lowest cell */
    else
    {
        diff[0] = BAT[0] - BAT[7];
        diff[1] = BAT[1] - BAT[7];
        diff[2] = BAT[2] - BAT[7];
        diff[3] = BAT[3] - BAT[7];
        diff[4] = BAT[4] - BAT[7];
        diff[5] = BAT[5] - BAT[7];
        diff[6] = BAT[6] - BAT[7];
        diff[7] = 0;
    }
}

////////////////////////////////////////////////////////////////////////////////
// Function for sending the Protection Board fault conditions and to turn off
// either the charging mosfet or the discharging mosfet
////////////////////////////////////////////////////////////////////////////////
void FaultState()
{
    /* Under voltage cell fault trigger.  This sends a command to the Protection
    board telling it to open mosfet switch because UVP fault was triggered.
    Flag 0 is used to indicate the UVP fault was triggered */
    if (countUVP >= 1 && resetP == 0)
    {
        Wire1.beginTransmission(2);
        Wire1.write('U');
        Wire1.endTransmission();
            
        flag[0] = 1;
        countUVP = 0;
        resetP = 1;
    }

    /* Over voltage cell fault trigger.  This sends a command to the Protection
    // board telling it to open mosfet switch because OVP fault was triggered.
    // Flag 1 is used to indicate the OVP fault was triggered. */
    if (countOVP >= 1 && resetP == 0)
    {
        Wire1.beginTransmission(2);
        Wire1.write('O');
        Wire1.endTransmission();

        flag[1] = 1;
        countOVP = 0;
        resetP = 1;
    }

    /* This will check to see which fault condition was triggered and then 
    display it on the tft display. */
    for (int f=0; f < 7; f++)
    {
        if (flag[f] == 1)
        {
            faultCase = f + 1;
        }
    }

    switch(faultCase)
    {
        case 0:
            fc = 0;
            break;

        case 1:
            fc = 1;
            break;

        case 2:
            fc = 2;
            break;

        case 3:
            fc = 3;
            break;

        case 4:
            fc = 4;
            break;

        case 5:
            fc = 5;
            break;
    }
}

////////////////////////////////////////////////////////////////////////////////
// Function for manually reseting the fault conditions with a button
////////////////////////////////////////////////////////////////////////////////
void ResetButton()
{
   if (digitalRead(A1) == 0 && (currentTime - previousTimeReset >= 250))
   {
      Wire1.beginTransmission(2);
      Wire1.write('R');
      Wire1.endTransmission();
      resetP = 0;
      countUVP = 0;
      countOVP = 0;

      for (int f=0; f < 7; f++)
      {
        flag[f] = 0;
      }
      
      faultCase = 0;
      Serial.println("Fault condition reset");

      previousTimeReset = currentTime;
   }
}

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
void serialEvent()
{
  while (Serial.available())
  {
    int mode = Serial.parseInt();

    if (mode == 10)
    {
        for (int t = 0; t < 8; t++)
        {        
            EEPROM.put((t*4),0);
            EEPROM.get((t*4),Offset[t]);
            Serial.println(Offset[t],3);
        }

        for (int t = 0; t < 8; t++)
        {        
            EEPROM.put((t*4)+100,0);
            EEPROM.put((t*4)+100,Gain_error[t]);
            Serial.println(Gain_error[t]);
        }

        Serial.print("Values are reset");
    }

    if (mode == 11)
    {
        // Available function
    }

    if (mode == 12)
    {
        float v_high[8];
        v_high[0] = Serial.parseFloat();
        v_high[1] = Serial.parseFloat();
        v_high[2] = Serial.parseFloat();
        v_high[3] = Serial.parseFloat();
        v_high[4] = Serial.parseFloat();
        v_high[5] = Serial.parseFloat();
        v_high[6] = Serial.parseFloat();
        v_high[7] = Serial.parseFloat();

        for (int r = 0; r < 8; r++)
        {
            if ( r < 4)
            {
                ReadADC(r,0);
                Code_low[r] = ReadValue[r];
                delay(100);
            }

            if (r >= 4)
            {
                ReadADC(r,1);
                Code_low[r] = ReadValue[r];
            }

            Serial.print("Code low");
            Serial.print(r+1);
            Serial.print(": ");
            Serial.println(Code_low[r]);
        }

        int temp3 = 0;

        Serial.println("Connect full scale reference and enter value 1");
        while(temp3 == 0)
        {
            temp3 = Serial.parseInt();
            wdt_reset();
        }

        float temp4[8];
        for (int v = 0; v < 8; v++)
        {
            if (v < 4)
            {
                ReadADC(v,0);
                Code_high[v] = ReadValue[v];
                delay(100);
            }

            if (v >= 4)
            {
                ReadADC(v,1);
                Code_high[v] = ReadValue[v];
                delay(100);
            }

            Serial.print("Code high ");
            Serial.print(v+1);
            Serial.print(": ");
            Serial.println(Code_high[v]);
        
            Gain_error[v] = (Code_high[v] - Code_low[v])/(v_high[v]-0.000);
            Offset[v] = Code_high[v] - Gain_error[v]*v_high[v];

            Serial.print("Offset ");
            Serial.print(v + 1);
            Serial.print(": ");
            Serial.println(Offset[v]);

            Serial.print("Gain Error ");
            Serial.print(v + 1);
            Serial.print(": ");
            Serial.println(Gain_error[v]);

            
        }

        for (int i = 0; i < 8; i++)
        {
          if (i < 4)
          {
              ReadADC(i,0);
              temp4[i] = (ReadValue[i] - Offset[i]) / (Gain_error[i]);
              Serial.print("Offset ");
              Serial.print(i + 1);
              Serial.print(": ");
              Serial.println(temp4[i]);
      
        }

        if (i >= 4)
        {
              ReadADC(i,1);
              temp4[i] = (ReadValue[i] - Offset[i]) / (Gain_error[i]);
              Serial.print("Offset ");
              Serial.print(i + 1);
              Serial.print(": ");
              Serial.println(temp4[i]);
        }  
    }

        EEPROM.put(0,Offset[0]);
        EEPROM.put(4,Offset[1]);
        EEPROM.put(8,Offset[2]);
        EEPROM.put(12,Offset[3]);
        EEPROM.put(16,Offset[4]);
        EEPROM.put(20,Offset[5]);
        EEPROM.put(24,Offset[6]);
        EEPROM.put(28,Offset[7]);
        
        EEPROM.put(100,Gain_error[0]);
        EEPROM.put(104,Gain_error[1]);
        EEPROM.put(108,Gain_error[2]);
        EEPROM.put(112,Gain_error[3]);
        EEPROM.put(116,Gain_error[4]);
        EEPROM.put(120,Gain_error[5]);
        EEPROM.put(124,Gain_error[6]);
        EEPROM.put(128,Gain_error[7]);
        
    }

    if (mode == 100)
    {
        float temp = Serial.parseFloat();
        EEPROM.put(200,temp);
        EEPROM.get(200,tol);
        Serial.print("Tolerance value: ");
        Serial.println(temp,3);
        delay(500);
    }

    if (mode == 101)
    {
        float temp = Serial.parseFloat();
        EEPROM.put(204,temp);
        EEPROM.get(204,UVP);
        Serial.print("New UVP Threshold: ");
        Serial.println(UVP,3);
        delay(500);
    }

    if (mode == 102)
    {
        float temp = Serial.parseFloat();
        EEPROM.put(208,temp);
        EEPROM.get(208,OVP);
        Serial.print("New OVP Threshold: ");
        Serial.println(OVP,3);
        delay(500);
    }
    if (mode == 103)
    {
        int temp = Serial.parseInt();
        EEPROM.put(212,temp);
        EEPROM.get(212,onTime);
        Serial.print("New on time for balance resistors: ");
        Serial.println(onTime);
        delay(500);
    }

    if (mode == 1000)
    {
        Wire1.beginTransmission(2);
        Wire1.write('R');
        Wire1.endTransmission();
        resetP = 0;
        countUVP = 0;
        countOVP = 0;

        for (int f=0; f < 7; f++)
        {
            flag[f] = 0;
        }
        faultCase = 0;
        Serial.println("Fault condition reset");
    }

    if (mode == 1001)
    {
        int temp1 = Serial.parseInt();
        int temp2 = Serial.parseInt();
        int temp3 = Serial.parseInt();
        EEPROM.put(temp1,temp2);
        EEPROM.get(temp1,Offset[temp3]);

        Serial.print(Offset[temp3]);
    }
  }
}

////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
