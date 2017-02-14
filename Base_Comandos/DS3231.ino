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
      Serial.print(now.Year()); Serial.print("/");
      Serial.print(now.Month()); Serial.print("/");
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
//    case 7:
//      Serial.print(F("<RTC_="));
//      break;
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
  switch ( selected ) {
    case 1:
      break;
    default:
    break;
  }
}



