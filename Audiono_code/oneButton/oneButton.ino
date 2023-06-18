#include "OneButton.h"

OneButton buttonE(25,true);
void clickE(){
  digitalWrite(26,!(digitalRead(26)));
}
void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  pinMode(25,INPUT);
  pinMode(26,OUTPUT);
  buttonE.attachClick(clickE);
}

void loop() {
  buttonE.tick();
}
