#include<Adafruit_NeoPixel.h>
#define PIN 26
#define NUMPIXELS 16
Adafruit_NeoPixel pixels(NUMPIXELS,PIN,NEO_RGB+NEO_KHZ800);
#define DELAYVAL 500
void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  pixels.begin();
}

void loop() {
  pixels.clear();
  for (int i=0;i<NUMPIXELS;i++){
    pixels.setPixelColor(i,pixels.Color(0,150,0));
    pixels.show();
    delay(DELAYVAL);
  }
}
