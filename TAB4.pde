void TAB_4() {
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
  text("INSIGHT", 115, 100);

  // sub title
  textFont(createFont("Impact", 30));
  fill(200);
  text("Trends.  Totals.  Records.", 170, height/2 - 245);

  // rectange 1
  noStroke();
  fill(color(50));
  rect(25, 200, 750, 280, 20);

  // circle
  // stroke(107, 142, 35);
  stroke(182, 63, 55);
  strokeWeight(15);
  noFill(); // Make the inner circle transparent
  arc(width/2, height/2 - 50, 200, 200, PI*0.7, PI*2.3);

  // BPM
  textFont(createFont("Impact", 40));
  textAlign(CENTER, CENTER);
  fill(255);
  text(int(average_heart_rate), width/2, height/2 - 95);

  // text
  textAlign(CENTER, CENTER);
  fill(210);
  textSize(20);
  text("Average Heart Rate", width/2, height/2 - 55);
  
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
  image(img_4, newX, newY + 50, newWidth, newHeight);

  // CALORIES
  textAlign(CENTER, CENTER);
  fill(210);
  textSize(20);
  text("CALORIES", width/2 - 216, height/2);
  
  PImage img1 = loadImage("calories.png");
  tint(255);
  image(img1, width/2 - 317, height/2 - 35, img_2.width - 260, img_2.height - 470);
  fill(255);

  textSize(30);
  textAlign(LEFT);
  text(int(calories), width/2 - 253, height/2 - 20 );

  // DISTANCE
  textAlign(LEFT);
  fill(210);
  textSize(20);
  text("MILES", width/2 + 250, height/2 + 10);
  PImage img3 = loadImage("distance.png");
  tint(255);
  image(img3, width/2 + 183, height/2 - 45, img_2.width - 260, img_2.height - 470);

  fill(255);
  textSize(30);
  textAlign(LEFT);
  text(miles, width/2 + 245, height/2 - 23);

  // rectange 2
  noStroke();
  fill(color(50));
  rect(25, 505, 150, 265, 20);
  
  // image
  PImage img_3 = loadImage("M22.png");
  // Set the tint color to make the image transparent
  tint(255); // Change the alpha value to adjust transparency
  // Draw the image onto the canvas
  image(img_3, 80, 560, img_3.width - 260, img_3.height - 450);

  // Cadence
  textFont(createFont("Impact", 40));
  textAlign(CENTER, CENTER);
  fill(255);
  text(int(cadence), width/2 - 300, height/2 + 255);

  textFont(createFont("Impact", 30));
  textAlign(CENTER, CENTER);
  // fill(107, 142, 35);
  fill(182, 63, 55);
  text("CADENCE", width/2 - 300, height/2 + 300);

  textFont(createFont("Impact", 15));
  textAlign(CENTER, CENTER);
  fill(210);
  text("steps/min", width/2 - 300, height/2 + 330);

  // Rectangle 3
  noStroke();
  fill(color(50));
  rect(200, 505, 575, 265, 20);

  pushMatrix(); 
  translate(220, 645); 
  rotate(radians(-90));
  fill(color(255));
  textSize(24);
  text("Cardio Zone", 0, 0);
  popMatrix(); 
  
  textSize(20);
  textAlign(CENTER, CENTER);

  // Draw the first rectangle and text
  fill(39, 41, 43);
  rect(275, 715, 110, 50, 5);
  fill(255);
  text(formatTime(Warm_Up_time), 275 + 110 / 2, 715 + 50 / 2);

  // Draw the second rectangle and text
  fill(39, 41, 43);
  rect(400, 715, 110, 50, 5);
  fill(255);
  text(formatTime(Fat_Burn_time), 400 + 110 / 2, 715 + 50 / 2);
  
  // Draw the third rectangle and text
  fill(39, 41, 43);
  rect(525, 715, 110, 50, 5);
  fill(255);
  text(formatTime(Hard_Core_time), 525 + 110 / 2, 715 + 50 / 2);

  // Draw the fourth rectangle and text
  fill(39, 41, 43);
  rect(650, 715, 110, 50, 5);
  fill(255);
  text(formatTime(VO2_Max_time), 650 + 110 / 2, 715 + 50 / 2);
  
  cardioZone2();
  
  textSize(15);
  textAlign(CENTER, CENTER);
  fill(0);
  text("Warm Up", 275 + 110 / 2, 540);
  text("Fat Burn", 400 + 110 / 2, 540);
  text("Hard Core", 525 + 110 / 2, 540);
  text("VO2 Max", 650 + 110 / 2, 540);
}


void cardioZone2() {
// Draw the base rectangles
  fill(241, 246, 241);
  rect(275, 525, 110, 200, 5);
  rect(400, 525, 110, 200, 5);
  rect(525, 525, 110, 200, 5);
  rect(650, 525, 110, 200, 5);

  // Draw the gray rectangles based on cardio zone times
  float maxTime = 9 * 60; // 9 minutes in seconds
  
  fill(150); // Gray color
  rect(275, 525 + 200 * (1 - Warm_Up_time / maxTime), 110, 200 * Warm_Up_time / maxTime, 5);
  
  fill(253,207,88); // Yellow color
  rect(400, 525 + 200 * (1 - Fat_Burn_time / maxTime), 110, 200 * Fat_Burn_time / maxTime, 5);
  
  fill(240,127,19); // Orange color
  rect(525, 525 + 200 * (1 - Hard_Core_time / maxTime), 110, 200 * Hard_Core_time / maxTime, 5);
  
  fill(237,85,85); // Red color
  rect(650, 525 + 200 * (1 - VO2_Max_time / maxTime), 110, 200 * VO2_Max_time / maxTime, 5);

}
  
