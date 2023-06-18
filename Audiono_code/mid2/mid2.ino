void setup() {
  // initialize serial communication at 9600 bits per second:
  Serial.begin(9600);
  ledcSetup(0,1000,8);
  ledcSetup(1,1000,8);
  ledcAttachPin(12,0);
  ledcAttachPin(14,1);
}

// the loop routine runs over and over again forever:
void loop() {
  ledcWrite(0,255-analogRead(25)/16);
  ledcWrite(1,analogRead(25)/16);
  delay(500);
}
