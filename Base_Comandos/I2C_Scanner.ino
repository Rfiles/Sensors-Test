
#define TCAADDR 0x70

void scan_i2c() {
  byte error, address;
  int nDevices;

  //Serial.println(F("\nSimple I2C Scanner"));
  configMPU6050(0x68);
  configMPU6050(0x69);

  nDevices = 0;
  for(address = 1; address < 127; address++ ) {
    // The i2c_scanner uses the return value of
    // the Write.endTransmisstion to see if
    // a device did acknowledge to the address.
    Wire.beginTransmission(address);
    error = Wire.endTransmission();

    if (error == 0){
      Serial.print(F("<I2C_SCAN="));
      Serial.print(address);
      Serial.println(F(">"));
      //i2caddr2name(address);
      //Serial.println("  !");
      nDevices++;
    }
    //else if (error==4) {
      //Serial.print(F("I2C error: 0x"));
      //if (address<16) Serial.print("0");
      //Serial.println(address,HEX);
      
    //}    
    delay(5); //Scan not too fast
  }
  //if (nDevices == 0)
    //Serial.println(F("No I2C devices found\n"));
  //else
   // Serial.println(F("done\n"));
}

//void i2caddr2name(uint8_t addr) {
//  
//  switch (addr){
//    case 30:
//      Serial.print(F("HMC5883L"));
//      break;
//    case 54:
//      Serial.print(F("MAX17043"));
//      break;
//    case 56:
//      Serial.print(F("VEML6070_H"));
//      break;
//    case 57:
//      Serial.print(F("VEML6070_L"));
//      break;
//    case 58:
//      Serial.print(F("INA219"));
//      break;
//    case 87:
//      Serial.print(F("DS3231"));
//      break;
//    case 104:
//      Serial.print(F("MPU6050"));
//      break;
//    case 112:
//      Serial.print(F("TCA9548A"));
//      break;
//    case 118:
//      Serial.print(F("BME280"));
//      break;
//    case 119:
//      Serial.print(F("BMP180")); //BMP280 - BMP085
//      break;
//    default:
//      Serial.print(F("Unknown"));
//      break;
//  }
//}

void i2ctca_scanner() {
//  Serial.println(F("I2C Mux Scanner"));
  
  for (uint8_t t=0; t<8; t++) {
    tcaselect(t);
    configMPU6050(0x68);
    configMPU6050(0x69);

    for (uint8_t addr = 0; addr<=127; addr++) {
      if (addr == TCAADDR) continue;
    
      //uint8_t data;
      Wire.beginTransmission(addr);
      byte error = Wire.endTransmission();
      //if (! twi_writeTo(addr, &data, 0, 1, 1)) {
      if (error == 0) {
        Serial.print(F("<SCANI2C_TCA")); 
        Serial.print(t);
        Serial.print(F("="));
        Serial.print(addr);
        Serial.println(F(">"));
        //i2caddr2name(addr);
        //Serial.println("");
      }
    }
  }
  //Serial.println(F("done"));
}

void configMPU6050(byte address){
  
  //Enable Bypass Mode
  Wire.beginTransmission(address);
  Wire.write(0x37);
  Wire.write(0x02);
  Wire.endTransmission();
  
  //Disable I2C Master Mode for MPU6050 -->Arduino is only Master
  Wire.beginTransmission(address);
  Wire.write(0x6A);
  Wire.write(0x00);
  Wire.endTransmission();
  
  //Disable Sleep Mode
  Wire.beginTransmission(address);
  Wire.write(0x6B);
  Wire.write(0x00);
  Wire.endTransmission();  
}

void tcaselect(uint8_t i) {
  if (i > 7) return;
 
  Wire.beginTransmission(TCAADDR);
  Wire.write(1 << i);
  Wire.endTransmission();  
}


