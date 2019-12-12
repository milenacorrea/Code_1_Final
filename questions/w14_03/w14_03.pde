// this code draws an system where one ellipse rotates around another.
// replace this drawing code with a function that can be used to 
// draw the system repeatedly, like "drawSystem()". It should
// take arguments that allow parameters of the system to be customized,
// like the distance between each ellipse, the speed of rotation, and 
// the size of the ellipses.
// use your function to draw the system multiple times in the sketch
// as seen in the example gif.

void setup() {
  size(600, 600);
}

void draw() {
  background(0);
  drawSystem(width/2, height/2, 150, 0, 0.05, 50, 100);
  drawSystem(width, height/4, 180, 0, 0.2, 30, 150);
  drawSystem(30, 30, 160, 0, 0.01, 10, 150);
}

void drawSystem(float xPos, float yPos, float distX, float distY, float speed, float sizeSmall, float sizeBig) {

  pushMatrix();
  translate(xPos, yPos);
  rotate(frameCount * speed);
  ellipse(0, 0, sizeBig, sizeBig);

  pushMatrix();
  translate(distX, distY);
  ellipse(0, 0, sizeSmall, sizeSmall);
  popMatrix();

  popMatrix();
}
