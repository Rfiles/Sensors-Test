//#################################################################################################
//  MADE BY ElectronicaSul  -  2016-OCT-01
//#################################################################################################
//
//      User Configurations
//      -> use // to disable function
//#################################################################################################

//         total    |   single
//type  rom     ram | rom    ram
//base  6888  , 402 | 0    , 0
//bme   14948 , 493 | 8060 , 91
//scan  7630  , 402 | 742  , 0
//ease  13388 , 593 | 6500 , 191
//ligh  11014 , 459 | 4126 , 57
//ftr   7226  , 423 | 338  , 21
//rgb   9084  , 483 |
//ads               | 936  , 37


#define ENABLE_BME
#define ENABLE_RTC
#define ENABLE_I2CSCAN
//#define ENABLE_SERVO_EASER        //either this or internal_servo
//#define ENABLE_BH1750
#define ENABLE_FREETIME_REPORT
//#define ENABLE_UV
//#define ENABLE_RGB
#define ENABLE_MLX
//#define ENABLE_ADS
#define ENABLE_INT_TEMP
#define ENABLE_LEDRGB
#define ENABLE_EIO
#define ENABLE_INA

//#define ENABLE_INTERNAL_SERVO     //either this or servo_easer

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
unsigned long freetimeloop;
bool enable_ftr;

#ifdef ENABLE_EIO
  volatile boolean awakenByInterrupt = false;
#endif

//#################################################################################################
// SETUP
//#################################################################################################
void setup() {
  Serial.begin(115200);
  Wire.begin();
//  myservo1.attach(7);  // attaches the servo on pin 9 to the servo object
//  myservo2.attach(8);  // attaches the servo on pin 9 to the servo object
  Modules_Data();
  Serial.print(F("<MCU_CD="));
  Serial.print(__DATE__);
  Serial.print(F("|"));
  Serial.print(__TIME__);
  Serial.println(F("><BOOT=DONE>"));
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
#ifdef ENABLE_EIO
  if(awakenByInterrupt) handleInterrupt();
#endif
}//func

