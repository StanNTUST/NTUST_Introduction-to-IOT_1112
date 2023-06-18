#include <WiFi.h>
#include "Adafruit_Keypad.h"
#include <PubSubClient.h>

WiFiClient mqttClient;
PubSubClient mqttclient(mqttClient);

const byte ROWS = 4; // 列數(橫的)
const byte COLS = 4; // 行數(直的)
//鍵盤上每一個按鍵的名稱
char keys[ROWS][COLS] = {
  {'1','2','3','A'},
  {'4','5','6','B'},
  {'7','8','9','C'},
  {'*','0','#','D'}
};
byte rowPins[ROWS] = { 12, 14, 27, 26 }; //定義列的腳位
byte colPins[COLS] = { 25, 33, 32, 35 }; //定義行的腳位
Adafruit_Keypad customKeypad = Adafruit_Keypad(makeKeymap(keys), rowPins, colPins, ROWS, COLS);

void mqttsubscribe(String topic)
{
    char* amqtt = const_cast<char*>(topic.c_str());
    mqttclient.subscribe(amqtt);
}

//#include "OneButton.h"

//OneButton buttonE(15, true);

#include <time.h>
int timezone = 8 * 3600;
int dst = 0;

void mqttpublich(String topic, String message)
{
    char* amqtt = const_cast<char*>(topic.c_str());
    char* bmqtt = const_cast<char*>(message.c_str());
    mqttclient.publish(amqtt, bmqtt);
}

#include <Tone32.h>

#include "esp_camera.h"
#include <Arduino.h>
#define CAMERA_MODEL_ESP_EYE
#include "camera_pins.h"
sensor_t* s = NULL;

#include <FS.h>
#include <SPIFFS.h>

#include <TridentTD_LineNotify.h>

float getDistance(int trig, int echo) {
    digitalWrite(trig, LOW);
    delayMicroseconds(5);
    digitalWrite(trig, HIGH);
    delayMicroseconds(10);
    digitalWrite(trig, LOW);
    pinMode(echo, INPUT);
    return (pulseIn(echo, HIGH) / 2) / 29.1;
}

String hourString = "";
String minString = "";
String myTime = String("");
String netTime = String("");
int ring = 0;

