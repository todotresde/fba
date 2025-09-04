int [] cuadrado = new int[10];
//0 va a ser el primero
//9 va a ser el último

void setup() {
  size(400, 400);
}

void draw() {
  for (int i=0; i<10; i++) {
    if (cuadrado[i] == 1) {
      fill(0);
    } else {
      fill(255);
    }
    rect(i*40, 40, 40, 40);
  }
}

void mouseClicked() {
  for (int i=0; i<10; i++) {
    if (mouseX > i*40 && mouseX < i*40 + 40 && mouseY > 40 && mouseY < 40+40) {
      if (cuadrado[i] == 1) {
        cuadrado[i] = 0;
      } else {
        cuadrado[i] = 1;
      }
    }
  }
}
