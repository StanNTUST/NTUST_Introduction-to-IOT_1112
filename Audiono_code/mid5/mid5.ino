#include"DHTesp.h"
#include "OneButton.h"
DHTesp dht;
OneButton buttonE(25,true);
void clickE(){
  Serial.println("開一號開門放鳥");
  digitalWrite(12,1);}
void doubleclickE(){
  Serial.println("開二號開門放蜜蜂");
  digitalWrite(12,1);}
void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  pinMode(12,OUTPUT);
  pinMode(13,OUTPUT);
  pinMode(14,OUTPUT);
  pinMode(25,INPUT);
  dht.setup(26,DHTesp::DHT11);
  buttonE.attachClick(clickE);
  buttonE.attachDoubleClick(doubleclickE);}
void loop() {
  buttonE.tick();
  TempAndHumidity data=dht.getTempAndHumidity();
  Serial.println(data.temperature);
  Serial.println(data.humidity);
  digitalWrite(12,0);
   if(data.temperature<25){
    digitalWrite(13,1);
    Serial.println("植物溫度過低");}
  else if(data.temperature>26){
    digitalWrite(13,1);
    Serial.println("植物溫度過高");}
  else{
    digitalWrite(13,0);
    Serial.println("植物溫度正常");}
  if(data.humidity<65){
    digitalWrite(14,1);
    Serial.println("植物環境濕度過低"); }
  else{
    digitalWrite(14,0);
    Serial.println("植物環境濕度正常");}
  delay(2000);
}
