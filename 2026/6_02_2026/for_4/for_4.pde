int cantidad = 1;

void setup() {
  size(400, 400);
}

void draw() {
  background(200);
  dibujarGrilla(cantidad);
}

void mouseClicked(){
  cantidad++;
}

void keyPressed(){
  cantidad--;
}
