int rectX;
int rectY;

void setup() {
  size(displayWidth, displayHeight);
  rectMode(CENTER);
  fill(#007DB4, 90);
  noStroke();

  rectX = width/2;
  rectY = height/2;
}

void draw() {
  background(255);

  float theta = atan2(rectY - mouseY, rectX - mouseX);

  pushMatrix();
  translate(width/2, height/2);

  rotate(theta);
  rect(0, 0, 200, 200);

  translate(-50, 0);
  rect(0, 0, 50, 50);

  popMatrix();
}

boolean sketchFullScreen() {
  return true;
}

