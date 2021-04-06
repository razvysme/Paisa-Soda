# 1 "e:\\Work projects\\Paisa-Soda\\Firmware\\Firmware.ino"
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
# 15 "e:\\Work projects\\Paisa-Soda\\Firmware\\Firmware.ino"
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

bool skipMode = 0;
unsigned long lastButtonPressTime = 0;
const unsigned short holdTime = 1000;

unsigned short maxLedBrightness;
unsigned short fadeTime = 15;

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
unsigned short bufferLength[3] = {0, 0, 0}; //number of elements filled atm
unsigned short readIndex[3] = {0, 0, 0};
unsigned short writeIndex[3] = {0, 0, 0};

void setup()
{
    Serial.begin(9600);
    pinMode(buttonPin, 0x2);
    pinMode(modeLed, 0x1);

    for (unsigned short i = 2; i < 10; i++)
    {
        pinMode(leds[i], 0x1);
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
        if (triggerQueue[readIndex[stage]][stage] + delayTime[stage] < millis() && canTriggerLed[stage])
        {
            trigger(stage);
        }
    }
    //Detect button press
    if(buttonState != lastButtonState)
    {
        if(buttonState == 0x0)
        {
            delayTrigger(0);
            ledBrightness[3] = maxLedBrightness;
            Serial.print(skipMode);
            if(skipMode == 0)
            {
                analogWrite(outputs[3], 255);
                outputState[3] = 1;
                Serial.println(", andtriggering first");
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
            if (longTimeButtonState == 0x0)
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
    delay(10);
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
