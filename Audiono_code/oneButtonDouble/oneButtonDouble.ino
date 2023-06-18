#include "OneButton.h"

OneButton buttonE(25,true);
void clickE(){
  digitalWrite(26,1);
}
void doubleclickE(){
  digitalWrite(26,0);
}
void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
 
}

void loop() {
}
