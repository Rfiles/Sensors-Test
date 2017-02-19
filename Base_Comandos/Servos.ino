#ifdef ENABLE_INTERNAL_SERVO
#include <Servo.h>

Servo myservo1;
Servo myservo2;
int Servo1Pos, 
int Servo2Pos;

void Servo1_Data() {
    Servo1Pos = value_string.toInt();
    myservo1.write(Servo1Pos);
    Serial.print(F("<SERVO1="));
    Serial.print(Servo1Pos);
    Serial.println(F(">"));
}

void Servo1_Setup(uint8_t setting){
  switch ( setting ) {
    case 1:
      Serial.print(F("<SERVO1_ISATTACHED="));
      if (myservo1.attach(7)) { // retorna index se sucesso / 0 se falhar
        Serial.print(F("YES"));
      } else {
        Serial.print(F("NO"));
      }
      Serial.println(F(">"));
      break;
    case 2:
      myservo1.detach();   // sem retorno
      Serial.println(F("<SERVO1_DETACH=DONE>"));
      break;
    case 3:
      Serial.print(F("<SERVO1_ISATTACHED="));
      if (myservo1.attached()) { // true / false
        Serial.print(F("YES"));
      } else {
        Serial.print(F("NO"));
      }
      Serial.println(F(">"));
      break;
    default:
      break;
  }
}
//-------------------------------------------------------------------

void Servo2_Data() {
    Servo2Pos = value_string.toInt();
    myservo2.write(Servo2Pos);
    Serial.print(F("<SERVO2="));
    Serial.print(Servo2Pos);
    Serial.println(F(">"));
}


void Servo2_Setup(uint8_t setting){
  switch ( setting ) {
    case 1:
      Serial.print(F("<SERVO2_ISATTACHED="));
      if (myservo2.attach(8)) { // retorna index se sucesso / 0 se falhar
        Serial.print(F("YES"));
      } else {
        Serial.print(F("NO"));
      }
      Serial.println(F(">"));
      break;
    case 2:
      myservo2.detach();   // sem retorno
      Serial.println(F("<SERVO2_DETACH=DONE>"));
      break;
    case 3:
      Serial.print(F("<SERVO2_ISATTACHED="));
      if (myservo2.attached()) { // true / false
        Serial.print(F("YES"));
      } else {
        Serial.print(F("NO"));
      }
      Serial.println(F(">"));
      break;
    default:
      break;
  }
}

#endif
