#include "NeoPixel_Ring.h"

NeoPixel_Ring::NeoPixel_Ring(Adafruit_NeoPixel* pixelPtr, int startPixel, int numPixels) {
    this->pixelPtr = pixelPtr;
    this->startPixel = startPixel;
    this->numPixels = numPixels;
}

void NeoPixel_Ring::update_ring(int bikes_avail, int docks_avail) {
    int j = startPixel;
    Serial.print("Updating_ring at pixel #");
    Serial.println(startPixel);
    for(; j < bikes_avail + startPixel; j++) {

      //234,106,32
      //198,21,1

      Serial.print("Updating pixel #");
      Serial.println(j);
      pixelPtr->setPixelColor(j, pixelPtr->Color(198,21,1)); // set pixels to gamma corrected clemson orange.

      pixelPtr->show();

      delay(100);
    }

    for(; j < bikes_avail + docks_avail + startPixel; j++) {

      //82,45,128
      //10,2,36
      Serial.print("Updating pixel #");
      Serial.println(j);
      pixelPtr->setPixelColor(j, pixelPtr->Color(10,2,36)); // set pixels to gamma corrected regalia.

      pixelPtr->show();

      delay(100);
    }
}
