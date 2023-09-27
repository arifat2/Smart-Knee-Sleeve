int X_AXIS = 1;


void start_screen() {
  setGradient(0, 0, width, height, color(61, 61, 61), color(33, 33, 38), Y_AXIS);

  // title
  textAlign(LEFT, BASELINE);
  textFont(createFont("Impact", 80));
  fill(255);
  text("Fit-Trainer", 30, 110);

  // sub title
  textFont(createFont("Impact", 40));
  fill(220);
  text("Select Workout", 30, 160);

  textFont(createFont("Impact", 20));
  fill(200);
  noStroke();

  // Rectangle 1
  fill(39, 41, 43);
  //rect(start width, start height, width, height, curve);
  rect(30, 200, 200, 150, 10);
  fill(220);
  textAlign(CENTER, CENTER);
  text("Press 1", 130, 250);
  textFont(createFont("Impact", 25));
  text("Squat Exercise", 130, 280);

  // Load the image
  PImage imgs = loadImage("squat.png");
  // Define the area to crop (x, y, width, height)
  int x = 160;
  int y = 330;
  int w = 530;
  int h = 200;
  // Crop the image
  imgs = imgs.get(x, y, w, h);
  // Draw the image onto the canvas
  image(imgs, 230, 200, imgs.width, imgs.height - 50);


  // Rectangle 2
  fill(39, 41, 43);
  //rect(start width, start height, width, height, curve);
  rect(30, 400, 200, 150, 10);
  fill(220);
  textFont(createFont("Impact", 20));
  text("Press 2", 130, 450);
  textFont(createFont("Impact", 25));
  text("Deadlift Exercise", 130, 480);

  // Load the image
  PImage imgd = loadImage("dlift.jpg");
  // Define the area to crop (x, y, width, height)
  int x2 = 150;
  int y2 = 300;
  int w2 = 530;
  int h2 = 200;
  // Crop the image
  imgs = imgd.get(x2, y2, w2, h2);
  // Draw the image onto the canvas
  image(imgd, 230, 400, imgd.width - 367, imgd.height - 150);

  // Rectangle 3
  fill(39, 41, 43);
  //rect(start width, start height, width, height, curve);
  rect(30, 600, 200, 150, 10);
  fill(220);
  textAlign(CENTER, CENTER);
  textFont(createFont("Impact", 20));
  text("Press 3", 130, 650);
  textFont(createFont("Impact", 25));
  text("Cardio", 130, 680);
  
  // Load the image
  PImage imgc = loadImage("cardio.png");
  // Define the area to crop (x, y, width, height)
  int x3 = 160;
  int y3 = 330;
  int w3 = 530;
  int h3 = 200;
  // Crop the image
  imgs = imgc.get(x3, y3, w3, h3);
  // Draw the image onto the canvas
  image(imgc, 230, 600, imgc.width - 740, imgc.height - 280);
}
