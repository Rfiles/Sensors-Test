#ifdef ENABLE_EIO

#include <Adafruit_MCP23017.h>
Adafruit_MCP23017 mcp;

// Interrupts from the MCP will be handled by this PIN
byte arduinoIntPin=2;

// ... and this interrupt vector
byte arduinoInterrupt=1;

byte SelectedPin;

void eio_start() {  

  pinMode(arduinoIntPin,INPUT);

  mcp.begin();      // use default address 0
  
  // We mirror INTA and INTB, so that only one line is required between MCP and Arduino for int reporting
  // The INTA/B will not be Floating 
  // INTs will be signaled with a LOW
  mcp.setupInterrupts(true,false,LOW);

  Serial.println(F("<EIO_START=DONE>"));
}

void intCallBack(){
  awakenByInterrupt=true;
}

void handleInterrupt(){
  
  // Get more information from the MCP from the INT
  uint8_t pin=mcp.getLastInterruptPin();
  uint8_t val=mcp.getLastInterruptPinValue();
//seria print?
  cleanInterrupts();
}

void cleanInterrupts(){
  EIFR=0x01;
  awakenByInterrupt=false;
}


void eio_cmd(uint8_t Setting) {
  switch (Setting) {
    case 0: //pinmode
      Serial.print(F("<EIO_PM="));
      if (value_string == "OUT") {
        mcp.pinMode(SelectedPin, OUTPUT);
        Serial.print(F("OUT"));
      }else{
        mcp.pinMode(SelectedPin, INPUT);
        Serial.print(F("IN"));
      }
      Serial.println(F(">"));
      break;
    case 1://digwrite
      Serial.print(F("<EIO_DW="));
      if (value_string == "HIGH") {
        mcp.digitalWrite(SelectedPin, HIGH);
        Serial.print(F("HIGH"));
      }else{
        mcp.digitalWrite(SelectedPin, LOW);
        Serial.print(F("LOW"));
      }
      Serial.println(F(">"));
      break;
    case 2://digread
      Serial.print(F("<EIO_DR="));
      Serial.print(mcp.digitalRead(SelectedPin));
      Serial.println(F(">"));
      break;
    case 3://pullup
      Serial.print(F("<EIO_PU="));
      if (value_string == "ON") {
        mcp.pullUp(SelectedPin, HIGH);
        Serial.print(F("ON"));
      }else{
        mcp.pullUp(SelectedPin, LOW);
        Serial.print(F("OFF"));
      }
      Serial.println(F(">"));
      break;
    case 4://readall
      Serial.print(F("<EIO_RALL="));
      Serial.print(mcp.readGPIOAB(),HEX);
      Serial.println(F(">"));
      break;
    case 5://writeall
      mcp.writeGPIOAB(value_string.toInt());
      Serial.print(F("<EIO_WALL="));
      Serial.print(value_string.toInt());
      Serial.println(F(">"));
      break;
    case 6://enable int
      Serial.print(F("<EIO_INT="));
      if (value_string == "TRUE") {
        attachInterrupt(arduinoInterrupt,intCallBack,FALLING);
        Serial.print(F("ON"));
      }else{
        detachInterrupt(arduinoInterrupt);
        Serial.print(F("OFF"));
      }
      Serial.println(F(">"));
      break;
    case 7:
      SelectedPin = value_string.toInt();
      Serial.print(F("<EIO_SPIN="));
      Serial.print(SelectedPin);
      Serial.println(F(">"));
      break;
    case 8://
      break;

    
  }
  
}






#endif
