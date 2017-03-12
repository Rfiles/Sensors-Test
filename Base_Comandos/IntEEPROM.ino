#ifdef ENABLE_IEP

//#include <EEPROM.h>
#include <EEPROMex.h>



void iep_start(){

  // This must maintain the same order
  mcu_data.mcu_vars.mcu_id1  = EEPROM.getAddress(sizeof(int));
  mcu_data.mcu_vars.AuthPass = EEPROM.getAddress(sizeof(int));
  mcu_data.mcu_vars.AuthLock = EEPROM.getAddress(sizeof(int));
  
  DEVICE_ID = EEPROM.readInt( mcu_data.mcu_vars.mcu_id1 );
  Serial.println(F("<IEP_START=DONE>"));
  ID1_Execute();

}


void iep_cmd( byte Setting ) {

  // <IEP_WR=@,>
  int tempaddr;
    
  switch (Setting){
    case 0://write to var
      EEPROM.writeInt( mcu_data.mcu_vars.mcu_id1, value_string.toInt() );
      Serial.print(F("<IEP_WR="));
      Serial.print(mcu_data.mcu_vars.mcu_id1);
      Serial.print(F(","));
      Serial.print(value_string.toInt());
      Serial.println(F(">"));
      break;
    case 1://read from var
      DEVICE_ID = EEPROM.readInt( mcu_data.mcu_vars.mcu_id1 );
      Serial.print(F("<IEP_RD="));
      Serial.print(mcu_data.mcu_vars.mcu_id1);
      Serial.print(F(","));
      Serial.print(DEVICE_ID);
      Serial.println(F(">"));
      break;
    case 2://erase
      break;

  }

  
}

#endif
