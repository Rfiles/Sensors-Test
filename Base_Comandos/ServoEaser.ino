#ifdef ENABLE_SERVO_EASER

#include <Servo.h>
#include "ServoEaser.h"

const int servo1Pin = 7;
const int servo2Pin = 8;

bool ServoLoopEnabled = false;
bool ServoLoopArrived1 = false;
bool ServoLoopArrived2 = false;
int  Servo1Duration = 0;
int  Servo2Duration = 0;


int servoFrameMillis = 20;  // minimum time between servo updates

Servo servo1;
Servo servo2;
ServoEaser servoEaser1;
ServoEaser servoEaser2;

unsigned long lastMillis;

void EServos_Loop() {
  if (ServoLoopEnabled) {
    servoEaser1.update();
    servoEaser2.update();
    if (ServoLoopArrived1) {
      if(servoEaser1.hasArrived()) {
        Serial.print("<ESERVO1_ARR=TRUE>");
        ServoLoopArrived1 = false;
      }
    }
    if (ServoLoopArrived2) {
      if(servoEaser2.hasArrived()) {
        Serial.print("<ESERVO2_ARR=TRUE>");
        ServoLoopArrived2 = false;
      }
    }
  }
}

void EServos_Start () {
  servo1.attach( servo1Pin );
  servo2.attach( servo2Pin );
  servoEaser1.begin( servo1, servoFrameMillis);
  servoEaser1.useMicroseconds( true );  // fine-control mode
  servoEaser2.begin( servo2, servoFrameMillis);
  servoEaser2.useMicroseconds( true );  // fine-control mode
  ServoLoopEnabled = true;
  Serial.println(F("<ESERVOS_START=TRUE>"));
}

void EServos_Setup ( uint8_t setting ) {
  switch (setting) {
    case 1:
      Servo1Duration = value_string.toInt();
      Serial.print(F("<ESERVO1_DELAY="));
      Serial.print(Servo1Duration);
      Serial.println(F(">"));
      break;
    case 2:
      Servo2Duration = value_string.toInt();
      Serial.print(F("<ESERVO2_DELAY="));
      Serial.print(Servo2Duration);
      Serial.println(F(">"));
      break;
    case 3:
      servoEaser1.easeTo( value_string.toInt(), Servo1Duration );
      ServoLoopArrived1 = true;
      Serial.print(F("<ESERVO1_GOTO="));
      Serial.print(value_string.toInt());
      Serial.println(F(">"));
      break;
    case 4:
      servoEaser2.easeTo( value_string.toInt(), Servo2Duration );
      ServoLoopArrived2 = true;
      Serial.print(F("<ESERVO2_GOTO="));
      Serial.print(value_string.toInt());
      Serial.println(F(">"));
      break;
    case 5:
      Serial.print(F("<ESERVOS_LOOPEN="));
      if ( value_string == F("TRUE") ) {
        ServoLoopEnabled = true;
        Serial.print(F("TRUE"));
      }else{
        ServoLoopEnabled = false;
        Serial.print(F("FALSE"));
      }
      Serial.println(F(">"));
      break;
    case 6:
      Serial.print(F("<ESERVO1_GETPOS="));
      Serial.print(servoEaser1.getCurrPos());
      Serial.println(F(">"));
      break;
    case 7:
      Serial.print(F("<ESERVO1_ISRUN="));
      if (servoEaser1.isRunning()) {
        Serial.print(F("TRUE"));
      }else{
        Serial.print(F("FALSE"));
      }
      Serial.println(F(">"));
      break;
    case 8:
      Serial.print(F("<ESERVO1_SETFLIP="));
      if ( value_string == F("TRUE") ) {
        servoEaser1.setFlipped( true );
        Serial.print(F("TRUE"));
      }else{
        servoEaser1.setFlipped( false );
        Serial.print(F("FALSE"));
      }
      Serial.println(F(">"));
      break;
    case 9:
      Serial.print(F("<ESERVO1_ISFLIP="));
      if (servoEaser1.isFlipped()) {
        Serial.print(F("TRUE"));
      }else{
        Serial.print(F("FALSE"));
      }
      Serial.println(F(">"));
      break;
    case 10:
      Serial.print(F("<ESERVO2_GETPOS="));
      Serial.print(servoEaser2.getCurrPos());
      Serial.println(F(">"));
      break;
    case 11:
      Serial.print(F("<ESERVO2_ISRUN="));
      if (servoEaser2.isRunning()) {
        Serial.print(F("TRUE"));
      }else{
        Serial.print(F("FALSE"));
      }
      Serial.println(F(">"));
      break;
    case 12:
      Serial.print(F("<ESERVO2_SETFLIP="));
      if ( value_string == F("TRUE") ) {
        servoEaser2.setFlipped( true );
        Serial.print(F("TRUE"));
      }else{
        servoEaser2.setFlipped( false );
        Serial.print(F("FALSE"));
      }
      Serial.println(F(">"));
      break;
    case 13:
      Serial.print(F("<ESERVO2_ISFLIP="));
      if (servoEaser2.isFlipped()) {
        Serial.print(F("TRUE"));
      }else{
        Serial.print(F("FALSE"));
      }
      Serial.println(F(">"));
      break;
  }
}



#endif


