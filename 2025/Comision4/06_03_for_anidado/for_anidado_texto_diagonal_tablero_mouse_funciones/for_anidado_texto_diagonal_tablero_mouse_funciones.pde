int posX = 0;
int tam;
int cant = 10;

void setup() {
  size(400, 400);
  tam = width/cant;
  frameRate = 1;
  textSize(20);
}

void draw() {
  dibujarTablero(cant);
}
