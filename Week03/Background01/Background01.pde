PImage forest;
float x;
float y;
float speedX = 5;

void setup() {
  size(800, 600, P2D);
  forest = loadImage("forest2.jpg");
  x = width/2;
  y = height/2;
  imageMode(CENTER);
}

void draw() {
  image(forest, x, y, forest.width * (height / forest.height), height);
  x += speedX;
  if (x > width || x < 0) {
    speedX *= -1;
  }
  /*
  // you can also do it this way:
  if (x > width) {
    speedX *= -1;
  } else if (x < 0) {
    speedX = abs(speedX);
  }
  */
}