// Ejemplo 1 - for simple: linea de circulos
// Introduce el ciclo for mas basico: repetir una figura desplazandola.

void setup() {
  size(600, 200);
  background(255);
  noStroke();
  fill(50, 120, 200);

  // El ciclo se repite mientras x sea menor a 600.
  // En cada vuelta, x aumenta de a 60.
  //for (int x = 30; x < 600; x = x + 60) {
  //  ellipse(x, 100, 40, 40);
  for (int x = 0; x < 10; x = x + 1) {
    int posX = 30 + x * 60;
    ellipse(posX, 100, 40, 40);
  }
}
