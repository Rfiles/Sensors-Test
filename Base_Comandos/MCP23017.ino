#ifdef ENABLE_IOEXP

#include <Adafruit_MCP23017.h>
Adafruit_MCP23017 mcp;

void ioexp_start() {  
  mcp.begin();      // use default address 0
  Serial.println(F("<IOE_START=DONE>"));
}






#endif
