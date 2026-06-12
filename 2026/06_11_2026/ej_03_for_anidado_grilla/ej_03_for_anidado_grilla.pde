// Ejemplo 3 - for anidado: grilla de cuadrados
// Primer ciclo anidado. El ciclo de afuera maneja las FILAS
// y el de adentro las COLUMNAS.

void setup() {
  size(400, 400);
  background(255);
  stroke(0);
  fill(200, 100, 100);

  // Ciclo externo: recorre las filas (eje Y)
  for (int y = 0; y < 400; y = y + 50) {
    // Ciclo interno: por CADA fila, recorre todas las columnas (eje X)
    //for (int x = 0; x < 400; x = x + 50) {
    //    rect(x, y, 40, 40);
      for (int x = 0; x < 8; x = x + 1) {
        rect(x * 50, y, 40, 40);
    }
  }
}
