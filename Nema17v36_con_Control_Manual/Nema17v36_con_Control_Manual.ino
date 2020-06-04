#define dirPin 11 
#define stepsPerRevolution 5
#define stepsPerRevolution2 25
#define stepsPerRevolution3 30
#define stepPin 12
#define stepPin2 9
#define dirPin2 8
#define stepPin3 2
#define dirPin3 3
#define dirPin4 6
#define stepPin4 5
#define finalX 4
#define finalY 7
#define finalZ 10
int avanzarEje;
int matlabData[3];
int steps2go1;
int steps2go2;
int steps2go3;
int stepContadorX;
int stepContadorY;
int stepContadorZ;
bool t = false;
void setup() {
Serial.begin(9600);
pinMode(stepPin,OUTPUT);
pinMode(dirPin,OUTPUT);
pinMode(stepPin2,OUTPUT);
pinMode(dirPin2,OUTPUT);
pinMode(stepPin3,OUTPUT);
pinMode(dirPin3,OUTPUT);
pinMode(stepPin4,OUTPUT);
pinMode(dirPin4,OUTPUT);
pinMode(finalX,INPUT);
pinMode(finalY,INPUT);
pinMode(finalZ,INPUT);
}
void loop(){
if(Serial.available() > 0)delay(100);
  if(t){
    steps2go1 = matlabData[0];
    steps2go2 = matlabData[1];
    steps2go3 = matlabData[2];
    
    if(steps2go1 >= 0){
      digitalWrite(dirPin3,HIGH);
      digitalWrite(dirPin4,HIGH);
    }
    if(steps2go2 >= 0){
      digitalWrite(dirPin,HIGH);
    }
    if(steps2go3 >= 0){
      digitalWrite(dirPin2,HIGH);    
    }
    if(steps2go1 < 0){
      digitalWrite(dirPin3,LOW);
      digitalWrite(dirPin4,LOW);
    }
    if(steps2go2 < 0){
      digitalWrite(dirPin,LOW);
    }
    if(steps2go3 < 0){
      digitalWrite(dirPin2,LOW);
    }
    while(!((stepContadorX >= abs(steps2go1)) && (stepContadorY >= abs(steps2go2)) && (stepContadorZ >= abs(steps2go3)))){
      while(stepContadorX < abs(steps2go1)){
        for(int i=0;i<stepsPerRevolution;i++){
        digitalWrite(stepPin3,HIGH);
        digitalWrite(stepPin4,HIGH);
        delayMicroseconds(1);
        digitalWrite(stepPin3,LOW);
        digitalWrite(stepPin4,LOW);
        delayMicroseconds(6000);
        }
        stepContadorX++;
      }
      while(stepContadorY < abs(steps2go2)){
        for(int i=0;i<stepsPerRevolution;i++){
        digitalWrite(stepPin,HIGH);
        delayMicroseconds(1);
        digitalWrite(stepPin,LOW);
        delayMicroseconds(6000);
        }
        stepContadorY++;
      }
      while(stepContadorZ < abs(steps2go3)){
        for(int i=0;i<stepsPerRevolution;i++){
        digitalWrite(stepPin2,HIGH);
        delayMicroseconds(1);
        digitalWrite(stepPin2,LOW);
        delayMicroseconds(6000);
        }
        stepContadorZ++;
      }
    }
        Serial.println("WE HAVE ARRIVED, SIR, THE STEPS WERE: " + String(steps2go1) + ", " + String(steps2go2) + ", " + String(steps2go3));

    stepContadorX = 0;
    stepContadorY = 0;
    stepContadorZ = 0;
    
    t = false;
    delay(1);
  Serial.flush();
}
}

void serialEvent(){
  int sign = 1;
  int i = 0;
  String value = "0";
  while(Serial.available()){
    char inChar = (char)Serial.read();
    if(inChar == ','){
      matlabData[i] = String(value).toInt();
      matlabData[i] = matlabData[i]*sign;
      value = "0";
      sign = 1;
      i++;
    }
    else{
      if(inChar == '-'){
        sign = -1;
      }
      if(inChar == 'H'){
        while((finalX==LOW) && (finalY==LOW) && (finalZ==LOW)){
        digitalWrite(dirPin,LOW);
        digitalWrite(dirPin2,LOW);
        digitalWrite(dirPin3,LOW);
        digitalWrite(dirPin4,LOW);
        if(finalX == LOW){
          for(int i=0;i<stepsPerRevolution3;i++){
            digitalWrite(stepPin3,HIGH);
            digitalWrite(stepPin4,HIGH);
            delayMicroseconds(4000);
            digitalWrite(stepPin3,LOW);
            digitalWrite(stepPin4,LOW);
            delayMicroseconds(4000);
          }
        }
        if(finalY == LOW){
          for(int i=0;i<stepsPerRevolution3;i++){
            digitalWrite(stepPin,HIGH);
            delayMicroseconds(2000);
            digitalWrite(stepPin,LOW);
            delayMicroseconds(2000);
          }
        }
        if(finalZ == LOW){
          for(int i=0;i<stepsPerRevolution3;i++){
            digitalWrite(stepPin2,HIGH);
            delayMicroseconds(2000);
            digitalWrite(stepPin2,LOW);
            delayMicroseconds(2000);
        }
      }
        }
      }
      if(inChar=='x'){ 
        digitalWrite(dirPin3,HIGH);
        digitalWrite(dirPin4,HIGH);
        for(int i=0;i<stepsPerRevolution3;i++){
          digitalWrite(stepPin3,HIGH);
          digitalWrite(stepPin4,HIGH);
          delayMicroseconds(4000);
          digitalWrite(stepPin3,LOW);
          digitalWrite(stepPin4,LOW);
          delayMicroseconds(4000);
        }
      }
      if(inChar=='y'){
        digitalWrite(dirPin,HIGH);
        for(int i=0;i<stepsPerRevolution3;i++){
          digitalWrite(stepPin,HIGH);
          delayMicroseconds(2000);
          digitalWrite(stepPin,LOW);
          delayMicroseconds(2000);
          }
      }
      if(inChar=='z'){
        digitalWrite(dirPin2,HIGH);
        for(int i=0;i<stepsPerRevolution3;i++){
          digitalWrite(stepPin2,HIGH);
          delayMicroseconds(2000);
          digitalWrite(stepPin2,LOW);
          delayMicroseconds(2000);
        }
      }
      if(inChar=='Z'){
        digitalWrite(dirPin2,LOW);
        for(int i=0;i<stepsPerRevolution3;i++){
          digitalWrite(stepPin2,HIGH);
          delayMicroseconds(2000);
          digitalWrite(stepPin2,LOW);
          delayMicroseconds(2000);
        }
      }
      if(inChar=='Y'){
        digitalWrite(dirPin,LOW);
        for(int i=0;i<stepsPerRevolution3;i++){
          digitalWrite(stepPin,HIGH);
          delayMicroseconds(2000);
          digitalWrite(stepPin,LOW);
          delayMicroseconds(2000);
          }
      }
      if(inChar=='X'){ 
        digitalWrite(dirPin3,LOW);
        digitalWrite(dirPin4,LOW);
        for(int i=0;i<stepsPerRevolution3;i++){
          digitalWrite(stepPin3,HIGH);
          digitalWrite(stepPin4,HIGH);
          delayMicroseconds(4000);
          digitalWrite(stepPin3,LOW);
          digitalWrite(stepPin4,LOW);
          delayMicroseconds(4000);
        }
      }
      else{
        value += inChar;
      }
    }
    delay(3);
  }
  i = 0;
  t = true;
}
    
