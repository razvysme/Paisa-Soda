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
unsigned short input = 1;
unsigned short triggerButtonLED = 13;
unsigned short outAll = 2;
unsigned short outOne = 4;
unsigned short outTwo = 7;
unsigned short outThree = 8;

unsigned short buttonPin = 12;
const unsigned short leds[3] = {3, 5, 6};

// =============================================================================
// Global variables
// =============================================================================
bool lastButtonState = 1;
bool buttonState = 0;

unsigned short maxLedBrightness;
unsigned short fadeTime = 17;

int delayTime[3] = {1000, 1000, 1500};
unsigned short ledBrightness[3] = {0, 0, 0};
bool canTrigger[3] = {0, 0, 0};
unsigned short timeScalar[3] = {1, 1, 1};

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
  pinMode(leds[0], 0x1);
  pinMode(leds[1], 0x1);
  pinMode(leds[2], 0x1);

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
        if (triggerQueue[readIndex[stage]][stage] + delayTime[stage] < millis() && canTrigger[stage])
        {
            trigger(stage);
        }
    }

    //this is wher the button is pressed aka INPUT
    if(buttonState != lastButtonState)
    {
        if(buttonState == 0x0)
            delayTrigger(0);
    }

    lastButtonState = buttonState;

    // FADE
    for(int i=0; i<3; i++)
    {
        if(ledBrightness[i] > 0 )
            ledBrightness[i] -= fadeTime;

        analogWrite(leds[i], ledBrightness[i]);
    }
    delay(10);
}

void delayTrigger(int stage)
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

void trigger(int stage)
{
    //output trigger
    if(analogRead(stage) > 10)
    {
        ledBrightness[stage] = maxLedBrightness;
        analogWrite(leds[stage], ledBrightness[stage]);
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
