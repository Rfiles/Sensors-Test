
#define cryptokey 845

void Validate_Data () {
  if (content == CMD_GET){
    if (!iscryptvalid) {
      if (keytrylock) {
        randomkey = random(0,1024);       // chave de resposta
        checkkey = randomkey ^ cryptokey; // xor challenge
//        Serial.print(F("<DEBUGKEY="));
//        Serial.print(randomkey);
//        Serial.println(F(">"));
        Serial.print(F("<CHECK="));
        Serial.print(checkkey);
        Serial.println(F(">"));
      }else{
        Serial.println(F("<AUTH=LOCK>"));
      }
    }else{
      Serial.println(F("<AUTH=PASS>"));
    }
  }
  if (content == CMD_SET){
    Serial.print(F("<AUTH="));
    if (keytrylock) {
      if (value_string.toInt() == randomkey) {
        iscryptvalid = 1;
        keytrylock = 3;
        Serial.print(F("PASS"));
      }else{
        iscryptvalid = 0;
        keytrylock--;
        Serial.print(F("FAIL"));
      }
    }else{
      Serial.print(F("LOCK"));
    }
    Serial.println(F(">"));
  }
}

