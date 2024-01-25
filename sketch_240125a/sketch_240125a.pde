PImage img;
int value = 100;
int textX = 50;
int textY = 18;

void setup() {
  size(400, 475);
  img = loadImage("contour-male.png");
}

void draw() {
  //Coordinates:
  //kepala      = 125,50
  //dada atas   = 125,120 
  //punggung    = 125,150 
  //pantat      = 125,240 
  //pantat      = 125,400 
  
  background(0);

  greenDot(value);
  image(img, 50, 25);
  
  //TEXT KETERANGAN
  textSize(14);
  fill(0, 255, 0);
  text("Normal", textX, textY); 
  
  textSize(14);
  fill(255, 255, 0);
  text("Ringan", textX + 70, textY); 
  
  textSize(14);
  fill(255, 0, 0);
  text("Berat", textX + 140, textY); 
   
}

void redDot(int brightness) {
  for (int i = 0; i < 85; i++) {
    int d = 1 + (i*2);
    int alpha = brightness - (i*3);
    noStroke();
    fill(255, 0, 0, alpha);
    //    print("d:" + d + " ");
    //    print("alpha:" + alpha + " ");
    ellipse(125, 400, d, d);
  }
}
void yellowDot(int brightness) {
  for (int i = 0; i < 85; i++) {
    int d = 1 + (i*2);
    int alpha = brightness - (i*3);
    noStroke();
    fill(255, 255, 0, alpha);
    //    print("d:" + d + " ");
    //    print("alpha:" + alpha + " ");
    ellipse(125, 400, d, d);
  }
}
void greenDot(int brightness) {
  for (int i = 0; i < 85; i++) {
    int d = 1 + (i*2);
    int alpha = brightness - (i*3);
    noStroke();
    fill(0, 255, 0, alpha);
    //    print("d:" + d + " ");
    //    print("alpha:" + alpha + " ");
    ellipse(125, 400, d, d);
  }
}
