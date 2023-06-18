//4x4薄膜鍵盤範例程式
#include "WiFi.h"
#include "Adafruit_Keypad.h"
#include "PubSubClient.h"
WiFiClient mqttClient;
PubSubClient mqttclient(mqttClient);
String number="";
const byte ROWS = 4; // 列數(橫的)
const byte COLS = 4; // 行數(直的)
//鍵盤上每一個按鍵的名稱
char keys[ROWS][COLS] = {
  {'1','2','3','A'},
  {'4','5','6','B'},
  {'7','8','9','C'},
  {'*','0','#','D'}
};
byte rowPins[ROWS] = {12, 14, 27, 26}; //定義列的腳位
byte colPins[COLS] = {25, 33, 32, 35}; //定義行的腳位

//初始化鍵盤
Adafruit_Keypad customKeypad = Adafruit_Keypad( makeKeymap(keys), rowPins, colPins, ROWS, COLS);

void mqttsubscribe(String topic)
{
  char *amqtt = const_cast<char*>(topic.c_str());
  mqttclient.subscribe(amqtt);
}
void mqttpublich(String topic,String message)
{
  char *amqtt = const_cast<char*>(topic.c_str());
  char *bmqtt = const_cast<char*>(message.c_str());
  mqttclient.publish(amqtt,bmqtt);
}

void setup() {
  Serial.begin(9600);
  customKeypad.begin();
  Serial.println("KeyPad Test...");
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

    //MQTT
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
    mqttsubscribe("/clockTime");
}

void loop() {
  mqttclient.loop();
  // 開始偵測使用者的按鍵狀態
  customKeypad.tick();

  //判斷按了哪一個鍵
  while(customKeypad.available()){
    keypadEvent e = customKeypad.read();
    char pressValue=(char)e.bit.KEY;
    if(e.bit.EVENT == KEY_JUST_RELEASED){
    if(pressValue=='*')number="";
    else if(pressValue=='#'){
      Serial.println("upload the number");
      if(number.length()==4){
        int hour=(number[0]-'0')*10+number[1]-'0';
        int minute=(number[2]-'0')*10+number[3]-'0';
        if(hour<0 || hour >24) Serial.println("hour must be between 00 and 24");
        else if(minute<0 || minute >60) Serial.println("hour must be between 00 and 60");
        else{
        Serial.println("Password is correct");
        mqttpublich("/clockTime",number);
        }
      }
      else Serial.println("Password is 4 digits");
      number="";
    }
    else number+=pressValue;
    Serial.println(number);
    }
    
    
  }

  delay(10);
}
