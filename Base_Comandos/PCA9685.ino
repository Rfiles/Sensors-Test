#ifdef ENABLE_PCA

/* Include the HCPCA9685 library */
#include "HCPCA9685.h"

/* I2C slave address for the device/module. For the HCMODU0097 the default I2C address
   is 0x40 */
#define  I2CAdd 0x40

/* Create an instance of the library */
HCPCA9685 HCPCA9685(I2CAdd);

void pca_start(){
  /* Initialise the library and set it to 'servo mode' */ 
  Serial.print(F("<PCA_START="));
  if ( value_string == F("SERVO") )  {
    HCPCA9685.Init(SERVO_MODE);
    Serial.print(F("SERVO"));
  }else{
    HCPCA9685.Init(DEFAULT_MODE);
    Serial.print(F("ORIG"));
  }
  Serial.println(F(">"));
  /* Wake the device up */
  HCPCA9685.Sleep(false);
  HCPCA9685.Enable_AllCall(false);
}



void pca_cmd( byte Setting ) {
  String SubString_1;
  String SubString_2;
  int SubAddr_1;
  int SubAddr_2;
  int Item_1;
  int Item_2;
  unsigned int temp_toInt;

  switch (Setting){
    case 0: //set pos
      SubAddr_1 = value_string.indexOf("=");
      SubAddr_2 = value_string.indexOf(",", SubAddr_1 + 1);
      SubString_1 = value_string.substring(SubAddr_1 + 1, SubAddr_2);
      SubString_2 = value_string.substring(SubAddr_2 + 1);
      Item_1 = SubString_1.toInt();
      Item_2 = SubString_2.toInt();
      HCPCA9685.Servo(Item_1, Item_2); //channel, angle
      Serial.print(F("<PCA_SERVO="));
      Serial.print(Item_1);
      Serial.print(F(","));
      Serial.print(Item_2);
      Serial.println(F(">"));
      break;
    case 1://write reg
      SubAddr_1 = value_string.indexOf("=");
      SubAddr_2 = value_string.indexOf(",", SubAddr_1 + 1);
      SubString_1 = value_string.substring(SubAddr_1 + 1, SubAddr_2);
      SubString_2 = value_string.substring(SubAddr_2 + 1);
      Item_1 = SubString_1.toInt();
      Item_2 = SubString_2.toInt();
      HCPCA9685.I2CWriteReg(Item_1, Item_2);//reg, data
      Serial.print(F("<PCA_WR="));
      Serial.print(Item_1);
      Serial.print(F(","));
      Serial.print(Item_2);
      Serial.println(F(">"));
      break;
    case 2://read reg
      Serial.print(F("<PCA_RD="));
      Serial.print(HCPCA9685.I2CReadReg(value_string.toInt()));
      Serial.println(F(">"));
      break;
    case 3://sleep
      Serial.print(F("<PCA_SLP="));
      if ( value_string == F("ON") )  {
        HCPCA9685.Sleep(true);
        Serial.print(F("ON"));
      }else{
        HCPCA9685.Sleep(false);
        Serial.print(F("OFF"));
      }
      Serial.println(F(">"));
      break;
    case 4://set period
      temp_toInt = value_string.toInt();
      HCPCA9685.SetPeriodFreq(temp_toInt);
      Serial.print(F("<PCA_PF="));
      Serial.print(temp_toInt);
      Serial.println(F(">"));
      break;
    case 5://set prescaler
      temp_toInt = value_string.toInt();
      HCPCA9685.SetPreScaller(temp_toInt);
      Serial.print(F("<PCA_PS="));
      Serial.print(temp_toInt);
      Serial.println(F(">"));
      break;
    case 6://set Output when not Enable
      temp_toInt = value_string.toInt();
      HCPCA9685.OutputNotEnableState(temp_toInt);
      Serial.print(F("<PCA_ONE="));
      Serial.print(temp_toInt);
      Serial.println(F(">"));
      break;
    case 7://set output drivers
      temp_toInt = value_string.toInt();
      HCPCA9685.OutputDrivers(temp_toInt);
      Serial.print(F("<PCA_OD="));
      Serial.print(temp_toInt);
      Serial.println(F(">"));
      break;
    case 8: //on time
      SubAddr_1 = value_string.indexOf("=");
      SubAddr_2 = value_string.indexOf(",", SubAddr_1 + 1);
      SubString_1 = value_string.substring(SubAddr_1 + 1, SubAddr_2);
      SubString_2 = value_string.substring(SubAddr_2 + 1);
      Item_1 = SubString_1.toInt();
      Item_2 = SubString_2.toInt();
      HCPCA9685.OutputOnTime(Item_1, Item_2); //channel, angle
      Serial.print(F("<PCA_ONT="));
      Serial.print(Item_1);
      Serial.print(F(","));
      Serial.print(Item_2);
      Serial.println(F(">"));
      break;
    case 9: //off time
      SubAddr_1 = value_string.indexOf("=");
      SubAddr_2 = value_string.indexOf(",", SubAddr_1 + 1);
      SubString_1 = value_string.substring(SubAddr_1 + 1, SubAddr_2);
      SubString_2 = value_string.substring(SubAddr_2 + 1);
      Item_1 = SubString_1.toInt();
      Item_2 = SubString_2.toInt();
      HCPCA9685.OutputOffTime(Item_1, Item_2); //channel, angle
      Serial.print(F("<PCA_OFT="));
      Serial.print(Item_1);
      Serial.print(F(","));
      Serial.print(Item_2);
      Serial.println(F(">"));
      break;
  }
  
}



#endif


