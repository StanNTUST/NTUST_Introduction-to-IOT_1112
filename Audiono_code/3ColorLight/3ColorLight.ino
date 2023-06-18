void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  for(int i=25;i<=27;i++){
    pinMode(i,OUTPUT);
  }
}

void loop() {
  int i=25;
  // put your main code here, to run repeatedly:
  while(i<=27){
    digitalWrite(i,!digitalRead(i));
    i++;
    delay(300);
  }
  
}
