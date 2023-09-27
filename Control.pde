final int Y_AXIS = 1;


// keyPressed
void keyPressed() {
  switch (key) {

  case '0':
    currentTab = "start_screen";
    break;

  case '1':
    currentTab = "TAB 1";
    break;

  case '2':
    currentTab = "TAB 2";
    break;

  case '3':
    currentTab = "TAB 3";
    break;
    
  case '4':
    currentTab = "TAB 4";
    break;
  }
}


// setGradient
void setGradient(int x, int y, float w, float h, color c1, color c2, int axis ) {
  noFill();
  if (axis == Y_AXIS) {  // Top to bottom gradient
    for (int i = y; i <= y+h; i++) {
      float inter = map(i, y, y+h, 0, 1);
      color c = lerpColor(c1, c2, inter);
      stroke(c);
      line(x, i, x+w, i);
    }
  }
}


// Function to format time as minutes and seconds
String formatTime(float timeInSeconds) {
  int minutes = int(timeInSeconds) / 60;
  int seconds = int(timeInSeconds) % 60;
  return nf(minutes, 1) + "m:" + nf(seconds, 2) + "s";
}


// Call this function to start the timer
void startTimer() {
  startTime = millis();
}
