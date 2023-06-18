void setup() {
  // initialize serial communication at 9600 bits per second:
  Serial.begin(9600);
  pinMode(12,OUTPUT);
  pinMode(13,OUTPUT);
  pinMode(14,OUTPUT);
}

// the loop routine runs over and over again forever:
void loop() {
  // read the input pin:
  int a = analogRead(25);
  if(a==0){
    digitalWrite(13,0);
    digitalWrite(12,1);
    delay(1000);
    digitalWrite(12,0);
    digitalWrite(14,1);
  }
  delay(1000);
  digitalWrite(14,0);
  digitalWrite(13,1);
  delay(1000);
}
