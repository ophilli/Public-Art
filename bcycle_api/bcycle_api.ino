

/*
 *  HTTP over TLS (HTTPS) example sketch
 *
 *  This example demonstrates how to use
 *  WiFiClientSecure class to access HTTPS API.
 *  We fetch and display the status of
 *  esp8266/Arduino project continuous integration
 *  build.
 *
 *  Created by Ivan Grokhotkov, 2015.
 *  This example is in public domain.
 */

#include <ESP8266WiFi.h>
#include <WiFiClientSecure.h>
#include <ArduinoJson.h>
//#include <Adafruit_NeoPixel.h>
#include "NeoPixel_Ring.h"
#ifdef __AVR__
  #include <avr/power.h>
#endif

#define PIN 14
#define NUMPIXELS 80


Adafruit_NeoPixel pixels = Adafruit_NeoPixel(NUMPIXELS, PIN, NEO_GRB + NEO_KHZ800);
NeoPixel_Ring rings[5] = {
  NeoPixel_Ring(&pixels, 0, 16), 
  NeoPixel_Ring(&pixels, 16, 16), 
  NeoPixel_Ring(&pixels, 32, 16), 
  NeoPixel_Ring(&pixels, 64, 16),
  NeoPixel_Ring(&pixels, 48, 16) 
};

  // There are 16 pixels per ring - and 5 rings
  // 0 - 15
  // 16 - 31
  // 32 - 47
  // 48 - 63
  // 64 - 79
  


int delayval = 100;
int brightDivisor = 100;

const char* ssid = "resmedianet";
const char* password = "tigerpaw";

const char* host = "gbfs.bcycle.com";
const int httpsPort = 443;

// Use web browser to view and copy
// SHA1 fingerprint of the certificate
const char* fingerprint = "e4 5d ce ac b2 4f 1c dc 37 a8 c6 52 80 96 7d 83 44 fd 6e cf";

// TODO: Ditch Global JsonBuffer
// http://arduinojson.org/doc/pitfalls/#4-dont-reuse-the-same-jsonbuffer/
// http://arduinojson.org/faq/why-shouldnt-i-use-a-global-jsonbuffer/
StaticJsonBuffer<1600> jsonBuffer;

const uint8_t PROGMEM gamma8[] = {
    0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
    0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  1,  1,  1,  1,
    1,  1,  1,  1,  1,  1,  1,  1,  1,  2,  2,  2,  2,  2,  2,  2,
    2,  3,  3,  3,  3,  3,  3,  3,  4,  4,  4,  4,  4,  5,  5,  5,
    5,  6,  6,  6,  6,  7,  7,  7,  7,  8,  8,  8,  9,  9,  9, 10,
   10, 10, 11, 11, 11, 12, 12, 13, 13, 13, 14, 14, 15, 15, 16, 16,
   17, 17, 18, 18, 19, 19, 20, 20, 21, 21, 22, 22, 23, 24, 24, 25,
   25, 26, 27, 27, 28, 29, 29, 30, 31, 32, 32, 33, 34, 35, 35, 36,
   37, 38, 39, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 50,
   51, 52, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 66, 67, 68,
   69, 70, 72, 73, 74, 75, 77, 78, 79, 81, 82, 83, 85, 86, 87, 89,
   90, 92, 93, 95, 96, 98, 99,101,102,104,105,107,109,110,112,114,
  115,117,119,120,122,124,126,127,129,131,133,135,137,138,140,142,
  144,146,148,150,152,154,156,158,160,162,164,167,169,171,173,175,
  177,180,182,184,186,189,191,193,196,198,200,203,205,208,210,213,
  215,218,220,223,225,228,231,233,236,239,241,244,247,249,252,255 };


