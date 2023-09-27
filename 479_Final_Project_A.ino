#include <Wire.h>
#include <SparkFun_Bio_Sensor_Hub_Library.h>
#include <MPU6050reg.h>
#include "MPU6050IMU.h"

#define MPU_ADDRESS 0x68  // I2C address of the ITG/MPU device

float forceSensor1Reading;
float forceSensor2Reading;
float forceSensor3Reading;

MPU6050IMU imu;
bioData body;

// Reset pin, MFIO pin
int resPin = 4;
int mfioPin = 5;

// Takes address, reset pin, and MFIO pin.
SparkFun_Bio_Sensor_Hub bioHub(resPin, mfioPin);

// New variable to store the previous heart rate greater than 60
int prevHeartRate = 60;

void setup() {
  Serial.begin(115200);
  Wire.begin();
  int result = bioHub.begin();
  int error = bioHub.configBpm(MODE_ONE);
  delay(4000);

  imu.begin();
  delay(1000);
}

void loop() {
  // Read the gyroscope data from the ITG/MPU device
  float temp[3];
  int range = 8;
  imu.readaccelerometer(temp, 8);

  // Read force sensor values
  forceSensor1Reading = analogRead(A0);
  forceSensor2Reading = analogRead(A2);
  forceSensor3Reading = analogRead(A4);

  // Information from the readBpm function will be saved to our "body" variable.
  body = bioHub.readBpm();

  if (body.heartRate >= 60) {
    prevHeartRate = body.heartRate;
    Serial.print(String(body.heartRate));
  } else {
    Serial.print(String(prevHeartRate));
  }

  // Force Sensor Threshold
  if (forceSensor3Reading < 715) {
    forceSensor3Reading = 0;
  }
  if (forceSensor3Reading > 0) {
    forceSensor3Reading -= 50;
  } 
  if(forceSensor2Reading < 715) {
    forceSensor2Reading = 0;
  }

  if(forceSensor1Reading > 100) {
    forceSensor1Reading = 100;
  }
  
  // Send sensor readings over serial
  Serial.print(", ");
  Serial.print(forceSensor1Reading);
  Serial.print(", ");
  Serial.print(forceSensor2Reading);
  Serial.print(",");
  Serial.print(forceSensor3Reading);
  Serial.print(", ");

  Serial.print((temp[0]));
  Serial.print(", ");
  Serial.print((temp[1]));
  Serial.print(", ");
  Serial.print((temp[2]));
  Serial.println();

  delay(250);
}
