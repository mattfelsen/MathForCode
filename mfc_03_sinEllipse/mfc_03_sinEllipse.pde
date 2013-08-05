void setup() {
  size(displayWidth, displayHeight);
  fill(#007DB4, 80);
  noStroke();
  rectMode(CENTER);
}

void draw() {
  background(255);

  // calculate a time variable based on the current time
  // calculate sine
  float time = millis()/300.0;
  float sine = sin(time);

  float r = 300 + time*25;
  //float r = map(sine, -1, 1, 300, 700);
  ellipse(width/2, height/2, r, r);

  float xPos = map(sine, -1, 1, 0, width);
  float yPos = map(sine, -1, 1, 0, height);
  //ellipse(xPos, height/2, 500, 500);
  //ellipse(width/2, yPos, 500, 500);
  //ellipse(xPos, yPos, 500, 500);
  
  //ellipse(xPos, height/2, r, r);
  //ellipse(width/2, yPos, r, r);
  
  //ellipse(width*.50, height/2*sine, int(r), int(r));
  //ellipse(width*.25, height/2*-sine, int(r), int(r));
  //ellipse(width*.75, height/2*-sine+height, int(r), int(r));
  
  //translate(width/2, height/2);
  //rotate(sin(millis()/500.0)*5);
  //rect(0, 0, 200, 200);

}

boolean sketchFullScreen() {
  return true;
}

