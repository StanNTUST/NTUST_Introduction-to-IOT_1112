#include"DHTesp.h"
DHTesp dht;

void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  pinMode(12,OUTPUT);
  pinMode(13,OUTPUT);
  pinMode(14,OUTPUT);
  dht.setup(26,DHTesp::DHT11);
}

void loop() {
  TempAndHumidity data=dht.getTempAndHumidity();
  Serial.println(data.temperature);
  Serial.println(data.humidity);
  if(analogRead(25)>=2000){
    Serial.println("植物亮度不足");
    digitalWrite(12,1);
  }
  else{
    Serial.println("植物亮度正常");
    digitalWrite(12,0);
  }
   if(data.temperature<25){
    digitalWrite(13,1);
    Serial.println("植物溫度過低");
  }
  else if(data.temperature>26){
    digitalWrite(13,1);
    
    Serial.println("植物溫度過高");
  }
  else{
    digitalWrite(13,0);
    Serial.println("植物溫度正常");
  }
  if(data.humidity<65){
    digitalWrite(14,1);
    Serial.println("植物環境濕度過低");
  }
  else{
    digitalWrite(14,0);
    Serial.println("植物環境濕度正常");
  }
  delay(2000);
}
