#include <Arduino.h>
#line 1 "e:\\Work projects\\Paisa-Soda\\Firmware\\Firmware.ino"
// =============================================================================
// Pinout declaration
// =============================================================================
// Analog
/* These are the pins, used dirrectly to save memory
int delayPot1 = 0;
int delayPot2 = 1;
int delayPot3 = 2;

int timeSwitch1 = 3;
int timeSwitch2 = 4;
int timeSwithc3 = 5;
*/

//Digital
unsigned short input = 1;
unsigned short buttonPin = 12;

unsigned short outputs [4] ={4, 7, 8, 2}; // one two three and all
const unsigned short leds[4] = {3, 5, 6, 13}; // one two three and buttonLED

// =============================================================================
// Global variables
// =============================================================================
bool lastButtonState = 1;
bool buttonState = 0;

unsigned short maxLedBrightness;
unsigned short fadeTime = 15;

unsigned short ledBrightness[4] = {0, 0, 0, 0};
bool outputState[4] = {0, 0, 0, 0}; 
int delayTime[3] = {1000, 1000, 1500};
bool canTrigger[3] = {0, 0, 0};
unsigned short timeScalar[3] = {1, 1, 1};


unsigned int triggerTime[4];
const unsigned short gateLength = 50;

// =============================================================================
// Trigger queue vectors
// =============================================================================
unsigned short bufferSize = 100; //total number of elements in the buffer; unused ATM
unsigned long triggerQueue[100][3]; // the delay times
unsigned short bufferLength[3] = {0, 0, 0};  //number of elements filled atm
unsigned short readIndex[3] = {0, 0, 0};
unsigned short writeIndex[3] = {0, 0, 0};

#line 50 "e:\\Work projects\\Paisa-Soda\\Firmware\\Firmware.ino"
void setup();
#line 62 "e:\\Work projects\\Paisa-Soda\\Firmware\\Firmware.ino"
void loop();
#line 130 "e:\\Work projects\\Paisa-Soda\\Firmware\\Firmware.ino"
void delayTrigger(unsigned short stage);
#line 145 "e:\\Work projects\\Paisa-Soda\\Firmware\\Firmware.ino"
void trigger(unsigned short stage);
#line 50 "e:\\Work projects\\Paisa-Soda\\Firmware\\Firmware.ino"
void setup()
{
    Serial.begin(9600);
    pinMode(buttonPin, INPUT_PULLUP); 
    pinMode(leds[0], OUTPUT);
    pinMode(leds[1], OUTPUT);
    pinMode(leds[2], OUTPUT);
    pinMode(leds[3], OUTPUT);

    maxLedBrightness = (255 / fadeTime) * fadeTime;
}

void loop() 
{
    //reading inputs
    buttonState = digitalRead(buttonPin);
    delayTime[0] = analogRead(0) * timeScalar[0];
    delayTime[1] = analogRead(1) * timeScalar[1];
    delayTime[2] = analogRead(2) * timeScalar[2];

    
    
    //this is where the output is triggered aka OUTPUT
    for(int stage = 0; stage < 3; stage++)
    {
        if (triggerQueue[readIndex[stage]][stage] + delayTime[stage]  < millis() && canTrigger[stage])
        {
            trigger(stage);
        } 
    }

    //this is wher the button is pressed aka INPUT
    if(buttonState != lastButtonState)
    {
        if(buttonState == LOW)
        {
            delayTrigger(0);
            ledBrightness[3] = maxLedBrightness;
        }
    }
    lastButtonState = buttonState;

    //blinking skip function
    for ( int i = 0; i < 3; i++)
    {
        if (delayTime[i] < 10 && ledBrightness[i] == 0)
        {
            ledBrightness[i] = maxLedBrightness;
        } 
    }
    

    // FADE
    for(int i = 0; i < 4; i++)
    {
        if(ledBrightness[i] > 0 )
            ledBrightness[i] -= fadeTime;

        analogWrite(leds[i], ledBrightness[i]);
    }
    // OUTPUT TRIGGERS
    for(int i = 0; i < 3; i++)
    {
        if(ledBrightness[i] > 230 && analogRead(i) > 10)
        {
            analogWrite(outputs[i], 255);
            analogWrite(outputs[3], 255);
        }
        else
        {
           analogWrite(outputs[i], 0);
           analogWrite(outputs[3], 0);
        }
    }


    delay(10);
}


void delayTrigger(unsigned short stage)
{
    if (bufferLength[stage] == bufferSize)
    {
        Serial.println("Buffer is full!");
    }
    
    triggerQueue[writeIndex[stage]][stage] = millis();
    canTrigger[stage] = 1;      
    writeIndex[stage]++;
    bufferLength[stage]++;
    if(writeIndex[stage] == bufferSize)
        writeIndex[stage] = 0;
}

void trigger(unsigned short stage)
{
    //output trigger
    if(analogRead(stage) > 10)
    {
        ledBrightness[stage] = maxLedBrightness;
        analogWrite(leds[stage], ledBrightness[stage]);
        outputState[stage] = 1;
        outputState[3] = 1;
    }
    //advance buffer
    bufferLength[stage]--;
    readIndex[stage]++;
    if (readIndex[stage] == bufferSize) 
        readIndex[stage] = 0;
        
    if(bufferLength[stage] == 0)
        canTrigger[stage] = 0;
  
    if(stage == 0)
        delayTrigger(1);
  
    if(stage == 1)
        delayTrigger(2);
}

  

