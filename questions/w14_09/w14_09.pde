// This program is a slightly more complicated bouncing ball. 
// Turn the "beam" into a class and use an ArrayList to store
// instances of them. Create new beams every frame based on
// a input method of your choice (key press, mouse click, etc). 

void setup() {
  size(600, 600);
}

void draw() {
  background(255);
  b.display();
  b.update();
}
