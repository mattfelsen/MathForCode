void setup() {
  size(displayWidth, displayHeight);
  fill(#007DB4, 80);
  noStroke();
}

void draw() {
  background(255);

  float time = millis()/300.0;

  float sine  = map(sin(time), -1, 1, 0, 1);
  float sine2 = map(sin(time + HALF_PI), -1, 1, 0, 1);
  float sine3 = map(sin(time + PI), -1, 1, 0, 1);
  float sine4 = map(sin(time + HALF_PI*3), -1, 1, 0, 1);
  
  float r = 350; 

  ellipse(width*.2, height*sine,  int(r), int(r));
//  ellipse(width*.4, height*sine2, int(r), int(r));
//  ellipse(width*.6, height*sine3, int(r), int(r));
//  ellipse(width*.8, height*sine4, int(r), int(r));
}

boolean sketchFullScreen() {
  return true;
}

