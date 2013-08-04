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

  // calculate our angle based on time
  // divide by 500.0 to slow the rotation down
  float theta = millis()/1000.0;

  // polar to cartesian conversion
  // we take -sin() because in traditional math coordinates
  // y values as we move up, but in computer graphics
  // graphics, an increase in y goes down. So we invert.
  float x = r * cos(theta);
  float y = r * -sin(theta);

  // set our (0, 0) point to be the 
  // center of the screen, just like in 
  // geometry class!
  pushMatrix();
  translate(width/2, height/2);
  noStroke();
  // then draw circle at calculated x,y
  ellipse(x, y, 50, 50);

  popMatrix();
}

boolean sketchFullScreen() {
  return true;
}

