void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  ledcSetup(0,1000,8);
  ledcAttachPin(25,0);
}

void loop() {
  // put your main code here, to run repeatedly:
  Serial.println(analogRead(27));
  ledcWrite(0,analogRead(27));
  delay(100);
}
