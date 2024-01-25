PImage img;
int value = 100;

void setup() {
  size(400, 475);
  img = loadImage("contour-male.png");  // Replace "your_image.png" with the actual file name
}

void draw() {
  background(255);

  redDot(value);
  image(img, 50, 25);
}

void redDot(int brightness) {

  for (int i = 0; i < 85; i++) {
    int d = 1 + (i*2);
    int alpha = brightness - (i*3);
    noStroke();
    fill(255, 0, 0, alpha);
    //    print("d:" + d + " ");
    //    print("alpha:" + alpha + " ");
    ellipse(125, 120, d, d);
  }
}
