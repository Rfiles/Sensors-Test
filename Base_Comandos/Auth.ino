
#define cryptokey 845

void Validate_Data () {
  if (content == CMD_GET){
    if (!iscryptvalid) {
      if (keytrylock) {
        randomSeed(millis());
        randomkey = random(0,1024);       // chave de resposta
        checkkey = randomkey ^ cryptokey; // xor challenge
//        checkkey = randomkey ^ mcu_vars.AuthPass; // xor challenge
#ifdef ENABLE_CRYPTO_DEBUG        
        Serial.print(F("<DEBUGKEY="));
        Serial.print(mcu_data.mcu_vars.AuthPass);
        Serial.print(F(","));
        Serial.print(randomkey);
        Serial.println(F(">"));
#endif
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