void setup() {
  pixels.begin();
  Serial.begin(115200);
  delay(500);

  Serial.println();
  Serial.print("MAC: ");
  Serial.println(WiFi.macAddress());
  //Serial.setDebugOutput(true);
  
  Serial.println();
  Serial.print("connecting to ");
  Serial.println(ssid);
  WiFi.begin(ssid, password);
  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
  }
  Serial.println("");
  Serial.println("WiFi connected");
  Serial.println("IP address: ");
  Serial.println(WiFi.localIP());
}

void loop() {
  //for(int i = 0; i < NUMPIXELS; i++) {
  //  pixels.setPixelColor(i, pixels.Color(0,0,0)); // set pixels to black.
  //}

  //pixels.show();
  //delay(delayval);
  
  // Use WiFiClientSecure class to create TLS connection
  WiFiClientSecure client;
  Serial.print("connecting to ");
  Serial.println(host);
  if (!client.connect(host, httpsPort)) {
    Serial.println("connection failed");
    return;
  }

  if (client.verify(fingerprint, host)) {
    Serial.println("certificate matches");
  } else {
    Serial.println("certificate doesn't match");
  }

  String url = "/bcycle_clemson/station_status.json";
  Serial.print("requesting URL: ");
  Serial.println(url);

  client.print(String("GET ") + url + " HTTP/1.1\r\n" +
               "Host: " + host + "\r\n" +
               "User-Agent: BuildFailureDetectorESP8266\r\n" +
               "Connection: close\r\n\r\n");

  Serial.println("request sent");
  while (client.connected()) {
    String line = client.readStringUntil('\n');
    if (line == "\r") {
      Serial.println("headers received");
      break;
    }
  }
  
  String line = client.readStringUntil('\n');
  if (line.startsWith("{\"state\":\"success\"")) {
    Serial.println("esp8266/Arduino CI successfull!");
  } else {
    Serial.println("esp8266/Arduino CI has failed");
  }
  
  Serial.println("reply was:");
  Serial.println("==========");
  Serial.println(line);
  Serial.println("==========");
  Serial.println("closing connection");

  

  JsonObject& root = jsonBuffer.parseObject(line);

  if(!root.success()) {
    Serial.println("parseObject() failed");
    return;
  }

  int last_updated = root["last_updated"];

  Serial.print("Last Updated: ");
  Serial.println(last_updated);
  //root.prettyPrintTo(Serial);

  JsonObject& _data = root["data"]; // pull data from root
  JsonArray& _stations = _data["stations"]; // pull station info from data

  // bcycle_clemson_3651 - Sikes Hall
  // bcycle_clemson_3653 - Core-Holmes
  // bcycle_clemson_3654 - Fike Recreation Center
  // bcycle_clemson_3655 - Edwards- Hendrix
  // bcycle_clemson_3656 - Rhodes Annex
  // as reported by https://gbfs.bcycle.com/bcycle_clemson/station_information.json on 2017-11-20

  
  _stations.prettyPrintTo(Serial);

  Serial.println("");

  if(_stations.size() != 5) {
    Serial.println("Error: Number of bike share stations detected != 5");
  } else {
    Serial.println("Looks good!");
  }

  for(int i = 0; i < 5; i++) {
    JsonObject& _station = _stations[i];
    Serial.println(_station.get<String>((String)"station_id"));
    Serial.println(_station.get<String>((String)"num_bikes_available"));
    Serial.println(_station.get<String>((String)"num_docks_available"));//[(String)"station_id"]);
  }

  // There are 16 pixels per ring - and 5 rings
  // 0 - 15
  // 16 - 31
  // 32 - 47
  // 48 - 63
  // 64 - 79

  for(int i = 0; i < 5; i++) {
    JsonObject& _station = _stations[i];
    rings[i].update_ring(_station.get<int>("num_bikes_available"), _station.get<int>("num_docks_available"));
  }
  jsonBuffer.clear();
  delay(delayval*10*60);

  //for(int i = 79; i >= 0; i--) {
    //pixels.setPixelColor(i, pixels.Color(0,0,0));
    //pixels.show();

    //delay(delayval);
  //}
}
