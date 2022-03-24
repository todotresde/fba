void setup() {
  size(400,400);
}

void draw() {
  background(204);
  // Cuello
  stroke(102); // Hace gris el trazo
  line(266, 257, 266, 162); // Izquierda
  line(276, 257, 276, 162); // Centro
  line(286, 257, 286, 162); // Derecha
  // Antenas
  line(276, 155, 246, 112); // Pequeña
  line(276, 155, 306, 56); // Larga
  line(276, 155, 342, 170); // Mediana
  // Cuerpo
  noStroke(); // Desactiva trazo
  fill(102); // Hace gris el relleno
  ellipse(264, 377, 33, 33); // Globo antigravitacional
  fill(0); // Hace negro el relleno
  rect(219, 257, 90, 120); // Cuerpo principal
  fill(102); // Hace gris el relleno
  rect(219, 274, 90, 6); // Raya gris
  // Cabeza
  fill(0); // Hace negro el relleno
  ellipse(276, 155, 45, 45); // Cabeza
  fill(255); // Hace blanco el relleno
  ellipse(288, 150, 14, 14); // Ojo grande
  fill(0); // Hace negro el relleno
  ellipse(288, 150, 3, 3); // Pupila
  fill(153); // Hace gris claro el relleno
  ellipse(263, 148, 5, 5); // Ojo pequeño 1
  ellipse(296, 130, 4, 4); // Ojo pequeño 2
  ellipse(305, 162, 3, 3); // Ojo pequeño 3
}