void clickE() {
    ring = 2;
    Serial.println("baganono");
}
String number = "";
int timeLoop = 0;
void setup()
{
    customKeypad.begin();
    Serial.begin(9600);
    //buttonE.attachClick(clickE);
    if (!SPIFFS.begin(true)) {
        Serial.println("An Error has occurred while mounting SPIFFS");
        return;
    }
    pinMode(22, OUTPUT);
    pinMode(23, OUTPUT);
    pinMode(16, OUTPUT);
    pinMode(17, OUTPUT);
    pinMode(2, OUTPUT);
    pinMode(3, INPUT);
    pinMode(15, INPUT);
    WiFi.begin("root", "rootroot");
    Serial.print("Connecting");
    int testwifi = 0;
    while (WiFi.status() != WL_CONNECTED)
    {
        delay(500);
        Serial.print(".");
        testwifi++;
        if (testwifi > 8)
            ESP.restart();
    }
    Serial.println();
    Serial.print("Connected, IP address: ");
    Serial.println(WiFi.localIP());
    char* mqttServer = "broker.mqttdashboard.com";
    int mqttPort = 1883;
    mqttclient.setServer(mqttServer, mqttPort);
    while (!mqttclient.connected()) {
        Serial.println("Connecting to MQTT...");
        long a = random(0, 10000);
        String b = "ESPClient" + String(a);
        char* c = const_cast<char*>(b.c_str());
        if (mqttclient.connect(c)) {
            Serial.println("connected");
        }
        else {
            Serial.print("failed with state ");
            Serial.print(mqttclient.state());
            delay(2000);
        }
    }
    mqttsubscribe("/clockTime");
    mqttsubscribe("/currentTime");
    configTime(timezone, dst, "pool.ntp.org", "time.nist.gov");
    while (!time(nullptr)) {
        Serial.print("*");
        delay(1000);
    }
}
void loop()
{
    digitalWrite(22, 0);
    digitalWrite(23, 0);
    digitalWrite(16, 0);
    digitalWrite(17, 0);
    String minute;
    mqttclient.loop();
    if (digitalRead(15) == 0)
        ring = 2;
    time_t now = time(nullptr);
    struct tm* p_tm = localtime(&now);
    hourString = String((p_tm->tm_hour));
    minString = String((p_tm->tm_min));
    if (hourString.length() == 1) {
        hourString = "0" + hourString;
    }
    if (minString.length() == 1) {
        minString = "0" + minString;
    }
    netTime = hourString + minString;
    Serial.println(myTime);
    mqttpublich("/currentTime", netTime);
    mqttclient.loop();
    mqttpublich("/clockTime", myTime);
    delay(2 * 1000);
    while (myTime == netTime) {
        ring = 1;
    }
    while (ring == 0) {
        digitalWrite(22, 0);
        digitalWrite(23, 0);
        digitalWrite(16, 0);
        digitalWrite(17, 0);
        timeLoop += 1;
        if (timeLoop == 199) {
            timeLoop=0;
            String minute;
            time_t now = time(nullptr);
            struct tm* p_tm = localtime(&now);
            hourString = String((p_tm->tm_hour));
            minString = String((p_tm->tm_min));
            if (hourString.length() == 1) {
                hourString = "0" + hourString;
            }
            if (minString.length() == 1) {
                minString = "0" + minString;
            }
            netTime = hourString + minString;
            mqttclient.loop();
            mqttpublich("/currentTime", netTime);
        }


        // 開始偵測使用者的按鍵狀態
        customKeypad.tick();

        //判斷按了哪一個鍵
        while (customKeypad.available()) {
            keypadEvent e = customKeypad.read();
            char pressValue = (char)e.bit.KEY;
            if (e.bit.EVENT == KEY_JUST_RELEASED) {
                if (pressValue == '*') {
                    number = "";
                    Serial.println("number clear");
                }
                else if (pressValue == '#') {
                    Serial.println("upload the number");
                    if (number.length() == 4) {
                        int hour = (number[0] - '0') * 10 + number[1] - '0';
                        int minute = (number[2] - '0') * 10 + number[3] - '0';
                        if (hour < 0 || hour >24) Serial.println("hour must be between 00 and 24");
                        else if (minute < 0 || minute >60) Serial.println("hour must be between 00 and 60");
                        else {
                            myTime = number;
                            mqttpublich("/clockTime", myTime);
                            Serial.println("Password is correct");
                            ring = 1;
                             delay(2 * 1000);
                        }
                    }
                    else Serial.println("Password is 4 digits");
                    number = "";
                }
                else number += pressValue;
                Serial.println(number);
            }
        }

        delay(10);
    }
    while (ring == 1) {

            String minute;
            time_t now = time(nullptr);
            struct tm* p_tm = localtime(&now);
            hourString = String((p_tm->tm_hour));
            minString = String((p_tm->tm_min));
            if (hourString.length() == 1) {
                hourString = "0" + hourString;
            }
            if (minString.length() == 1) {
                minString = "0" + minString;
            }
            netTime = hourString + minString;
            mqttclient.loop();
            mqttpublich("/currentTime", netTime);
        Serial.println(ring);
        tone(13, 131, 1000, 0);
        Move();
    }
    while (ring == 2) {
        digitalWrite(22, 0);
        digitalWrite(23, 0);
        digitalWrite(16, 0);
        digitalWrite(17, 0);
        time_t now = time(nullptr);
        struct tm* p_tm = localtime(&now);
        int hourint = 0, minint = 0, backhour = 0, backmin = 0;
        hourint = (int)p_tm->tm_hour;
        minint = (int)p_tm->tm_min;
        backhour = backhour + (10 * myTime[0]);
        backhour = backhour + myTime[1];
        backmin = backmin + (10 * myTime[2]);
        backmin = backmin + myTime[3];
        if (backhour - hourint > 0) {
            backmin = backmin + (60 * (backhour - hourint));
        }
        backmin -= minint;
        backmin -= 32206;
        Serial.println(backmin);
        Serial.setDebugOutput(true);
        Serial.println();
        camera_config_t config;
        config.ledc_channel = LEDC_CHANNEL_0;
        config.ledc_timer = LEDC_TIMER_0;
        config.pin_d0 = Y2_GPIO_NUM;
        config.pin_d1 = Y3_GPIO_NUM;
        config.pin_d2 = Y4_GPIO_NUM;
        config.pin_d3 = Y5_GPIO_NUM;
        config.pin_d4 = Y6_GPIO_NUM;
        config.pin_d5 = Y7_GPIO_NUM;
        config.pin_d6 = Y8_GPIO_NUM;
        config.pin_d7 = Y9_GPIO_NUM;
        config.pin_xclk = XCLK_GPIO_NUM;
        config.pin_pclk = PCLK_GPIO_NUM;
        config.pin_vsync = VSYNC_GPIO_NUM;
        config.pin_href = HREF_GPIO_NUM;
        config.pin_sscb_sda = SIOD_GPIO_NUM;
        config.pin_sscb_scl = SIOC_GPIO_NUM;
        config.pin_pwdn = PWDN_GPIO_NUM;
        config.pin_reset = RESET_GPIO_NUM;
        config.xclk_freq_hz = 20000000;
        config.pixel_format = PIXFORMAT_JPEG;
        if (psramFound()) {
            config.frame_size = FRAMESIZE_UXGA;
            config.jpeg_quality = 10;
            config.fb_count = 2;
        }
        else {
            config.frame_size = FRAMESIZE_SVGA;
            config.jpeg_quality = 12;
            config.fb_count = 1;
        }
        esp_err_t err = esp_camera_init(&config);
        if (err != ESP_OK) {
            Serial.printf("Camera init failed with error 0x%x", err);
            return;
        }
        s = esp_camera_sensor_get();
        if (s->id.PID == OV3660_PID) {
            s->set_vflip(s, 1);
            s->set_brightness(s, 1);
            s->set_saturation(s, -2);
        }
        s->set_framesize(s, FRAMESIZE_QVGA);
        camera_fb_t* fb = NULL;
        Serial.println("Taking a photo...");
        fb = esp_camera_fb_get();
        if (!fb) {
            Serial.println("Camera capture failed");
            return;
        }
        File file = SPIFFS.open("/photo.jpg", "w");
        if (!file) {
            Serial.println("Failed to open file in writing mode");
        }
        else {
            file.write(fb->buf, fb->len);
            Serial.print("The picture has been saved in ");
            Serial.print("/photo.jpg");
            Serial.print(" - Size: ");
            Serial.print(file.size());
            Serial.println(" bytes");
        }
        file.close();
        esp_camera_fb_return(fb);
        LINE.setToken("gHdqJoUGsm41dacxVKVRP4fvGQpc6TGSx70OkmT2hls");
        LINE.notifyPicture((String("你在鬧鐘響了") + String(backmin) + String("後才關掉鬧鐘!")), SPIFFS, "/photo.jpg");
        ring = 0;
        myTime = "";
    }


}

