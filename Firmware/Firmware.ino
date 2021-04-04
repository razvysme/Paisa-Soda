int buttonPin = 2;
const int leds[3] = {11, 10, 9};

int lastButtonState = 1;
int buttonState = 0; 

int delayTime[3] = {1000, 1000, 1500};
int ledBrightness[3] = {0, 0, 0};
bool canTrigger[3] = {0, 0, 0};

unsigned long triggerQueue[10][3]; // the delay times
int bufferSize = 10; //total number of elements in the buffer
int bufferLength[3] = {0, 0, 0};  //number of elements filled atm
int readIndex[3] = {0, 0, 0};
int writeIndex[3] = {0, 0, 0};

void setup()
{
  // put your setup code here, to run once:
  Serial.begin(9600);
  pinMode(buttonPin, INPUT_PULLUP); 
  pinMode(leds[0], OUTPUT);
  pinMode(leds[1], OUTPUT);
  pinMode(leds[2], OUTPUT);
}

void loop() 
{
  buttonState = digitalRead(buttonPin);
  delayTime[0] = analogRead(0) * 2;
  
  //this is where the output is triggered aka OUTPUT
  for(int i = 0; i < 3; i++)
  {
    if (triggerQueue[readIndex[i]][i] + delayTime[i]  < millis() && canTrigger[i])
    {
     trigger(i);
    } 
  }
  
  //this is wher the button is pressed aka INPUT
  if(buttonState != lastButtonState)
  {
    if(buttonState == LOW)
    {
      delayTrigger(0);
    }
  }
  
  lastButtonState = buttonState;
  
  // brightness fade
  for(int i=0; i<3; i++)
  {
    if(ledBrightness[i] > 0 )
      ledBrightness[i] -= 25;
      
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
  ledBrightness[stage] = 250;
  analogWrite(leds[stage], ledBrightness[stage]);  
  bufferLength[stage]--;
  readIndex[stage]++;
  if (readIndex[stage] == bufferSize) 
    readIndex[stage] = 0;
      
  if(bufferLength[stage] == 0)
  {
    canTrigger[stage] = 0;
  }
  
  if(stage == 0)
    delayTrigger(1);

  if(stage == 1)
    delayTrigger(2);
}

  
