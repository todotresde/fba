int [] posY = new int[5];

void setup() {
  size(400, 400);
}

void draw() {
  for (int i = 0; i<5; i++) {
    if (i == 2) {
      if (keyPressed && keyCode == DOWN) {
        posY++;
      }
      ellipse(100 + i *50, posY, 50, 50);
    }else{
      ellipse(100 + i *50, 100, 50, 50);
    }
  }
}
