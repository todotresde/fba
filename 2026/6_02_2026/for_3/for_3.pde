int cantidad = 1;

void setup() {
  size(400, 400);
}

void draw() {
  dibujarGrilla(cantidad);
}

void mouseClicked(){
  cantidad++;
}
