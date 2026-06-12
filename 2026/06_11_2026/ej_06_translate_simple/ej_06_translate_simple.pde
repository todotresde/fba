// Ejemplo 6 - translate simple (SIN for)
// translate() mueve el ORIGEN (0,0) del sistema de coordenadas.
// Despues de trasladar, dibujamos la figura siempre en (0,0)
// pero aparece en el lugar al que movimos el origen.

void setup() {
  size(400, 400);
  background(255);
  rectMode(CENTER);

  // El origen arranca en la esquina superior izquierda (0,0).
  // Lo movemos al centro de la ventana:
  translate(200, 200);

  // Ahora (0,0) es el centro. Dibujamos ahi mismo.
  fill(50, 120, 200);
  rect(0, 0, 100, 100);

  // Observacion: si volviera a usar translate, se SUMA al anterior.
}
