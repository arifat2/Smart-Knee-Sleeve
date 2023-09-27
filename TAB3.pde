ArrayList<Float> cadenceList = new ArrayList<Float>();
ArrayList<Float> timeList = new ArrayList<Float>();
float startTime_2;

ArrayList<Float> heartRateData = new ArrayList<Float>();
float rectX = 50;
float rectY = 465;
float rectWidth = 550;
float rectHeight = 300;
float rectRadius = 20;

void TAB_3() {
  // Draw a very light black gradient for the Main Menu tab
  setGradient(0, 0, width, height, color(61, 61, 61), color(33, 33, 38), Y_AXIS);

  // Load the image
  PImage imgs = loadImage("cardio.png");
  // Define the area to crop (x, y, width, height)
  int x = 100;
  int y = 160;
  int w = 1000;
  int h = 210;
  // Crop the image
  imgs = imgs.get(x, y, w, h);
  // Draw the image onto the canvas
  image(imgs, 0, 0, imgs.width - 50, imgs.height - 100);

  // image
  PImage img_2 = loadImage("M22.png");
  // Set the tint color to make the image transparent
  tint(255); // Change the alpha value to adjust transparency
  // Draw the image onto the canvas
  image(img_2, width/2 + 20, height/2 + 200, img_2.width - 270, img_2.height - 460);

  // title
  textFont(createFont("Impact", 60));
  fill(255);
  text("CARDIO", 115, 145);

  // rectange 1
  noStroke();
  fill(color(50));
  rect(25, 150, 750, 280, 20);

  // circle
  stroke(182, 63, 55);
  strokeWeight(15);
  noFill(); // Make the inner circle transparent
  arc(width/2, height/2 - 100, 200, 200, PI*0.7, PI*2.3);

  // BPM
  textFont(createFont("Impact", 40));
  textAlign(CENTER, CENTER);
  fill(255);
  text(int(Heart_Rate), width/2, height/2 - 140);

  // text
  textAlign(CENTER, CENTER);
  fill(210);
  textSize(20);
  text("Heart Rate", width/2, height/2 - 100);

  //// image
  PImage img_4 = loadImage("heart-rate.png");
  
  // Set the tint color to make the image transparent
  tint(255); // Change the alpha value to adjust transparency
  
  // Calculate the animated scale
  float scale = 1 + 0.1 * sin(millis() * 0.005);
  
  // Calculate the new width and height based on the scale
  float newWidth = (img_4.width - 440) * scale;
  float newHeight = (img_4.height - 440) * scale;
  
  // Calculate the new x and y positions
  float newX = width / 2 - newWidth / 2;
  float newY = 310 - (newHeight - (img_4.height - 440)) / 2;
  
  // Draw the image onto the canvas with the animated scale
  image(img_4, newX, newY + 5, newWidth, newHeight);

  // Total TIME
  textAlign(RIGHT);
  fill(210);
  textSize(20);
  text("TOTAL TIME (m) ", width/2 - 190, height/2 - 100);

  textAlign(CENTER, CENTER);
  fill(255);
  textSize(30);
  textAlign(RIGHT);
  text(minutes + ":" + seconds, width/2 - 215, height/2 - 130);

  // Activity Time
  textAlign(LEFT);
  fill(210);
  textSize(20);
  text("ACTIVITY TIME (m)", width/2 + 180, height/2 - 100);

  fill(255);
  textSize(30);
  textAlign(LEFT);
  text(a_minutes + ":" + a_seconds, width/2 + 217, height/2 - 130);

  // Rectangle 2
  noStroke();
  fill(210);
  rect(25, 465, 575, 300, 20);

  // Rectange 3
  noStroke();
  fill(color(50));
  rect(625, 465, 150, 300, 20);
  
  textAlign(CENTER, CENTER);
  textSize(25);
  fill(240);
  text("Press 4", 700, 600);
  textSize(18);
  fill(210);
  text("More Information", 700, 630);
}


void drawGraph() {
  // Draw the rectangle
  fill(210);
  strokeWeight(0);
  stroke(0);
  rect(rectX, rectY, rectWidth, rectHeight, rectRadius);
  strokeWeight(2);

  // Draw the graph
  float xScale = rectWidth / (heartRateData.size() - 1);
  float yScale = rectHeight / (200 - 60);

  stroke(182, 63, 55);
  noFill();

  beginShape();
  for (int i = 0; i < heartRateData.size(); i++) {
    float x = rectX + (i * xScale);
    float y = rectY + rectHeight - (heartRateData.get(i) - 60) * yScale;
    vertex(x, y - 30);
  }
  endShape();

  // Draw labels and title
  textSize(14);
  fill(0);
  textAlign(RIGHT, CENTER);
  for (int i = 0; i <= 5; i++) {
    float y = rectY + (i * (rectHeight / 6)) + rectHeight / 12;
    text(200 - i * 30, rectX - 2, y); // Y-axis labels, position adjusted
  }

  //textAlign(CENTER, TOP);
  //text("Time", rectX + rectWidth / 2, rectY + rectHeight - 25); // X-axis label
  
  textSize(20);
  textAlign(CENTER, BOTTOM);
  text("Heart Rate Graph", rectX + rectWidth / 2, rectY + 30); // Graph title
}


void processHeartRate(float heartRate) {
  heartRateData.add(heartRate);
  if (heartRateData.size() > 100) { // Limiting the data points to 100
    heartRateData.remove(0);
  }

  // Perform your other calculations here, such as Calculations3(heartRate);
}
