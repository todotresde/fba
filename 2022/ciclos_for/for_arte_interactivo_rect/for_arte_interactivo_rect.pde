int cant = 10;

void setup() {
  size(400, 400);
}

void draw() {
  background(200);
  int tam = 40;
  rectMode(CORNER);
  for (int i=0; i<cant; i++) {
    if (i%2==0) {
      fill(0);
    } else {
      fill(255);
    }
    rect(i*tam, 0, tam, height);
  }
  rectMode(CORNERS);
  for (int i=0; i<cant; i++) {
    if (i%2==0) {
      fill(0);
    } else {
      fill(255);
    }
    rect(0, 0, mouseX - (i*tam), mouseY - (i*tam));
  }
}
