#ifdef ENABLE_EEP
#include <extEEPROM.h> 
const uint32_t totalKBytes = 32;         //for read and write test functions
extEEPROM eep(kbits_256, 1, 64, 83);         //device size, number of devices, page size

void eep_start() {
  uint8_t eepStatus = eep.begin(twiClock400kHz);      //go fast!
  Serial.print(F("<EEP_START="));
  Serial.print(eepStatus);
  Serial.println(F(">"));
  
}

void eep_cmd( byte Setting ) {
    String size_s;
    String addr_s;
    String data_s;
    long unsigned int d_size;
    long unsigned int d_size_c;
    long unsigned int addr;
    char data_a[32];
    int Item_1;
    int Item_2;
    int Item_3;
//            aa,ss,ddddd
//    <EEP_WR=10,14,(...)>
//    <EEP_RD=10,14>
//    <EEP_ER=10,14>

  unsigned long cmdtime;
  switch (Setting) {
    case 0: //write
      cmdtime = millis();
      Item_1 = value_string.indexOf("=");
      Item_2 = value_string.indexOf(",", Item_1 + 1);
      Item_3 = value_string.indexOf(",", Item_2 + 1);
      addr_s = value_string.substring(Item_1 + 1, Item_2);
      size_s = value_string.substring(Item_2 + 1, Item_3);
      data_s = value_string.substring(Item_3 + 1);
      addr = addr_s.toInt();
      d_size = size_s.toInt();
      data_s.toCharArray(data_a, d_size+1, 0);
      d_size_c = data_s.length();
      
//      Serial.println(value_string);
//      Serial.println(addr);
//      Serial.println(d_size);
//      Serial.println(d_size_c);
//      Serial.print("'");
//      Serial.print(data_s);
//      Serial.println("'");
//      Serial.print("'");
//      Item_1 = 0;
//      while ( Item_1 < d_size+1 ) {
//        if ( data_a[Item_1] == 0 ) break;
//        Serial.print(data_a[Item_1]);
//        Item_1++;
//      }
//      Serial.println("'");
//      Serial.println(millis() - cmdtime);
      
      if ( d_size > 0 ) {
//        Serial.println(eep.write( addr, data_a ,d_size+1 ));
        eep.write( addr, data_a ,d_size+1 );
      }
      Serial.print(F("<EEP_WR=DONE>"));
      break;
    case 1: //read
//      cmdtime = millis();
      Item_1 = value_string.indexOf("=");
      Item_2 = value_string.indexOf(",", Item_1 + 1);
      addr_s = value_string.substring(Item_1 + 1, Item_2);
      size_s = value_string.substring(Item_2 + 1);
      addr = addr_s.toInt();
      d_size = size_s.toInt();
     
//      Serial.println(value_string);
//      Serial.println(addr);
//      Serial.println(d_size);

      if ( d_size > 0 ) {
        //Serial.println(eep.read( addr, data_a ,d_size+1 ));
        eep.read( addr, data_a ,d_size+1 );
      }

      Serial.print(F("<EEP_DT="));
      Item_1 = 0;
      while ( Item_1 < d_size+1 ) {
        if ( data_a[Item_1] == 0 ) break;
        Serial.print(data_a[Item_1]);
        Item_1++;
      }
      Serial.println(F(">"));
//      Serial.println(millis() - cmdtime);
      break;

    case 2: //erase with FF
      break;

   
  }
 
}





#endif
