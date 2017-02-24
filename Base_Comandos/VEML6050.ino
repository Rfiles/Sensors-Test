#ifdef ENABLE_UV

#include "Adafruit_VEML6070.h"

Adafruit_VEML6070 uv = Adafruit_VEML6070();

void uv_start(){
  uv.begin(VEML6070_1_T);
  Serial.println(F("<UV_START=TRUE><UV_ITIME=1>"));
}

void uv_read(){
  Serial.print("<UV_READ=");
  Serial.print(uv.readUV());
  Serial.println(">");
}

void uv_set_it(){
  uint8_t temp = value_string.toInt();
  if (temp < 4) {
    uv.begin(temp);
    Serial.print("<UV_ITIME=");
    Serial.print(temp);
    Serial.println(">");
  }
}
#endif
