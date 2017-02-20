//#################################################################################################
//  MADE BY ElectronicaSul  -  2016-OCT-01
//#################################################################################################
//
//      User Configurations
//      -> use // to disable function
//#################################################################################################

#define ENABLE_BME
#define ENABLE_RTC
#define ENABLE_I2CSCAN
//#define ENABLE_INTERNAL_SERVO     //either this or servo_easer
#define ENABLE_SERVO_EASER        //either this or servo_easer

// USER CONFIGURATION ABOVE ONLY
//#################################################################################################
//  INCLUDES
//#################################################################################################

#include <Wire.h>


//#################################################################################################
// DEFINITIONS
//#################################################################################################
//
//#ifdef ENABLE_SERVO_EASER
//  bool ServoLoopEnabled = false;
//  Servo servo1;
//  Servo servo2;
//  ServoEaser servoEaser1;
//  ServoEaser servoEaser2;
//#endif

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
unsigned long freetimeloop;

//#################################################################################################
// SETUP
//#################################################################################################
void setup() {
  Serial.begin(115200);
  
//  myservo1.attach(7);  // attaches the servo on pin 9 to the servo object
//  myservo2.attach(8);  // attaches the servo on pin 9 to the servo object
  Modules_Data();
  Serial.println(F("<BOOT=DONE>"));
  pinMode(LED_BUILTIN, OUTPUT);
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
#ifdef ENABLE_RTC
  Alarmed();
#endif
#ifdef ENABLE_SERVO_EASER
  EServos_Loop();
#endif
}//func

//#################################################################################################
// REMOTE COMMANDS FUNCTION
//#################################################################################################
void ExecuteCommand() {
//  Serial.print("<LOOPFREETIME=");
//  Serial.print( millis() - freetimeloop );
//  Serial.println(">");
//  freetimeloop = millis();

//  Serial.print(" ( ");
//  Serial.print(id_string);
//  Serial.print(" - ");
//  Serial.print(value_string);
//  Serial.println(" ) ");
  if (id_string == F("ID1"))   ID1_Execute();
  if (id_string == F("LED13")) LED13_Data();
  if (id_string == F("AUTH")) Validate_Data();
  if (id_string == F("MODULES")) Modules_Data();
#ifdef ENABLE_INTERNAL_SERVO
  if (id_string == F("SERVO1")) Servo1_Data();
  if (id_string == F("SERVO2")) Servo2_Data();
  if (id_string == F("SERVO1_ATTACH")) Servo1_Setup(1);
  if (id_string == F("SERVO1_DETACH")) Servo1_Setup(2);
  if (id_string == F("SERVO1_ISATTACHED")) Servo1_Setup(3);
  if (id_string == F("SERVO2_ATTACH")) Servo2_Setup(1);
  if (id_string == F("SERVO2_DETACH")) Servo2_Setup(2);
  if (id_string == F("SERVO2_ISATTACHED")) Servo2_Setup(3);
#endif
#ifdef ENABLE_I2CSCAN
  if (id_string == F("I2C_SCAN")) scan_i2c();
  if (id_string == F("I2CSCAN_TCA")) i2ctca_scanner();
#endif
#ifdef ENABLE_BME
  if (id_string == F("BME_READING")) bme_reading();
  if (id_string == F("BME_CALIB")) bme_calib();
  if (id_string == F("BME_REGS")) bme_regs();
  if (id_string == F("BME_SETUP")) setup_bme();
  if (id_string == F("BME_START")) start_bme();
  if (id_string == F("BME_RESET")) reset_bme();
#endif
  if (id_string == F("TCA_SELECT")) tca_sel_data();
#ifdef ENABLE_RTC
  if (id_string == F("RTC_START")) rtc_start();
  if (content == CMD_GET) {
    if (id_string == F("RTC_VALID")) rtc_get(1);
    if (id_string == F("RTC_RUNNING")) rtc_get(2);
    if (id_string == F("RTC_TEMP")) rtc_get(3);
    if (id_string == F("RTC_DATE")) rtc_get(4);
    if (id_string == F("RTC_TIME")) rtc_get(5);
    if (id_string == F("RTC_AGOFFS")) rtc_get(6);
    if (id_string == F("RTC_DAYWEEK")) rtc_get(7);
    if (id_string == F("RTC_ALARMFLAG")) rtc_get(8);
    if (id_string == F("RTC_GETA1")) rtc_get(9);
    if (id_string == F("RTC_GETA2")) rtc_get(10);
  }
  if (content == CMD_SET) {
    if (id_string == F("RTC_HOUR")) rtc_set(1);
    if (id_string == F("RTC_MINUTE")) rtc_set(2);
    if (id_string == F("RTC_SECOND")) rtc_set(3);
    if (id_string == F("RTC_YEAR")) rtc_set(4);
    if (id_string == F("RTC_MONTH")) rtc_set(5);
    if (id_string == F("RTC_DAY")) rtc_set(6);
  }
#endif
#ifdef ENABLE_SERVO_EASER
  if (id_string == F("ESERVOS_START")) EServos_Start();
  if (id_string == F("ESERVOS_LOOPEN"))  EServos_Setup(5);
  if (id_string == F("ESERVO1_DELAY")) EServos_Setup(1);
  if (id_string == F("ESERVO2_DELAY")) EServos_Setup(2);
  if (id_string == F("ESERVO1_ANGLE")) EServos_Setup(3);
  if (id_string == F("ESERVO2_ANGLE")) EServos_Setup(4);

  if (id_string == F("ESERVO1_GETPOS"))  EServos_Setup(6);
  if (id_string == F("ESERVO1_ISRUN"))  EServos_Setup(7);
  if (id_string == F("ESERVO1_SETFLIP"))  EServos_Setup(8);
  if (id_string == F("ESERVO1_ISFLIP"))  EServos_Setup(9);
  
  if (id_string == F("ESERVO2_GETPOS"))  EServos_Setup(10);
  if (id_string == F("ESERVO2_ISRUN"))  EServos_Setup(11);
  if (id_string == F("ESERVO2_SETFLIP"))  EServos_Setup(12);
  if (id_string == F("ESERVO2_ISFLIP"))  EServos_Setup(13);
#endif

  
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
  if ((content == CMD_SET)&(iscryptvalid)) DEVICE_ID = value_string.toInt();
  Serial.print(F("<ID1="));
  Serial.print(DEVICE_ID);
  Serial.println(F(">"));
}


void LED13_Data() {
  if (content == CMD_SET) {
    if ( value_string == F("ON") )  digitalWrite(LED_BUILTIN, HIGH);
    if ( value_string == F("OFF") ) digitalWrite(LED_BUILTIN, LOW);
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

void Modules_Data(){
#ifdef ENABLE_BME
  Serial.print(F("<ENABLE_BME=>"));
#endif
#ifdef ENABLE_RTC
  Serial.print(F("<ENABLE_RTC=>"));
#endif
#ifdef ENABLE_INTERNAL_SERVO
  Serial.print(F("<ENABLE_INT_SERVO=>"));
#endif
#ifdef ENABLE_SERVO_EASER
  Serial.print(F("<ENABLE_ESERVO=>"));
#endif
#ifdef ENABLE_I2CSCAN
  Serial.print(F("<ENABLE_I2CSCAN=>"));
#endif
  
}


//#################################################################################################
// END OF FILE
//#################################################################################################



