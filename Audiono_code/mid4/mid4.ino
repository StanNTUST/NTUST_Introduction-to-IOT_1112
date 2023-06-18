#include <ToneESP32.h>

int trig=12;
int echo=13;

#define BUZZER_PIN 25
#define BUZZER_CHANNEL 0
ToneESP32 buzzer(BUZZER_PIN,BUZZER_CHANNEL);

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
  if(value<=5) buzzer.tone(NOTE_C5,250);
  Serial.println("value："+String(value));
  delay(50);
}
