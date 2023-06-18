#include"DHTesp.h"
DHTesp dht;
void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  dht.setup(26,DHTesp::DHT11);
}

void loop() {
  TempAndHumidity data=dht.getTempAndHumidity();
  Serial.println(data.temperature);
  Serial.println(data.humidity);
   delay(2000);
 
}