//#################################################################################################
// REMOTE COMMANDS FUNCTION
//#################################################################################################
void ExecuteCommand() {
#ifdef ENABLE_FREETIME_REPORT
  if ( iscryptvalid & enable_ftr ) {
    Serial.print("<LOOPFREETIME=");
    Serial.print( millis() - freetimeloop );
    Serial.println(">");
    freetimeloop = millis();
  }
#endif
  if (content == CMD_SET) {
    if (id_string == F("TCA_SEL")) tca_sel_data();
  }
#ifdef ENABLE_INTERNAL_SERVO
  if (content == CMD_SET) {
  if (id_string == F("SERVO1"))            Servo1_Data();
  if (id_string == F("SERVO2"))            Servo2_Data();
  if (id_string == F("SERVO1_ATTACH"))     Servo1_Setup(1);
  if (id_string == F("SERVO1_DETACH"))     Servo1_Setup(2);
  if (id_string == F("SERVO2_ATTACH"))     Servo2_Setup(1);
  if (id_string == F("SERVO2_DETACH"))     Servo2_Setup(2);
  }
  if (content == CMD_GET) {
    if (id_string == F("SERVO2_ISATTACHED")) Servo2_Setup(3);
    if (id_string == F("SERVO1_ISATTACHED")) Servo1_Setup(3);
  }
#endif
#ifdef ENABLE_I2CSCAN
  if (content == CMD_GET) {
    if (id_string == F("I2C_SCAN"))    scan_i2c();
    if (id_string == F("I2CSCAN_TCA")) i2ctca_scanner();
  }
#endif
#ifdef ENABLE_BME
  if (content == CMD_SET) {
    if (id_string == F("BME_SETUP"))   setup_bme();
    if (id_string == F("BME_START"))   start_bme();
    if (id_string == F("BME_RESET"))   reset_bme();
  }
  if (content == CMD_GET) {
    if (id_string == F("BME_READING")) bme_reading();
    if (id_string == F("BME_CALIB"))   bme_calib();
    if (id_string == F("BME_REGS"))    bme_regs();
  }
#endif
#ifdef ENABLE_RTC
  if (content == CMD_GET) {
    if (id_string == F("RTC_VALID"))     rtc_get(1);
    if (id_string == F("RTC_RUNNING"))   rtc_get(2);
    if (id_string == F("RTC_TEMP"))      rtc_get(3);
    if (id_string == F("RTC_DATE"))      rtc_get(4);
    if (id_string == F("RTC_TIME"))      rtc_get(5);
    if (id_string == F("RTC_AGOFFS"))    rtc_get(6);
    if (id_string == F("RTC_DAYWEEK"))   rtc_get(7);
    if (id_string == F("RTC_ALARMFLAG")) rtc_get(8);
    if (id_string == F("RTC_GETA1"))     rtc_get(9);
    if (id_string == F("RTC_GETA2"))     rtc_get(10);
  }
  if (content == CMD_SET) {
    if (id_string == F("RTC_START"))   rtc_start();
    if (id_string == F("RTC_HOUR"))    rtc_set(1);
    if (id_string == F("RTC_MINUTE"))  rtc_set(2);
    if (id_string == F("RTC_SECOND"))  rtc_set(3);
    if (id_string == F("RTC_YEAR"))    rtc_set(4);
    if (id_string == F("RTC_MONTH"))   rtc_set(5);
    if (id_string == F("RTC_DAY"))     rtc_set(6);
    if (id_string == F("RTC_32K"))     rtc_set(7);
    if (id_string == F("RTC_CF"))      rtc_set(8);
    if (id_string == F("RTC_SQWMODE")) rtc_set(9);
  }
#endif
#ifdef ENABLE_SERVO_EASER
  if (content == CMD_SET) {
    if (id_string == F("ESERVOS_START"))  EServos_Start();
    if (id_string == F("ESERVOS_LOOPEN")) EServos_Setup(5);
    if (id_string == F("ESERVO1_DELAY"))  EServos_Setup(1);
    if (id_string == F("ESERVO2_DELAY"))  EServos_Setup(2);
    if (id_string == F("ESERVO1_ANGLE"))  EServos_Setup(3);
    if (id_string == F("ESERVO2_ANGLE"))  EServos_Setup(4);
    if (id_string == F("ESERVO1_SETFLIP")) EServos_Setup(8);
    if (id_string == F("ESERVO2_SETFLIP")) EServos_Setup(12);
  }
  if (content == CMD_GET) {
    if (id_string == F("ESERVO1_GETPOS"))  EServos_Setup(6);
    if (id_string == F("ESERVO1_ISRUN"))   EServos_Setup(7);
    if (id_string == F("ESERVO1_SETFLIP")) EServos_Setup(8);
    if (id_string == F("ESERVO1_ISFLIP"))  EServos_Setup(9);
    if (id_string == F("ESERVO2_GETPOS"))  EServos_Setup(10);
    if (id_string == F("ESERVO2_ISRUN"))   EServos_Setup(11);
    if (id_string == F("ESERVO2_SETFLIP")) EServos_Setup(12);
    if (id_string == F("ESERVO2_ISFLIP"))  EServos_Setup(13);
  }
#endif
#ifdef ENABLE_BH1750
  if (content == CMD_SET) {
    if (id_string == F("LIGHT_START")) light_start();
    if (id_string == F("LIGHT_RES"))   light_setup(1);
    if (id_string == F("LIGHT_SENS"))  light_setup(2);
  }
  if (content == CMD_GET) {
    if (id_string == F("LIGHT_READ"))  light_setup(3);
  }
#endif
#ifdef ENABLE_UV
  if (content == CMD_SET) {
    if (id_string == F("UV_START")) uv_start();
    if (id_string == F("UV_SETIT")) uv_set_it();
  }
  if (content == CMD_GET) {
    if (id_string == F("UV_READ"))  uv_read();
  }
#endif
#ifdef ENABLE_RGB
  if (content == CMD_SET) {
    if (id_string == F("RGB_START"))  rgb_start();
    if (id_string == F("RGB_LED"))    rgb_cmd(1);
    if (id_string == F("RGB_IT"))     rgb_cmd(2);
    if (id_string == F("RGB_GAIN"))   rgb_cmd(3);
    if (id_string == F("RGB_PWR"))    rgb_cmd(5);
  }
  if (content == CMD_GET) {
    if (id_string == F("RGB_READ_1")) rgb_cmd(0);
    if (id_string == F("RGB_READ_2")) rgb_cmd(4);
    if (id_string == F("RGB_ID"))     rgb_cmd(6);
  }
#endif
#ifdef ENABLE_MLX
  if (content == CMD_SET) {
    if (id_string == F("MLX_START")) mlx_start();
  }
  if (content == CMD_GET) {
    if (id_string == F("MLX_AMB"))   mlx_cmd(0);
    if (id_string == F("MLX_OBJ"))   mlx_cmd(1);
  }
#endif
#ifdef ENABLE_ADS
  if (content == CMD_SET) {
    if (id_string == F("ADS_START")) ads_start();
  }
  if (content == CMD_GET) {
    if (id_string == F("ADS_READS")) ads_read();
  }
#endif
#ifdef ENABLE_INT_TEMP
  if (content == CMD_GET) {
    if (id_string == F("ARDU_TEMP")) Ardu_TEMP();
  }
#endif
#ifdef ENABLE_LEDRGB
  if (content == CMD_SET) {
    if (id_string == F("WS_START"))  ws_start();
    if (id_string == F("WS_SLED"))   ws_cmd(0);
    if (id_string == F("WS_SCOLOR")) ws_cmd(1);
    if (id_string == F("WS_SHOW"))   ws_cmd(2);
    if (id_string == F("WS_CLEAR"))  ws_cmd(3);
    if (id_string == F("WS_SBRG"))   ws_cmd(4);
  }
#endif
#ifdef ENABLE_INA
  if (content == CMD_SET) {
    if (id_string == F("INA_START"))  ina_start();
  }
  if (content == CMD_GET) {
    if (id_string == F("INA_VBUS"))   ina_cmd(0);
    if (id_string == F("INA_VSHUNT")) ina_cmd(1);
    if (id_string == F("INA_VLOAD"))  ina_cmd(2);
    if (id_string == F("INA_ALOAD"))  ina_cmd(3);
  }
#endif
#ifdef ENABLE_FREETIME_REPORT
  if (content == CMD_GET) {
    if (id_string == F("FTR")) FreeTime_Data();
  }
#endif
#ifdef ENABLE_EIO
  if (content == CMD_SET) {
    if (id_string == F("EIO_START")) eio_start();
    if (id_string == F("EIO_PM"))    eio_cmd(0);
    if (id_string == F("EIO_DW"))    eio_cmd(1);
    if (id_string == F("EIO_PU"))    eio_cmd(3);
    if (id_string == F("EIO_WALL"))  eio_cmd(5);
    if (id_string == F("EIO_INT"))   eio_cmd(6);
    if (id_string == F("EIO_SPIN"))  eio_cmd(7);
  }
  if (content == CMD_GET) {
    if (id_string == F("EIO_DR"))    eio_cmd(2);
    if (id_string == F("EIO_RALL"))  eio_cmd(4);
  }
#endif
  // get or set handled by func
  if (id_string == F("ID1"))     ID1_Execute();
  if (id_string == F("LED13"))   LED13_Data();
  if (id_string == F("AUTH"))    Validate_Data();
  if (content == CMD_GET) {
    if (id_string == F("MODULES")) Modules_Data();
    if (id_string == F("PING"))    Serial.println(F("<PING=PONG>"));
  }
  
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

#ifdef ENABLE_FREETIME_REPORT  
void FreeTime_Data() {
  if (content == CMD_SET) {
    if ( value_string == F("ON") ) {
      enable_ftr = true;
      Serial.println(F("<FTR=ON>"));
    }
    if ( value_string == F("OFF") ) {
      enable_ftr = false;
      Serial.println(F("<FTR=OFF>"));
    }
  }
}
#endif

#ifdef ENABLE_INT_TEMP
void Ardu_TEMP() {
  unsigned int wADC;

  // The internal temperature has to be used
  // with the internal reference of 1.1V.
  // Channel 8 can not be selected with
  // the analogRead function yet.

  // Set the internal reference and mux.
  ADMUX = (_BV(REFS1) | _BV(REFS0) | _BV(MUX3));
  ADCSRA |= _BV(ADEN);  // enable the ADC

  delay(20);            // wait for voltages to become stable.

  ADCSRA |= _BV(ADSC);  // Start the ADC

  // Detect end-of-conversion
  while (bit_is_set(ADCSRA,ADSC));

  // Reading register "ADCW" takes care of how to read ADCL and ADCH.
  wADC = ADCW;

  // The offset of 324.31 could be wrong. It is just an indication.

  // Temperature is in degrees Celsius.
  Serial.print(F("<ARDU_TEMP="));
  Serial.print((wADC - 324.31 ) / 1.22);
  Serial.println(F(">"));
}
#endif

void tca_sel_data() {
  if (content == CMD_SET) {
    if (value_string.toInt() < 8) {
      tcaselect(value_string.toInt());
      Serial.print(F("<TCA_SEL="));
      Serial.print(value_string.toInt());
      Serial.println(F(">"));
    }
  }
}

void Modules_Data(){
#ifdef ENABLE_BME
  Serial.print(F("<ENABLE=BME>"));
#endif
#ifdef ENABLE_RTC
  Serial.print(F("<ENABLE=RTC>"));
#endif
#ifdef ENABLE_INTERNAL_SERVO
  Serial.print(F("<ENABLE=INT_SERVO>"));
#endif
#ifdef ENABLE_SERVO_EASER
  Serial.print(F("<ENABLE=ESERVO>"));
#endif
#ifdef ENABLE_I2CSCAN
  Serial.print(F("<ENABLE=I2CSCAN>"));
#endif
#ifdef ENABLE_BH1750
  Serial.print(F("<ENABLE=BH1750>"));
#endif
#ifdef ENABLE_UV
  Serial.print(F("<ENABLE=UV>"));
#endif
#ifdef ENABLE_RGB
  Serial.print(F("<ENABLE=RGB>"));
#endif
#ifdef ENABLE_MLX
  Serial.print(F("<ENABLE=MLX>"));
#endif
#ifdef ENABLE_ADS
  Serial.print(F("<ENABLE=ADS>"));
#endif
#ifdef ENABLE_INT_TEMP
  Serial.print(F("<ENABLE=ATEMP>"));
#endif
#ifdef ENABLE_LEDRGB
  Serial.print(F("<ENABLE=WS>"));
#endif
#ifdef ENABLE_EIO
  Serial.print(F("<ENABLE=EIO>"));
#endif
#ifdef ENABLE_INA
  Serial.print(F("<ENABLE=INA>"));
#endif

  
}


//#################################################################################################
// END OF FILE
//#################################################################################################



