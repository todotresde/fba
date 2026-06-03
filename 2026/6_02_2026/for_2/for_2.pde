void setup() {
  size(400, 400);
}

void draw() {
  // i = 0 => 0
  // i = 1 => 50
  // i = 2 => 100
  // i = 3 => 150
  // i = 4
  // i = 5 XXXXXX
  for (int j=0; j<5; j++) {
    dibujarFila(j);
  }
}

void dibujarFila(int j) {
  for (int i=0; i<5; i++) {
    rect(i * 50, j * 50, 50, 50);
  }
}
