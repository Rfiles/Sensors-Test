#include "SparkFunBME280.h"
//Library allows either I2C or SPI, so include both.
//#include "Wire.h"
//#include "SPI.h"

//Global sensor object
BME280 mySensor;


void reset_bme() {
  mySensor.reset();
}

void setup_bme(){
  //***Driver settings********************************//
  //commInterface can be I2C_MODE or SPI_MODE
  //specify chipSelectPin using arduino pin names
  //specify I2C address.  Can be 0x77(default) or 0x76
  
  //For I2C, enable the following and disable the SPI section
  mySensor.settings.commInterface = I2C_MODE;
  mySensor.settings.I2CAddress = 0x76;
  
  //For SPI enable the following and dissable the I2C section
  //mySensor.settings.commInterface = SPI_MODE;
  //mySensor.settings.chipSelectPin = 10;


  //***Operation settings*****************************//
  
  //renMode can be:
  //  0, Sleep mode
  //  1 or 2, Forced mode
  //  3, Normal mode
  mySensor.settings.runMode = 3; //Normal mode
  
  //tStandby can be:
  //  0, 0.5ms
  //  1, 62.5ms
  //  2, 125ms
  //  3, 250ms
  //  4, 500ms
  //  5, 1000ms
  //  6, 10ms
  //  7, 20ms
  mySensor.settings.tStandby = 0;
  
  //filter can be off or number of FIR coefficients to use:
  //  0, filter off
  //  1, coefficients = 2
  //  2, coefficients = 4
  //  3, coefficients = 8
  //  4, coefficients = 16
  mySensor.settings.filter = 0;
  
  //tempOverSample can be:
  //  0, skipped
  //  1 through 5, oversampling *1, *2, *4, *8, *16 respectively
  mySensor.settings.tempOverSample = 1;

  //pressOverSample can be:
  //  0, skipped
  //  1 through 5, oversampling *1, *2, *4, *8, *16 respectively
    mySensor.settings.pressOverSample = 1;
  
  //humidOverSample can be:
  //  0, skipped
  //  1 through 5, oversampling *1, *2, *4, *8, *16 respectively
  mySensor.settings.humidOverSample = 1;
  
  //Serial.begin(115200);
  //Serial.print("Program Started\n");
  //Serial.print("Starting BME280... result of .begin(): 0x");
}

void bme_settings (){
  //id_string
  //value_string

  
}




void start_bme() {
  //Calling .begin() causes the settings to be loaded
  //delay(10);  //Make sure sensor had enough time to turn on. BME280 requires 2ms to start up.
  Serial.print(F("<BME_BEGIN="));
  Serial.print(mySensor.begin(), HEX);
  Serial.println(F(">"));
}

void bme_regs() {
  
  Serial.print(F("<BME_ID_REG="));
  Serial.print(mySensor.readRegister(BME280_CHIP_ID_REG), HEX);
  Serial.print(F("><BME_RST_REG="));
  Serial.print(mySensor.readRegister(BME280_RST_REG), HEX);
  Serial.print(F("><BME_CTRL_REG="));
  Serial.print(mySensor.readRegister(BME280_CTRL_MEAS_REG), HEX);
  Serial.print(F("><BME_CTRLHUM_REG="));
  Serial.print(mySensor.readRegister(BME280_CTRL_HUMIDITY_REG), HEX);
  Serial.println(F(">"));

}

void bme_calib() {
  Serial.print(F("<BME_CAL_T1="));
  Serial.print(mySensor.calibration.dig_T1);
  Serial.print(F("><BME_CAL_T2="));
  Serial.print(mySensor.calibration.dig_T2);
  Serial.print(F("><BME_CAL_T3="));
  Serial.print(mySensor.calibration.dig_T3);
  
  Serial.print(F("><BME_CAL_P1="));
  Serial.print(mySensor.calibration.dig_P1);
  Serial.print(F("><BME_CAL_P2="));
  Serial.print(mySensor.calibration.dig_P2);
  Serial.print(F("><BME_CAL_P3="));
  Serial.print(mySensor.calibration.dig_P3);
  Serial.print(F("><BME_CAL_P4="));
  Serial.print(mySensor.calibration.dig_P4);
  Serial.print(F("><BME_CAL_P5="));
  Serial.print(mySensor.calibration.dig_P5);
  Serial.print(F("><BME_CAL_P6="));
  Serial.print(mySensor.calibration.dig_P6);
  Serial.print(F("><BME_CAL_P7="));
  Serial.print(mySensor.calibration.dig_P7);
  Serial.print(F("><BME_CAL_P8="));
  Serial.print(mySensor.calibration.dig_P8);
  Serial.print(F("><BME_CAL_P9="));
  Serial.print(mySensor.calibration.dig_P9);
  
  Serial.print(F("><BME_CAL_H1="));
  Serial.print(mySensor.calibration.dig_H1);
  Serial.print(F("><BME_CAL_H2="));
  Serial.print(mySensor.calibration.dig_H2);
  Serial.print(F("><BME_CAL_H3="));
  Serial.print(mySensor.calibration.dig_H3);
  Serial.print(F("><BME_CAL_H4="));
  Serial.print(mySensor.calibration.dig_H4);
  Serial.print(F("><BME_CAL_H5="));
  Serial.print(mySensor.calibration.dig_H5);
  Serial.print(F("><BME_CAL_H6="));
  Serial.print(mySensor.calibration.dig_H6);
  Serial.println(F(">"));
}

void bme_reading() {
  //Each loop, take a reading.
  //Start with temperature, as that data is needed for accurate compensation.
  //Reading the temperature updates the compensators of the other functions
  //in the background.

  Serial.print(F("<BME_TEMP="));
  Serial.print(mySensor.readTempC(), 2);
  Serial.print(F("><BME_PRESS="));
  Serial.print(mySensor.readFloatPressure(), 2);  //Pa
  Serial.print(F("><BME_ALT="));
  Serial.print(mySensor.readFloatAltitudeMeters(), 2);
  Serial.print(F("><BME_HUM="));
  Serial.print(mySensor.readFloatHumidity(), 2);
  Serial.println(F(">"));
}




