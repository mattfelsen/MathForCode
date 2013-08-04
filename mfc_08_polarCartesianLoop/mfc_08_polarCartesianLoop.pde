// Based on code from Algorithmic Animation
// with Zach Lieberman, Fall 2012

int r = 300;

void setup() {
  size(displayWidth, displayHeight);
  fill(#007DB4, 90);
}

void draw() {
  background(255);

  // draw main crosshair
  stroke(0);
  line(0, height/2, width, height/2);
  line(width/2, 0, width/2, height);

  noStroke();
  pushMatrix();
  translate(width/2, height/2);

  for (int i = 0; i < 50; i++) {

    float radius = 50 + i * 20;
    float theta = millis() / 1000.0;
    //float theta = millis() / 1000.0 * (1 + i / 10.0);
    float x = radius * cos(theta);
    float y = radius * -sin(theta);

    ellipse(x, y, 20, 20);
  }


  popMatrix();
}

boolean sketchFullScreen() {
  return true;
}

