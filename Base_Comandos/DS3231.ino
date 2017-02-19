#ifdef ENABLE_RTC
#include <RtcDS3231.h>

RtcDS3231<TwoWire> Rtc(Wire);

// Interrupt Pin Lookup Table
// (copied from Arduino Docs)
//
// CAUTION:  The interrupts are Arduino numbers NOT Atmel numbers
//   and may not match (example, Mega2560 int.4 is actually Atmel Int2)
//   this is only an issue if you plan to use the lower level interupt features
//
// Board           int.0    int.1   int.2   int.3   int.4   int.5
// ---------------------------------------------------------------
// Uno, Ethernet    2       3
// Mega2560         2       3       21      20     [19]      18 
// Leonardo         3       2       0       1       7
#define RtcSquareWavePin 2 
#define RtcSquareWaveInterrupt 0

volatile uint16_t interruptCount = 0;
volatile bool interruptFlag = false;

void InterruptServiceRoutine()
{
    // since this interupted any other running code,
    // don't do anything that takes long and especially avoid
    // any communications calls within this routine
    interruptCount++;
    interruptFlag = true;
}

void rtc_start (){
  Rtc.Begin();

  // set the interupt pin to input mode
  pinMode(RtcSquareWavePin, INPUT);
  Rtc.Enable32kHzPin(false);
  Rtc.SetSquareWavePin(DS3231SquareWavePin_ModeAlarmBoth);
  // throw away any old alarm state before we ran
  Rtc.LatchAlarmsTriggeredFlags();
  // setup external interupt 
  attachInterrupt(RtcSquareWaveInterrupt, InterruptServiceRoutine, FALLING);
}

void rtc_get (uint8_t selected) {

  RtcDateTime now = Rtc.GetDateTime();
  RtcTemperature temp = Rtc.GetTemperature();
  RtcDateTime alarmTime;
  DS3231AlarmOne alarm1 = Rtc.GetAlarmOne();
  DS3231AlarmTwo alarm2 = Rtc.GetAlarmTwo();
  
  switch ( selected ) {
    case 1:
      Serial.print(F("<RTC_VALID="));
      if (Rtc.IsDateTimeValid()) {
        Serial.print(F("TRUE"));
      }else{
        Serial.print(F("FALSE"));
      }
      Serial.println(F(">"));
      break;
    case 2:
      Serial.print(F("<RTC_RUNNING="));
      if (Rtc.GetIsRunning()) {
        Serial.print(F("TRUE"));
      }else{
        Serial.print(F("FALSE"));
      }
      Serial.println(F(">"));
      break;
    case 3:
      Serial.print(F("<RTC_TEMP="));
      Serial.print(temp.AsFloat());
      Serial.println(F(">"));
      break;
    case 4:
      Serial.print(F("<RTC_DATE="));
      Serial.print(now.Year()); Serial.print(F("/"));
      if (now.Month() < 10) Serial.print(F("0"));
      Serial.print(now.Month()); Serial.print(F("/"));
      if (now.Day() < 10) Serial.print(F("0"));
      Serial.print(now.Day());
      Serial.println(F(">"));
      break;
    case 5:
      Serial.print(F("<RTC_TIME="));
      if (now.Hour() < 10) Serial.print("0");
      Serial.print(now.Hour());Serial.print(":");
      if (now.Minute() < 10) Serial.print("0");
      Serial.print(now.Minute());Serial.print(":");
      if (now.Second() < 10) Serial.print("0");
      Serial.print(now.Second());      
      Serial.println(F(">"));
      break;
    case 6:
      Serial.print(F("<RTC_AGOFFS="));
      Serial.print(Rtc.GetAgingOffset());
      Serial.println(F(">"));
      break;
    case 7:
      Serial.print(F("<RTC_DAYWEEK="));
      Serial.print(now.DayOfWeek());
      Serial.println(F(">"));
      break;
    case 8:
      Serial.print(F("<RTC_ALARMFLAG="));
      Serial.print(Rtc.LatchAlarmsTriggeredFlags());
      Serial.println(F(">"));
      break;
    case 9:                         //get alarm 1
      Serial.print(F("<RTC_AL1_W="));
      Serial.print(alarm1.DayOf());
      Serial.print(F("><RTC_AL1_H="));
      Serial.print(alarm1.Hour());
      Serial.print(F("><RTC_AL1_M="));
      Serial.print(alarm1.Minute());
      Serial.print(F("><RTC_AL1_S="));
      Serial.print(alarm1.Second());
      Serial.print(F("><RTC_AL1_CTRL="));
      Serial.print(alarm1.ControlFlags());
      Serial.println(F(">"));
      break;
    case 10:                        //get alarm 2
      Serial.print(F("<RTC_AL2_W="));
      Serial.print(alarm2.DayOf());
      Serial.print(F("><RTC_AL2_H="));
      Serial.print(alarm2.Hour());
      Serial.print(F("><RTC_AL2_M="));
      Serial.print(alarm2.Minute());
      Serial.print("><RTC_AL2_CTRL=");
      Serial.print(alarm2.ControlFlags());
      Serial.println(F(">"));
      break;
     case 11:
      
      break;
    default:
      break;
  }
}

