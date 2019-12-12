// 5

// This sketch uses a loop to draw a group of 
// ellipses. It uses a single float to represent
// their x positions. Replace this float with an
// array of floats so that each ellipse can have 
// a unique x position, then increment the position
// if the mouse is inside the ellipse.

// create an array of values corresponding
// to each ellipse here:
int xPos[] = new int[10];

//int x;

void setup() {
  size(600, 600);

  // give the array values  
  xPos[0] = 30;
  xPos[1] = 30;
  xPos[2] = 30;
  xPos[3] = 30;
  xPos[4] = 30;
  xPos[5] = 30;
  xPos[6] = 30;
  xPos[7] = 30;
  xPos[8] = 30;
  xPos[9] = 30;

  noStroke();
}

void draw() {
  background(50);
  for (int i = 0; i < 10; i++) {
    float y = 30 + i * 60;

    if (dist(mouseX, mouseY, xPos[i], y) < 50) {
      xPos[i]++;
    }
    // check to see if you should increment 
    // the value at each position in the array
    // and then draw at that position

    ellipse(xPos[i], y, 50, 50);
  }
}
