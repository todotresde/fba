// Ejemplo 8 - translate + for: fila de cuadrados
// Aca aparece la idea potente: translate() es ACUMULATIVO.
// Si dentro de un for trasladamos un poco en cada vuelta,
// el origen se va "caminando" y las figuras quedan en fila.

void setup() {
  size(500, 200);
  background(255);
  rectMode(CENTER);
  fill(50, 120, 200);

  // Empezamos posicionando el origen
  translate(50, 100);

  for (int i = 0; i < 7; i++) {
    rect(0, 0, 40, 40);   // siempre dibujamos en (0,0)...
    translate(60, 0);     // ...pero antes de la proxima vuelta movemos el origen 60px
  }
}
