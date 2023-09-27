void TAB_2() {
  // Draw a very light black gradient for the Main Menu tab
  setGradient(0, 0, width, height, color(61, 61, 61), color(33, 33, 38), Y_AXIS);

  // Load the image
  PImage imgs = loadImage("dlift.jpg");
  // Define the area to crop (x, y, width, height)
  int x = 50;
  int y = 25;
  int w = 1100;
  int h = 260;
  // Crop the image
  imgs = imgs.get(x, y, w, h);
  // Draw the image onto the canvas
  image(imgs, 0, 0, imgs.width - 50, imgs.height - 100);

  // title
  textAlign(CENTER, CENTER);
  textFont(createFont("Impact", 60));
  fill(255);
  text("Deadlift Exercise", width/2, 50);

  // rectanges
  noStroke();
  fill(39, 41, 43);
  rect(25, 250, 350, 370, 20);

  fill(39, 41, 43);
  rect(425, 250, 350, 370, 20);

  // rep count
  strokeWeight(10);
  fill(180);
  textAlign(CENTER, CENTER);

  // Calculate the animated stroke color
  float strokeBrightness = 128 + 128 * sin(millis() * 0.005);
  
  stroke(112, 195, 249);
  rect(150, 130, 220, 80, 100);
  stroke(169, 200, 66);
  rect(430, 130, 220, 80, 100);
  
  // Draw the first rectangle and text
  stroke(200, 232, 230, strokeBrightness);
  fill(39, 41, 43);
  rect(150, 130, 220, 80, 100);
  fill(240);
  textFont(createFont("Impact", 40));
  text(below80Counter, 260, 150);
  fill(200);
  textFont(createFont("Impact", 20));
  text("Attempted Reps", 260, 190);

  // Draw the second rectangle and text
  stroke(234, 255, 183, strokeBrightness);
  fill(39, 41, 43);
  rect(430, 130, 220, 80, 100);
  fill(240);
  textFont(createFont("Impact", 40));
  text(depthPhaseUpdates, 540, 150);
  fill(200);
  textFont(createFont("Impact", 20));
  text("Good Reps", 540, 190);
  FootPrint2();
  KneeMovement();

  // more info
  fill(39, 41, 43);
  stroke(200, 232, 230);
  ellipse(200, 710, 120, 120);
  ellipse(400, 710, 120, 120);
  ellipse(600, 710, 120, 120);

  // Add text inside the circles
  fill(200);
  textFont(createFont("Impact", 15));
  textAlign(CENTER, CENTER);

  text("Eccentric", 200, 725);
  text("At Top", 400, 725);
  text("Concentric", 600, 725);

  fill(240);
  textFont(createFont("Impact", 30));
  textAlign(CENTER, CENTER);

  text(Eccentric_time, 200, 700);
  text(atTOP_time, 400, 700);
  text(Concentric_time, 600, 700);
}

void FootPrint2() {
  // Load the image
  PImage img = loadImage("FTO.png");

  // Set the tint color to make the image transparent
  tint(255, 200); // Change the alpha value to adjust transparency

  // Draw the image onto the canvas
  image(img, 55, 195, img.width - 100, img.height - 100);

  // Set the circle diameters and colors based on the sensor values
  float diameter_1 = map(F_sensor_2, 0, 1023, 0, 60);
  float diameter_2 = map(F_sensor_3, 0, 1023, 0, 60);

  // Make sure the diameter does not exceed 100
  diameter_1 = min(diameter_1, 60);
  diameter_2 = min(diameter_2, 60);

  // Set the circle colors based on the diameter
  color startColor = color(255, 0, 0);  // Red
  color endColor = color(0, 0, 255);   // Blue

  color c1 = lerpColor(startColor, endColor, diameter_1/60.0);
  color c2 = lerpColor(startColor, endColor, diameter_2/60.0);

  // Draw the circles
  noStroke();

  // Target
  fill(62, 218, 121);
  ellipse(130, 545, 50, 50);

  fill(62, 218, 121);
  ellipse(275, 545, 50, 50);

  fill(c1);
  ellipse(140, 325, diameter_1, diameter_1);

  fill(c2);
  ellipse(130, 545, diameter_2, diameter_2);

  fill(c1);
  ellipse(265, 325, diameter_1, diameter_1);

  fill(c2);
  ellipse(275, 545, diameter_2, diameter_2);
}

void KneeMovement() {
  // target
  fill(62, 218, 121);
  stroke(62, 218, 121);

  // Define the coordinates of the four vertices
  float x1 = width/2 + 140;
  float y1 = height/2 + 35;

  float x2 = x1 + 140 * cos(radians(-15)); // Change 15 to the desired angle
  float y2 = y1 + 140 * sin(radians(-15)); // Change 15 to the desired angle

  float x3 = x2 - 5 * cos(radians(80)); // Change 105 to the desired angle
  float y3 = y2 - 5 * sin(radians(80)); // Change 105 to the desired angle

  float x4 = x1 - 5 * cos(radians(80)); // Change 105 to the desired angle
  float y4 = y1 - 5 * sin(radians(80)); // Change 105 to the desired angle

  // Draw the diagonal rectangle
  beginShape();
  vertex(x1, y1);
  vertex(x2, y2);
  vertex(x3, y3);
  vertex(x4, y4);
  endShape(CLOSE);

  // Calculate the angle for the knee joint based on sensor values
  float kneeAngle = map(F_sensor_1, 270, 210, PI/2, 0);

  // Draw the simplified leg model
  strokeWeight(10);
  stroke(180);
  fill(180);

  // Upper legs
  pushMatrix();
  translate(width/2 + 150, height/2 + 30);
  rotate(- kneeAngle + 0.2);
  rect(0, 0, 5, 150);
  popMatrix();

  // Knee joint (circles)
  ellipse(width/2 + 150, height/2 + 30, 30, 30);

  // Lower legs
  rect(width/2 + 150, height/2 + 30, 5, 150);

  // feet
  rect(width/2 + 130, 575, 20, 5);
}
