void setup() {
  size(displayWidth, displayHeight);
  background(255);
}

void draw() {

  noStroke();

  float time = millis()/200.0;
  float sine = sin(time);
  float cosine = cos(time);

  fill(#007DB4, 80);
  ellipse(time*25, height/2 + sine*300, 10, 10);

  fill(#00B407, 80);
  //ellipse(time*25, height/2 + -sine*300, 10, 10);
  //ellipse(time*25, height/2 + cosine*300, 10, 10);
}

boolean sketchFullScreen() {
  return true;
}