void rtc_set (uint8_t selected) {
  RtcDateTime now = Rtc.GetDateTime();
  //RtcDateTime new_now;
  uint8_t value_temp;
  switch ( selected ) {
    case 1:                                   // set hour
      value_temp = value_string.toInt();
      if (value_temp<24) {
        RtcDateTime new_now(now.Year(), now.Month(), now.Day(), value_temp, now.Minute(), now.Second());
        Rtc.SetDateTime(new_now);
      }
      rtc_get(5);
      break;
    case 2:                                   // set minute
      value_temp = value_string.toInt();
      if (value_temp<60) {
        RtcDateTime new_now(now.Year(), now.Month(), now.Day(), now.Hour(), value_temp, now.Second());
        Rtc.SetDateTime(new_now);
      }
      rtc_get(5);
      break;
    case 3:                                   // set second
      value_temp = value_string.toInt();
      if (value_temp<60) {
        RtcDateTime new_now(now.Year(), now.Month(), now.Day(), now.Hour(), now.Minute(), value_temp);
        Rtc.SetDateTime(new_now);
      }
      rtc_get(5);
      break;
    case 4:                                   // set Year
      value_temp = value_string.toInt();
      if (value_temp<100) {
        RtcDateTime new_now(value_temp, now.Month(), now.Day(), now.Hour(), now.Minute(), now.Second());
        Rtc.SetDateTime(new_now);
      }
      rtc_get(4);
      break;
    case 5:                                   // set Month
      value_temp = value_string.toInt();
      if (value_temp<13) {
        RtcDateTime new_now(now.Year(), value_temp, now.Day(), now.Hour(), now.Minute(), now.Second());
        Rtc.SetDateTime(new_now);
      }
      rtc_get(4);
      break;
    case 6:                                   // set Day
      value_temp = value_string.toInt();
      if (value_temp<32) {
        RtcDateTime new_now(now.Year(), now.Month(), value_temp, now.Hour(), now.Minute(), now.Second());
        Rtc.SetDateTime(new_now);
      }
      rtc_get(4);   
      break;
    case 7:
      if (value_string == "TRUE") {
        Rtc.Enable32kHzPin(true);
        Serial.println("<RTC_32OUT=TRUE>");
      } else {
        Rtc.Enable32kHzPin(false);
        Serial.println("<RTC_32OUT=FALSE>");
      }
      break;
    case 8:
      
    break;
    default:
      break;
  }
  //Serial.println(value_temp);
}

bool Alarmed(){
    bool wasAlarmed = false;
    if (interruptFlag) {
        wasAlarmed = true;
        interruptFlag = false; // reset the flag
        
        // this gives us which alarms triggered and
        // then allows for others to trigger again
        DS3231AlarmFlag flag = Rtc.LatchAlarmsTriggeredFlags();

        if (flag & DS3231AlarmFlag_Alarm1) Serial.println("<RTC_ALARM1=TRUE>");
        if (flag & DS3231AlarmFlag_Alarm2) Serial.println("<RTC_ALARM2=TRUE>");

    }
    return wasAlarmed;
}

#endif


