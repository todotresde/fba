// Ejemplo 4 - for anidado + condicional: tablero de ajedrez
// Combina ciclos anidados con un condicional (concepto que ya tienen).
boolean esBlanca = true;

void setup() {
  size(400, 400);
  background(255);
  //noStroke();

  int lado = 50; // tamano de cada casilla

  for (int fila = 0; fila < 8; fila++) {
    for (int col = 0; col < 8; col++) {

      // Si la suma de fila+columna es par -> negro, si es impar -> blanco
      //if ((fila + col) % 2 == 0) {
      if(esBlanca){
        fill(255);
      } else {
        fill(0);
      }
      esBlanca = !esBlanca;
      // Calculamos la posicion multiplicando el indice por el lado
      rect(col * lado, fila * lado, lado, lado);
    }
    esBlanca = !esBlanca;
  }
}
