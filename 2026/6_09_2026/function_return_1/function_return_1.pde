

void setup() {
  size(500, 500);
}

void draw() {
  background(200);
  float dist = obtenerDistanciaMouse(200, 200);
  float ancho = calcularAnchoLinea(dist);
  strokeWeight(ancho);
  ellipse(200, 200, 50, 50);
}
