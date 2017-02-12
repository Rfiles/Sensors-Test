//#################################################################################################
//  MADE BY ElectronicaSul  -  2016-OCT-01
//#################################################################################################
//
//      User Configurations
//      -> use // to disable function
//#################################################################################################

//#define ENABLE_RTC


// USER CONFIGURATION ABOVE ONLY
//#################################################################################################
//  INCLUDES
//#################################################################################################

#include <Wire.h>


//#################################################################################################
// DEFINITIONS
//#################################################################################################




String    id_string;
String    value_string;
uint8_t   parse_stat; // 0 no data - 1 command started - 2 command ended, not executed
uint8_t   content;    // 0 no content - 1 write - 2 read
uint8_t   isData;
char      byterx;
#define CMD_SET 1
#define CMD_GET 2
int DEVICE_ID = 1234;
int checkkey, iscryptvalid, keytrylock=3, randomkey;

//#################################################################################################
// SETUP
//#################################################################################################
void setup() {
  Serial.begin(115200);
  
//  myservo1.attach(7);  // attaches the servo on pin 9 to the servo object
//  myservo2.attach(8);  // attaches the servo on pin 9 to the servo object
  
  Serial.println(F("<BOOT=DONE>"));
  pinMode(LED_BUILTIN, OUTPUT);
//  setup_bme();
//  bme_reading();
}

//#################################################################################################
// LOOP
//#################################################################################################
void loop() {

  if (Serial.available()) {
    byterx = Serial.read();

    switch (byterx) {
      case '<':
        parse_stat = 1;   //command start
        isData = 0;
        break;
      case '=':
        content = 1;  // write
        isData = 0;
        break;
      case '?':
        content = 2;  // read
        isData = 0;
        break;
      case '>':
        if ( parse_stat == 1 ) {
          parse_stat = 2;   // command end; execute
        } else {
          ResetStrings();   // command didnt start; abort
        }
        isData = 0;
        break;
      case 10:    //ignore
        break;
      case 13:    //ignore
        break;
      case 0:
        ResetStrings();
        break;
      default:
        isData = 1;   //its data
        break;
    }//switch

    if ((parse_stat == 1) && (content == 0) && (isData == 1)) id_string += byterx;   // its ID
    if ((parse_stat == 1) && (content > 0) && (isData == 1)) value_string += byterx; // its Value
    if ((parse_stat == 2) && (content == 0)) ResetStrings();                         // bad command (sem read ou write)
    if ((parse_stat == 2) && (content > 0) && (isData == 0)) ExecuteCommand();       // command done

  }//if


}//func

//#################################################################################################
// REMOTE COMMANDS FUNCTION
//#################################################################################################
void ExecuteCommand() {
  if (id_string == "ID1" )   ID1_Execute();
  if (id_string == "LED13" ) LED13_Data();
  if (id_string == "AUTH" ) Validate_Data();
  if (id_string == "SERVO1") Servo1_Data();
  if (id_string == "SERVO2") Servo2_Data();
  if (id_string == "SERVO1_ATTACH") Servo1_Setup(1);
  if (id_string == "SERVO1_DETACH") Servo1_Setup(2);
  if (id_string == "SERVO1_ISATTACHED") Servo1_Setup(3);
  if (id_string == "SERVO2_ATTACH") Servo2_Setup(1);
  if (id_string == "SERVO2_DETACH") Servo2_Setup(2);
  if (id_string == "SERVO2_ISATTACHED") Servo2_Setup(3);
  if (id_string == "I2C_SCAN") scan_i2c();
  if (id_string == "I2CSCAN_TCA") i2ctca_scanner();
  if (id_string == "BME_READING") bme_reading();
  if (id_string == "BME_CALIB") bme_calib();
  if (id_string == "BME_REGS") bme_regs();
  if (id_string == "BME_SETUP") setup_bme();
  if (id_string == "BME_START") start_bme();
  if (id_string == "BME_RESET") reset_bme();
  if (id_string == "TCA_SELECT") tca_sel_data();

  ResetStrings();
}//func

void ResetStrings() {
  parse_stat = 0;
  content = 0;
  value_string = "";
  id_string = "";
  isData = 0;
}

//#################################################################################################
// LIBRARIES FUNCTIONS
//#################################################################################################


void ID1_Execute(){
  if (iscryptvalid) if (content == CMD_SET) DEVICE_ID = value_string.toInt();
  Serial.print(F("<ID1="));
  Serial.print(DEVICE_ID);
  Serial.println(F(">"));
}


void LED13_Data() {
  if (content == CMD_SET) {
    if ( value_string == "ON" )  digitalWrite(LED_BUILTIN, HIGH);
    if ( value_string == "OFF" ) digitalWrite(LED_BUILTIN, LOW);
  }

  if (digitalRead(LED_BUILTIN)) {
    Serial.println(F("<LED13=ON>"));
  } else {
    Serial.println(F("<LED13=OFF>"));
  }
}

void tca_sel_data() {
  if (content == CMD_SET) {
    tcaselect(value_string.toInt());
  }
}



//#################################################################################################
// END OF FILE
//#################################################################################################



