#ifdef ENABLE_RGB

#include "Adafruit_TCS34725.h"

Adafruit_TCS34725 tcs = Adafruit_TCS34725(TCS34725_INTEGRATIONTIME_2_4MS, TCS34725_GAIN_1X);

void rgb_start(void) {

  if (tcs.begin()) {
    Serial.println(F("<RGB_START=TRUE>"));
    pinMode(4, OUTPUT);
    digitalWrite(4, HIGH); 
  } else {
    Serial.println(F("<RGB_START=FAIL>"));
  }
}

void rgb_cmd (uint8_t setting) {
  uint16_t r, g, b, c, colorTemp, lux;
  tcs.getRawData(&r, &g, &b, &c);
  colorTemp = tcs.calculateColorTemperature(r, g, b);
  lux = tcs.calculateLux(r, g, b);
  
  switch (setting) {
    case 0://read1
      Serial.print(F("<RGB_R=")); Serial.print(r, DEC);
      Serial.print(F("><RGB_G=")); Serial.print(g, DEC);
      Serial.print(F("><RGB_B=")); Serial.print(b, DEC);
      Serial.print(F("><RGB_C=")); Serial.print(c, DEC); 
      Serial.println(F(">"));
      break;
    case 1://led
      if (value_string == F("ON")) {
        digitalWrite(4, LOW); 
        Serial.println(F("<RGB_LED=ON>"));
      }else{
        digitalWrite(4, HIGH); 
        Serial.println(F("<RGB_LED=OFF>"));
      }
      break;
    case 2://it
      tcs.setIntegrationTime(value_string.toInt());
      Serial.print(F("<RGB_IT=SET>"));
      break;
    case 3://gain
      Serial.print(F("<RGB_TEMP=SET>"));
      tcs.setGain(value_string.toInt());
      break;
    case 4://read2
      Serial.print(F("<RGB_TEMP=")); Serial.print(colorTemp, DEC);
      Serial.print(F("><RGB_LUX=")); Serial.print(lux, DEC); 
      Serial.println(F(">"));
      break;
    case 5://pwr
      if (value_string == F("ON")) {
        tcs.enable();
        Serial.println(F("<RGB_PWR=ON>"));
      }else{
       /// tcs.disable(); //disabled in adafruit library. dont know why...
        Serial.println(F("<RGB_PWR=OFF>"));
      }
      break;
    case 6://id
      Serial.print(F("<RGB_ID=")); 
      Serial.print(tcs.read8(TCS34725_ID) ,DEC); 
      Serial.println(F(">"));
      break;
  }
  
}





#endif


