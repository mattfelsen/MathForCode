int d = 500;
int r = d/2;

float theta;
boolean advance = true;

PFont font = createFont("Courier", 64);

void setup() {
  size(displayWidth, displayHeight);
  textFont(font);
  rectMode(CENTER);
}

void draw() {
  background(255);

  // draw main crosshair
  stroke(0);
  line(0, height/2, width, height/2);
  line(width/2, 0, width/2, height);

  // draw big circle in the middle
  noStroke();
  fill(#007DB4, 90);
  ellipse(width/2, height/2, d, d);

  // calculate our angle based on time
  // divide by 500.0 to slow the rotation down
  if (advance) {
    theta = millis()/1000.0;
  }

  // polar to cartesian conversion
  // we take -sin() because in traditional math coordinates
  // y values as we move up, but in computer graphics
  // graphics, an increase in y goes down. So we invert.
  float x = r * cos(theta);
  float y = r * -sin(theta);


  pushMatrix();
  // move to center of screen
  translate(width/2, height/2);

  fill(0);
  stroke(0);

  // draw a line from the center of the circle
  // to whatever the current angle is
  line(0, 0, x, y);

  // draw lines which follow either the x or y values
  // of the rotating ellipse
  rect(x, r, 1, 30);
  rect(r, y, 30, 1);

  popMatrix();

  // show the angle in radians and degrees
  String timeText = "   time: " + theta;
  String degText = "degrees: " + int(degrees(theta) % 360);
  String radText = "radians: " + theta % TWO_PI;
  if (radText.length() > 13) radText = radText.substring(0, 13);
  text(timeText, 25, 70);
  text(radText, 25, 140);
  text(degText, 25, 210);

  // show the sin/cos values
  String cosText = "cos: " + cos(theta);
  String sinText = "sin: " + -sin(theta);
  text(cosText, 25, 800);
  text(sinText, 25, 870);
}

boolean sketchFullScreen() {
  return true;
}

void keyPressed() {
  if (key == ' ') {
    advance = !advance;
  }
}
