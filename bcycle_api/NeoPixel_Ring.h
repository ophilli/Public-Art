#ifndef NeoPixel_Ring_h
#define NeoPixel_Ring_h

#include "Arduino.h"
#include <Adafruit_NeoPixel.h>

class NeoPixel_Ring {
public:
    NeoPixel_Ring(Adafruit_NeoPixel* pixelPtr, int startPixel, int numPixels);
    void update_ring(int bikes_avail, int docks_avail);

private:
    Adafruit_NeoPixel* pixelPtr;
    int startPixel;
    int numPixels;

};

#endif
