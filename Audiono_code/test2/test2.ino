  void setup()
  {
    Serial.begin(9600);
    pinMode(26,OUTPUT);
    pinMode(27,OUTPUT);
    pinMode(21,OUTPUT);
    pinMode(22,OUTPUT);
  }
  void loop()
  {
    digitalWrite(26,0);
    digitalWrite(27,1);
    digitalWrite(21,0);
    digitalWrite(22,1);
    Serial.println(digitalRead(12));
    Serial.println(digitalRead(13));
    Serial.println("\n");
    delay(1000);
  }
