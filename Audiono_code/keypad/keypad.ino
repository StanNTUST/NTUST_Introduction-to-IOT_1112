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
void setup() {
  Serial.begin(9600);
  customKeypad.begin();
  Serial.println("KeyPad Test...");
}

void loop() {
  // 開始偵測使用者的按鍵狀態
  customKeypad.tick();

  //判斷按了哪一個鍵
  while(customKeypad.available()){
    keypadEvent e = customKeypad.read();
    char pressValue=(char)e.bit.KEY;
    if(e.bit.EVENT == KEY_JUST_RELEASED){
    if(pressValue=='*')number="";
    else if(pressValue=='#'){
      Serial.println("Submit the number");
      if(number=="123456")Serial.println("Password is correct");
      else Serial.println("Password is incorrect");
      number="";
    }
    else number+=pressValue;
    Serial.println(number);
    }
    
    
  }

  delay(10);
}