/// 描述此函式...
void Move() {
    int straight = random(5, 10);
    int rstraight = random(1, 3);
    digitalWrite(22, 1);
    digitalWrite(23, 0);
    digitalWrite(16, 1);
    digitalWrite(17, 0);
    if (digitalRead(15) == 0)
        ring = 2;
    if (ring != 1)
        return;
    for (int index = 0; index <= straight; index = index + 1) {
        if ((getDistance(18, 19)) < 20) {
            rstraight = random(1, 3);
            int iLR = random(0, 1);
            int iRS = random(1, 3);
            if (iLR == 0) {
                digitalWrite(22, 1);
                digitalWrite(23, 0);
                digitalWrite(16, 0);
                digitalWrite(17, 1);
                for (int i = 0; i < rstraight; i++)
                {
                    tone(13, 131, 900, 0);
                    if (digitalRead(15) == 0)
                        ring = 2;
                    if (ring != 1)
                        return;
                }
                digitalWrite(22, 0);
                digitalWrite(23, 0);
                digitalWrite(16, 0);
                digitalWrite(17, 0);
            }
            if (iLR == 1) {
                digitalWrite(22, 0);
                digitalWrite(23, 1);
                digitalWrite(16, 1);
                digitalWrite(17, 0);
                for (int i = 0; i < rstraight; i++)
                {
                    tone(13, 131, 900, 0);
                    if (digitalRead(15) == 0)
                        ring = 2;
                    if (ring != 1)
                        return;
                }
                digitalWrite(22, 0);
                digitalWrite(23, 0);
                digitalWrite(16, 0);
                digitalWrite(17, 0);
            }
            if (ring != 1)
                return;
        }
        if (digitalRead(15) == 0)
            ring = 2;
        if (ring != 1)
            return;
        tone(13, 131, 1000, 0);
    }
    rstraight = random(1, 3);
    digitalWrite(22, 0);
    digitalWrite(23, 0);
    digitalWrite(16, 0);
    digitalWrite(17, 0);
    int lR = random(0, 1);
    if (digitalRead(15) == 0)
        ring = 2;
    if (ring != 1)
        return;
    if (lR == 0) {
        digitalWrite(22, 1);
        digitalWrite(23, 0);
        digitalWrite(16, 0);
        digitalWrite(17, 1);
        for (int i = 0; i < rstraight; i++)
        {
            tone(13, 131, 900, 0);
            if (digitalRead(15) == 0)
                ring = 2;
            if (ring != 1)
                return;
        }
        digitalWrite(22, 0);
        digitalWrite(23, 0);
        digitalWrite(16, 0);
        digitalWrite(17, 0);
    }
    if (lR == 1) {
        digitalWrite(22, 0);
        digitalWrite(23, 1);
        digitalWrite(16, 1);
        digitalWrite(17, 0);
        for (int i = 0; i < rstraight; i++)
        {
            tone(13, 131, 900, 0);
            if (digitalRead(15) == 0)
                ring = 2;
            if (ring != 1)
                return;
        }
        digitalWrite(22, 0);
        digitalWrite(23, 0);
        digitalWrite(16, 0);
        digitalWrite(17, 0);
    }
    if (digitalRead(15) == 0) {

        ring = 2;
    }
    if (ring != 1)
        return;
}
