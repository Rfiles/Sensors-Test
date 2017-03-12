#ifdef ENABLE_MAG

#include "HMC5883L.h"

HMC5883L mag;
int16_t mx, my, mz;


void mag_start () {
  mag.initialize();
  Serial.print(F("<MAG_START="));
  Serial.print(mag.testConnection());
  Serial.println(F(">"));
}


void mag_cmd (uint8_t Setting) {
  float heading;
  switch (Setting) {
    case 0:
      mag.getHeading(&mx, &my, &mz);
      heading = atan2(my, mx);
      if(heading < 0) heading += 2 * M_PI;
      Serial.print(F("<MAG_DATA="));
      Serial.print(F(",")); Serial.print(mx);
      Serial.print(F(",")); Serial.print(my);
      Serial.print(F(",")); Serial.print(mz);
      Serial.println(F(">"));
      break;
    case 1:
      Serial.print(F("<MAG_HEAD=")); 
      Serial.print(heading * 180/M_PI); 
      Serial.println(F(">"));
      break;
  }
}



#endif
