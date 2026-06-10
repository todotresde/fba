
float obtenerDistanciaMouse(int posX, int posY) {
  return dist(mouseX, mouseY, posX, posY);
}

float calcularAnchoLinea(float dist){
  return map(dist, 0, 300, 1, 5);
}
