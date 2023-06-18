int trig=27;
int echo=14;
void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  pinMode(echo,INPUT);
  pinMode(trig,OUTPUT);
}

void loop() {
  digitalWrite(trig,LOW);
  delayMicroseconds(5);
  digitalWrite(trig,HIGH);
  delayMicroseconds(10);
  digitalWrite(trig,LOW);
  float echotime=pulseIn(echo,HIGH);
  float value=echotime/29.4/2;
  Serial.println("value："+String(value));
  delay(50);
}
