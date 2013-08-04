int r = 300;

// each frame we calculate a new position and store it in
// a list
FloatList x = new FloatList();
FloatList y = new FloatList();

void setup() {
  size(displayWidth, displayHeight);
  background(255);
  stroke(#007DB4);
}

void draw() {

  // calculate our angle based on time
  // divide by 500.0 to slow the rotation down
  float theta = millis()/500.0;

  // polar to cartesian conversion
  // we take -sin() because in traditional math coordinates
  // y values as we move up, but in computer graphics
  // graphics, an increase in y goes down. So we invert.
  
  // calculate a new position for x and y and add it to a list
  float currentX = r * cos(1.9*theta);
  x.append(currentX);

  float currentY = r * -sin(3.1*theta);
  y.append(currentY);



  // set our (0, 0) point to be the 
  // center of the screen, just like in 
  // geometry class!
  pushMatrix();
  translate(width/2, height/2);

  // loop through the list of x, y points and
  // draw out a shape which connects all the dots
  beginShape();
  for (int i = 0; i < x.size(); i++) {
    vertex(x.get(i), y.get(i));
  }
  endShape();
  //endShape(CLOSE);

  popMatrix();
}

boolean sketchFullScreen() {
  return true;
}

