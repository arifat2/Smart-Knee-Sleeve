import processing.serial.*;
import java.util.ArrayList;
import java.util.Collections;
import org.gicentre.utils.stat.*;
import processing.core.*;

// The serial port
Serial myPort;

String currentTab = "start_screen";

float Heart_Rate;
float F_sensor_1;
float F_sensor_2;
float F_sensor_3;
float A_sensor_1;
float A_sensor_2;
float A_sensor_3;

// Timer
float elapsedTime;
int startTime;
String minutes;
String seconds;


void setup() {
  size(800, 800);

  // List all the available serial ports
  String portName = Serial.list()[0];
  myPort = new Serial(this, portName, 115200);
  myPort.bufferUntil('\n');

  surface.setTitle("FitTrainer");
}


void draw() {
  // Display the timer
  elapsedTime = 0.0;
  elapsedTime = (millis() - startTime)/1000.0;
  minutes = nf(floor(elapsedTime/60), 2);
  seconds = nf(int(elapsedTime) % 60, 2);

  if (currentTab == "start_screen") {
    // Call the function to display the content for start_screen
    start_screen();
  } else if (currentTab == "TAB 1") {
    // Call the function to display the content for TAB 1
    TAB_1();
  } else if (currentTab == "TAB 2") {
    TAB_2();
  } else if (currentTab == "TAB 3") {
    // Call the function to display the content for TAB 3
    TAB_3();
    drawGraph();
  } else if (currentTab == "TAB 4") {
    // Call the function to display the content for TAB 3
    TAB_4();
  }
}



void serialEvent (Serial myPort) {
  // get the ASCII string:
  String inString = myPort.readStringUntil('\n');

  if (inString != null) {
    // trim off any whitespace:
    inString = trim(inString);
    String[] values = split(inString, ",");
    Heart_Rate = float(values[0]);
    F_sensor_1 = float(values[1]);
    F_sensor_2 = float(values[2]);
    F_sensor_3 = float(values[3]);
    A_sensor_1 = float(values[4]);
    A_sensor_2 = float(values[5]);
    A_sensor_3 = float(values[6]);

    Calculation(F_sensor_1);
    Calculations2();
    Calculations3();
    processHeartRate(Heart_Rate);

    println("Heart_Rate: " + int(Heart_Rate));
    println("F_sensors: " + int(F_sensor_1) + ", " + int(F_sensor_2) + ", "
      + int(F_sensor_3));
    println("A_sensors: " + A_sensor_1 + ", " + A_sensor_2 + ", "
      + A_sensor_3);
  }
}
