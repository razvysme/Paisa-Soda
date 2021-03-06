// Copyright 2021 Razvan Paisa.
//
// Author: Razvan Paisa (razvan@paisa.dk)
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
// 
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
// 
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.
// 
// See http://creativecommons.org/licenses/MIT/ for more information.

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
const unsigned short input = 1;
const unsigned short buttonPin = 12;

const unsigned short outputs [4] ={4, 7, 8, 2}; // one two three and all
const unsigned short leds[4] = {3, 5, 6, 9}; // one two three and buttonLED
const unsigned short modeLed = 13;

// =============================================================================
// Global variables
// =============================================================================
bool lastButtonState = 1;
bool buttonState = 0;
bool longTimeButtonState = 0;

bool inputTriggerState = 0;
bool lastinputTriggerState = 1;

bool skipMode = 0;
unsigned long lastButtonPressTime = 0;
const unsigned short holdTime = 1000;

unsigned short maxLedBrightness;
unsigned short fadeTime = 1;

unsigned short ledBrightness[4] = {0, 0, 0, 0};
bool outputState[4] = {0, 0, 0, 0}; 
unsigned int delayTime[3] = {1000, 1000, 1500};
bool canTriggerLed[3] = {0, 0, 0};
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

void setup()
{
    Serial.begin(9600);
    pinMode(buttonPin, INPUT_PULLUP); 
    pinMode(modeLed, OUTPUT);

    for (unsigned short i = 2; i < 10; i++)
    {
        pinMode(leds[i], OUTPUT);
        // Serial.print("Pin set to Output: ");
        // Serial.println(i);
    }

    maxLedBrightness = (255 / fadeTime) * fadeTime;
}

void loop() 
{
    //reading inputs
    buttonState = digitalRead(buttonPin);
    delayTime[0] = analogRead(0) * timeScalar[0];
    delayTime[1] = analogRead(1) * timeScalar[1];
    delayTime[2] = analogRead(2) * timeScalar[2];

    //detect analog trigger input
    if(analogRead(6) < 50) //arbitrary voltage :)
        inputTriggerState = 1;
    else
        inputTriggerState = 0;
    //
    if(inputTriggerState != lastinputTriggerState)   
    {
        if(inputTriggerState == 1)
        {
            delayTrigger(0);
            ledBrightness[3] = maxLedBrightness;
            if(skipMode == 0)
            {
                analogWrite(outputs[3], 255);
                outputState[3] = 1;
            }
        }
    }
    lastinputTriggerState = inputTriggerState;

    //Turn off TRIGGERS
    for(unsigned short i = 0; i < 3; i++)
    {
        if (triggerQueue[readIndex[i]][i] + delayTime[i] + gateLength < millis() && outputState[i])
        {
            analogWrite(outputs[i], 0);
            outputState[i] = 0; 
        }
    }
    //Turn off first(button) trigger
    if (triggerQueue[readIndex[0]][0] + gateLength < millis() && outputState[3])
    {
        analogWrite(outputs[3], 0);
        outputState[3] = 0; 
    }
    //Turn on LEDs
    for(unsigned short stage = 0; stage < 3; stage++)
    {
        if (triggerQueue[readIndex[stage]][stage] + delayTime[stage]  < millis() && canTriggerLed[stage])
        {
            trigger(stage);
        } 
    }
    //Detect button press
    if(buttonState != lastButtonState)
    {
        if(buttonState == LOW)
        {
            delayTrigger(0);
            ledBrightness[3] = maxLedBrightness;
            if(skipMode == 0)
            {
                analogWrite(outputs[3], 255);
                outputState[3] = 1;
            }
            lastButtonPressTime = millis();
        }
    }
    lastButtonState = buttonState;
    //Detect button hold & switch mode
    if (lastButtonPressTime + holdTime < millis())
    {
        if (digitalRead(buttonPin) != longTimeButtonState) 
        {
            longTimeButtonState = digitalRead(buttonPin);
            if (longTimeButtonState == LOW)
                skipMode =! skipMode;
        }
     }
    digitalWrite(modeLed, skipMode);
    //blinking skip function
    for (unsigned short i = 0; i < 3; i++)
    {
        if (delayTime[i] < 10 && ledBrightness[i] == 0)
        {
            ledBrightness[i] = maxLedBrightness;
        } 
    }
    //FADE
    for(unsigned short i = 0; i < 4; i++)
    {
        if(ledBrightness[i] > 0 )
            ledBrightness[i] -= fadeTime;

        analogWrite(leds[i], ledBrightness[i]);
    }
    //remember to remove the delay
    //delay(10); 
}

void delayTrigger(unsigned short stage)
{
    if (bufferLength[stage] == bufferSize)
    {
        Serial.println("Buffer is full!");
    }
    triggerQueue[writeIndex[stage]][stage] = millis();
    canTriggerLed[stage] = 1;   
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
        //set LED value MAX and output it
        ledBrightness[stage] = maxLedBrightness;
        analogWrite(leds[stage], ledBrightness[stage]);
        //Set Gate outputs to max
        outputState[stage] = 1;
        outputState[3] = 1;
        analogWrite(outputs[stage], 255);
        analogWrite(outputs[3], 255);
    }
    //advance buffer
    bufferLength[stage]--;
    readIndex[stage]++;
    if (readIndex[stage] == bufferSize) 
        readIndex[stage] = 0;
        
    if(bufferLength[stage] == 0)
        canTriggerLed[stage] = 0;
  
    if(stage == 0)
        delayTrigger(1);
  
    if(stage == 1)
        delayTrigger(2);
}

  
