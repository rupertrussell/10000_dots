// Exploring Perlin Noise Space
// December 23 2022
// Looking for patterns in discontinuities
// Last day of work for 2022

float xoff = 0.0; // perlin noise offset
float fill = 0;
float stepSize = 100;
float y = 0;
int counter = 0;
float perlinNoiseStepSize = 50;
void setup() {
  background(0);
  size (1000, 1000); 
  // noLoop();
  // stroke(255/2);
  frameRate(4);
}

void draw() {
  translate( stepSize * .5, stepSize * .5);
  for (float y =0; y < height; y = y + stepSize) {
    for (float x = 0; x <  width; x = x + stepSize) {
      xoff = xoff + perlinNoiseStepSize;
      int n = round(noise(xoff) * 955);
      fill(n);
      ellipse(x, y, stepSize - stepSize * 0.2, stepSize - stepSize * 0.2);
    }
  }
  save(counter + ".png");
  println("saved " + counter + ".png");
  counter ++;
  if(counter > 100) exit();
}
