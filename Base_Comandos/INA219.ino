#ifdef ENABLE_INA

#include <Adafruit_INA219.h>
Adafruit_INA219 ina219;

float shuntvoltage = 0;
float busvoltage = 0;
float current_mA = 0;
float loadvoltage = 0;

void ina_start() {
  ina219.begin(); //verificar se tem retorno
  Serial.println(F("<INA_START=DONE>"));
}

void ina_cmd(uint8_t Settings) {
  float shuntvoltage = 0;
  float busvoltage = 0;
  float current_mA = 0;
  float loadvoltage = 0;
  
  shuntvoltage = ina219.getShuntVoltage_mV();
  busvoltage = ina219.getBusVoltage_V();
  current_mA = ina219.getCurrent_mA();
  loadvoltage = busvoltage + (shuntvoltage / 1000);
  
  switch (Settings) {
    case 0: //bvolt
      Serial.print(F("<INA_VBUS=")); Serial.print(busvoltage); Serial.println(F(">"));
      break;
    case 1: //svolt
      Serial.print(F("<INA_VSHUNT=")); Serial.print(shuntvoltage); Serial.println(F(">"));
      break;
    case 2: //lvolt
      Serial.print(F("<INA_VLOAD=")); Serial.print(loadvoltage); Serial.println(F(">"));
      break;
    case 3: //current
      Serial.print(F("<INA_ALOAD=")); Serial.print(current_mA); Serial.println(F(">"));
      break;
  }

  
}




#endif


