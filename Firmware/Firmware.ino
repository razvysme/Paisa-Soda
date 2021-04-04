unsigned short buttonPin = 2;
const unsigned short leds[3] = {11, 10, 9};

bool lastButtonState = 1;
bool buttonState = 0;

unsigned short maxLedBrightness;
unsigned short fadeTime = 17;

int delayTime[3] = {1000, 1000, 1500};
unsigned short ledBrightness[3] = {0, 0, 0};
bool canTrigger[3] = {0, 0, 0};
unsigned short scalar[3] = {1, 1, 1};

unsigned long triggerQueue[75][3]; // the delay times
unsigned short bufferSize = 75; //total number of elements in the buffer
unsigned short bufferLength[3] = {0, 0, 0};  //number of elements filled atm
unsigned short readIndex[3] = {0, 0, 0};
unsigned short writeIndex[3] = {0, 0, 0};

void setup()
{
  // put your setup code here, to run once:
  Serial.begin(9600);
  pinMode(buttonPin, INPUT_PULLUP); 
  pinMode(leds[0], OUTPUT);
  pinMode(leds[1], OUTPUT);
  pinMode(leds[2], OUTPUT);

  maxLedBrightness = (255 / fadeTime) * fadeTime;
}

void loop() 
{
    //reading inputs
    buttonState = digitalRead(buttonPin);
    delayTime[0] = analogRead(0) * scalar[0];
    delayTime[1] = analogRead(1) * scalar[1];
    delayTime[2] = analogRead(2) * scalar[2];
    
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

  
