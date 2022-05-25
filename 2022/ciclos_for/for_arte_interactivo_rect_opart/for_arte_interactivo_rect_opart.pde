int cant = 30;
float tam;

void setup() {
  size(400, 400);
}

void draw() {
  background(200);
  tam = 1;
  for (int i=1; i<cant; i++) {
    noFill();
    tam = (tam * 1.5);
    rect(mouseX, 0, tam, height);
    rect(mouseX, 0, -tam, height);
  }
  
}
