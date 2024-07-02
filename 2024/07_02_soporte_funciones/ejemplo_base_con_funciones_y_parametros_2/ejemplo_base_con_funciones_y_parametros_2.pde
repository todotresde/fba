int posX, posY;

void setup() {
  size(400, 400);
  rectMode(CENTER);
}

void draw() {
  background(200);

  for (int j=0; j<4; j++) {
    if (j==0) {
      posX = 100;
      posY = 100;
    } else if (j==1) {
      posX = 300;
      posY = 100;
    } else if (j==2) {
      posX = 100;
      posY = 300;
    } else if (j==3) {
      posX = 300;
      posY = 300;
    }
    dibujarRectangulos(width/2, 10, posX, posY);
  }
}
