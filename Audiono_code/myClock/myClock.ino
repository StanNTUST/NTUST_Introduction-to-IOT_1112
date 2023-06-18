
#include <WiFi.h>

#include <PubSubClient.h>
WiFiClient mqttClient;
PubSubClient mqttclient(mqttClient);

void mqttsubscribe(String topic)
{
  char *amqtt = const_cast<char*>(topic.c_str());
  mqttclient.subscribe(amqtt);
}

#include <SPI.h>
#include <Wire.h>
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>
#define OLED_RESET -1

#define SCREEN_WIDTH 128
#define SCREEN_HEIGHT 64
Adafruit_SSD1306 display(SCREEN_WIDTH, SCREEN_HEIGHT, &Wire, OLED_RESET);


  String clockTime = String("");
  String myTime = String("");


  void callback(char* topic, byte* payload, unsigned int length) {
    String mqtttopic=String(topic);
    String mqttmessage;
    for (int i = 0; i < length; i++) {
      mqttmessage=mqttmessage+(char)payload[i];
  }
    if ((mqtttopic) == String("/clockTime")) {
      clockTime = (mqttmessage);
    }
    if ((mqtttopic) == String("/currentTime")) {
      myTime = (mqttmessage);
    }

  }void setup()
  {
    Serial.begin(9600);
    WiFi.begin("root", "rootroot");
    Serial.print("Connecting");
    int testwifi=0;
    while (WiFi.status() != WL_CONNECTED)
    {
        delay(500);
        Serial.print(".");
        testwifi++;
        if (testwifi>8)
          ESP.restart();
      }
      Serial.println();
      Serial.print("Connected, IP address: ");
      Serial.println(WiFi.localIP());
    display.begin(SSD1306_SWITCHCAPVCC,0x3C);
    display.setTextColor(WHITE);
    display.clearDisplay();
    display.setCursor(0,0);
    display.println("bDesigner");
    display.display();
    char* mqttServer = "broker.mqttdashboard.com";
    int mqttPort = 1883;
    mqttclient.setServer(mqttServer, mqttPort);
    while (!mqttclient.connected()) {
      Serial.println("Connecting to MQTT...");
      long a=random(0, 10000);
      String b="ESPClient"+String(a);
      char *c= const_cast<char*>(b.c_str());
      if (mqttclient.connect(c)) {
        Serial.println("connected");
      } else {
        Serial.print("failed with state ");
        Serial.print(mqttclient.state());
        delay(2000);
      }
    }
    mqttclient.setCallback(callback);
    mqttsubscribe("/clockTime");
    mqttsubscribe("/currentTime");
  }
  void loop()
  {
  mqttclient.loop();
    display.setCursor(0,0);
    display.clearDisplay();
      display.println((String("current time:")+myTime));
      display.println("");
      display.println((String("clock time: ")+clockTime));
    display.display();
    delay(1*1000);


  }
