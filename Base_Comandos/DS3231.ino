#include <RtcDS3231.h>

RtcDS3231<TwoWire> Rtc(Wire);

void rtc_start (){
  Rtc.Begin();
}

void rtc_get (int selected) {

  RtcDateTime now = Rtc.GetDateTime();
  RtcTemperature temp = Rtc.GetTemperature();

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
//    case 8:
//      Serial.print(F("<RTC_="));
//      break;
//    case 9:
//      Serial.print(F("<RTC_="));
//      break;
//    case 10:
//      Serial.print(F("<RTC_="));
//      break;
    default:
      break;
  }
}

void rtc_set (int selected) {
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

    default:
    break;
  }
  //Serial.println(value_temp);
}



