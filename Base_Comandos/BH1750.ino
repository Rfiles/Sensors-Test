#ifdef ENABLE_BH1750

#include <BH1750FVI.h>


BH1750FVI myBH1750;

void light_start (){
  Serial.print(F("<LIGHT_START="));
  if (myBH1750.begin()) {
    Serial.println(F("DONE>"));
  }else{
    Serial.println(F("FAIL>"));
  }
}

void light_setup (uint8_t Setting) {
  switch (Setting) {
    case 1://res
      if (value_string == F("CHM")) {
        Serial.println(F("<LIGHT_RES=CHM>"));
        myBH1750.setResolution( BH1750_CONTINUOUS_HIGH_RES_MODE );
        };
      if (value_string == F("CHM2")) {
      Serial.println(F("<LIGHT_RES=CHM2>"));
        myBH1750.setResolution( BH1750_CONTINUOUS_HIGH_RES_MODE_2 );
      };
      if (value_string == F("CLM")) {
        Serial.println(F("<LIGHT_RES=CLM>"));
        myBH1750.setResolution( BH1750_CONTINUOUS_LOW_RES_MODE );
      };
      break;
    case 2://sense
      Serial.print(F("<LIGHT_SENS="));
      myBH1750.setSensitivity(value_string.toFloat());
      Serial.print(value_string.toFloat());
      Serial.println(F(">"));
      break;
    case 3://read
      Serial.print(F("<LIGHT_READ="));
      Serial.print(myBH1750.readLightLevel());
      Serial.println(F(">"));
      break;
  }

  
}







#endif


