// this program draws a line of ellipses to the
// screen that change their color over time.
// replace the 1 dimensional array with a 
// 2 dimensional array and draw it to the screen
// as shown in the example gif. Everything already 
// works, all you have to do is add a dimension.

int cols = 10;
int rows = 10;

float[] x = new float[cols];
//float[] y = new float[cols];
float[] col = new float[cols];
float[] rate = new float[cols];

float[][] grid = new float[cols][rows];

void setup() {
  size(600, 600);
  for (int i = 0; i < cols; i++) {
    for (int j = 0;j < rows; j++) {
      x[i] = map(i, 0, cols - 1, 100, 500);
    //  y[i] = height/2;
      col[i] = random(255);
      rate[i] = random(-1, 1);
      grid[i][j] = int(random(255));
    }
  }
}

void draw() {
  background(0);
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      if (col[i] > 255 || col[i] < 0) {
        rate[i] *= -1;
      }

      col[i] += rate[i];

      noStroke();
      fill(col[i]);
      ellipse(i, j, 25, 25);
      //ellipse(grid[i][j],grid[i][j],25,25);
      
    }
  }
}
