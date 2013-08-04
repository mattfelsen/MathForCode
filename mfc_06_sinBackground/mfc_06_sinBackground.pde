void setup() {
  size(displayWidth, displayHeight);
  colorMode(HSB, 360, 100, 100, 100);
}

void draw() {
  float time = millis()/300.0;
  float sine = sin(time);

  float hue = map(sine, -1, 1, 0, 360);
  float sat = map(sine, -1, 1, 0, 100);
  float bri = map(sine, -1, 1, 0, 100);

  background(200, 80, 80);
}

boolean sketchFullScreen() {
  return true;
}

