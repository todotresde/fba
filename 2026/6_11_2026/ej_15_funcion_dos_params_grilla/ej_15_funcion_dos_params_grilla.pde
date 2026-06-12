// Ejemplo 15 - funcion con DOS parametros que retorna + for anidado
// Una funcion puede recibir varios parametros. Aca recibe fila y columna
// y devuelve el tamano del circulo segun su posicion en la grilla.
// Reutilizamos la funcion en cada vuelta del for anidado.

void setup() {
  size(400, 400);
  background(20);
  noStroke();
  fill(100, 200, 255);

  for (int fila = 0; fila < 8; fila++) {
    for (int col = 0; col < 8; col++) {
      float d = tamano(fila, col);          // la funcion decide el diametro
      ellipse(col * 50 + 25, fila * 50 + 25, d, d);
    }
  }
}

// Recibe fila y columna, DEVUELVE un diametro.
// Las celdas mas cercanas a la esquina (0,0) son mas chicas.
float tamano(int fila, int col) {
  return (fila + col) * 3 + 5;
}
