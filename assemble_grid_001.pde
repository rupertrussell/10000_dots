// Program by Rupert Russell
// MIT Licence
// 23 June 2018
// This program takes a set number of small tiles (100 x 100) pixels in size
// and uses them to make a 10 x 10 grid.

PImage combinedImgage;  //  Create  variable to hold the image
int counter = 0;

void setup() {
  // make the size of the canvas 1000 x numOfColumns, 1000 * numOfRows
  size(11100, 11100); // width x height of finished 10 x 10 grid x 2 x 2

  background(0);    // black brackground
  noLoop();         // don't repeat the draw section
}

void draw() {
translate(100,100);
  // Combine a 100 x 100 Gird of tiles
  for (int i = 0; i < 10; i = i + 1) {
    for (int j = 0; j < 10; j = j + 1) {

      combinedImgage = loadImage(counter + ".png");  // load each smaller image in turn
      println("Loading image " + counter + ".png");  // load each smaller image in turn
      image(combinedImgage, j * 1100, i * 1100);
      counter ++;
    }
  }
  //  exit();
  println("Saving");
  save("test_002.png");  // save image
  println("Saved");
}
