#ifdef ENABLE_LEDRGB

#include "FastLED.h"

#define NUM_LEDS 5
#define DATA_PIN 5

// Define the array of leds
CRGB leds[NUM_LEDS];

int SelectedLed;

void ws_start() { 
  FastLED.addLeds<WS2812B, DATA_PIN, RGB>(leds, NUM_LEDS);
  Serial.println(F("<WS_START=DONE>"));
  FastLED.setBrightness(84);
  leds[0] = CRGB::Green;
  FastLED.show();
}

void ws_cmd(uint8_t Setting) {
  //CRGB temp_color_struct;
  switch (Setting) {
    case 0:
      SelectedLed = value_string.toInt();
      Serial.print(F("<WS_SLED="));
      Serial.print(SelectedLed);
      Serial.println(F(">"));
      break;
    case 1:
      leds[SelectedLed]= CHSV(value_string.toInt(),255,255);
      //hsv2rgb_spectrum(CHSV(value_string.toInt(),255,255), temp_color_struct);
      Serial.print(F("<WS_SCOLOR"));Serial.print(SelectedLed); Serial.print(F("=")); Serial.print(leds[SelectedLed].Red); 
      Serial.print(F("><WS_SCOLOR"));Serial.print(SelectedLed); Serial.print(F("=")); Serial.print(leds[SelectedLed].Green); 
      Serial.print(F("><WS_SCOLOR"));Serial.print(SelectedLed); Serial.print(F("=")); Serial.print(leds[SelectedLed].Blue); 
      Serial.println(F(">"));
      break;
    case 2:
      FastLED.show();
      Serial.println(F("<WS_SHOW=DONE>"));
      break;
    case 3:
      FastLED.clear();
      Serial.println(F("<WS_CLEAR=DONE>"));
      break;
    case 4:
      FastLED.setBrightness(value_string.toInt());
      Serial.print(F("<WS_SBRG="));
      Serial.print(value_string.toInt());
      Serial.println(F(">"));
      break;

  }

}

#endif
