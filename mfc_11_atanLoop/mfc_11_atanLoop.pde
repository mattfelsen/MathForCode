int numShapes = 3;

void setup() {
  size(displayWidth, displayHeight);
  rectMode(CENTER);
  fill(#007DB4, 90);
  noStroke();
}

void draw() {
  background(255);

  for (int i = 1; i <= numShapes; i++) {
    int rectX = width/(numShapes+1) * i;
    int rectY = height/2;

    float theta = atan2(rectY - mouseY, rectX - mouseX);

    pushMatrix();
    translate(rectX, rectY);

    rotate(theta);
    rect(0, 0, 200, 200);

    translate(-50, 0);
    rect(0, 0, 50, 50);

    popMatrix();
  }
}

boolean sketchFullScreen() {
  return true;
}

