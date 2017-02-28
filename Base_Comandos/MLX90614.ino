#ifdef ENABLE_MLX

#include <Adafruit_MLX90614.h>

Adafruit_MLX90614 mlx = Adafruit_MLX90614();

void mlx_start() {
  mlx.begin();
  Serial.println(F("<MLX_START=TRUE>"));
}

void mlx_cmd( uint8_t Setting ){
  switch (Setting) {
    case 0: // Ambient Temperature
      Serial.print(F("<MLX_AMB=")); 
      Serial.print(mlx.readAmbientTempC()); 
      Serial.println(F(">"));
      break;
    case 1: // Object Temperature
      Serial.print(F("<MLX_OBJ=")); 
      Serial.print(mlx.readObjectTempC()); 
      Serial.println(F(">"));
      break;
  }
}


#endif
