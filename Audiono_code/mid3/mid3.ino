#include<Adafruit_NeoPixel.h>
#define PIN 12
#define NUMPIXELS 16
Adafruit_NeoPixel pixels(NUMPIXELS,PIN,NEO_RGB+NEO_KHZ800);
#define DELAYVAL 200

void setup() {
  // initialize serial communication at 9600 bits per second:
  Serial.begin(9600);
  pixels.begin();
}

// the loop routine runs over and over again forever:
void loop() {
  for (int i=0;i<NUMPIXELS;i++){
    pixels.setPixelColor(i,pixels.Color(0,255,0));
    pixels.show();
    delay(DELAYVAL);
  }
  for (int i=0;i<NUMPIXELS;i++){
    pixels.setPixelColor(i,pixels.Color(0,0,0));
    pixels.show();
    delay(DELAYVAL);
  }
}
