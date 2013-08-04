int numCircles = 4;

void setup() {
  size(displayWidth, displayHeight);
  fill(#007DB4, 80);
  noStroke();
}

void draw() {
  background(255);
  
  float time = millis()/300.0;

  for (int i = 1; i <= numCircles; i++) {
    float sine = map(sin(time + TWO_PI/numCircles*i), -1, 1, 0, 1);
    ellipse(width/(numCircles+1)*i, height*sine, 100, 100);
  }
}

boolean sketchFullScreen() {
  return true;
}

