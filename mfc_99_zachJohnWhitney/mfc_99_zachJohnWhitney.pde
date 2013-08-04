// From Algorithmic Animation
// with Zach Lieberman, Fall 2012

void setup() {
  size(displayWidth, displayHeight);
  fill(#007DB4);
  noStroke();
  rectMode(CENTER);
}

void draw() {
  background(255);

  float centerX = width/2;
  float centerY = height/2;
  
  ellipse(centerX, centerY, 10, 10);

  for (int i = 0; i < 40; i++) {

    float radius = 50 + i * 20;
    float angle = millis() / 1000.0 * (1 + i / 10.0);
    //float angle = millis() / 1000.0;
    float x = centerX + radius * cos(angle);
    float y = centerY + radius * -sin(angle);

    ellipse(x, y, 10, 10);
  }
}

boolean sketchFullScreen() {
  return true;
}


