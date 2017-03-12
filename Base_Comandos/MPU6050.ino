#ifdef ENABLE_MPU

#include "MPU6050.h"

MPU6050 accelgyro;
int16_t ax, ay, az;
int16_t gx, gy, gz;
int16_t accelgyro_temp;

void mpu_start () {
  accelgyro.initialize();
  Serial.print(F("<MPU_START="));
  Serial.print(accelgyro.testConnection());
  Serial.println(F(">"));
}

void mpu_cmd (uint8_t Setting) {
  switch (Setting) {
    case 0://get acelgyro
      accelgyro.getMotion6(&ax, &ay, &az, &gx, &gy, &gz);
      Serial.print(F("<MPU_AG=")); Serial.print(ax);
      Serial.print(F(",")); Serial.print(ay);
      Serial.print(F(",")); Serial.print(az);
      Serial.print(F(",")); Serial.print(gx);
      Serial.print(F(",")); Serial.print(gy);
      Serial.print(F(",")); Serial.print(gz); 
      Serial.println(F(">"));
      break;
    case 1://get temp
      accelgyro_temp = accelgyro.getTemperature()/340 + 36.53;
      Serial.print(F("<MPU_T=")); Serial.print(accelgyro_temp); Serial.println(F(">"));
      break;
  }
}


#endif
