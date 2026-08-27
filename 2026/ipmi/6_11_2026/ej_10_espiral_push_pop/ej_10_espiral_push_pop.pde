// Ejemplo 10 - translate + rotate + for + pushMatrix/popMatrix
// Combinamos todo. Para que cada cuadrado gire sobre su propio centro
// SIN arrastrar a los demas, usamos pushMatrix()/popMatrix():
//   pushMatrix() = guarda el sistema de coordenadas actual
//   popMatrix()  = lo restaura tal como estaba
// Asi cada figura hace su transformacion "en privado".

void setup() {
  size(400, 400);
  background(20);
  rectMode(CENTER);
  noFill();
  stroke(100, 200, 255);

  translate(200, 200); // centro de la ventana

  for (int i = 0; i < 36; i++) {
    pushMatrix();            // guardo el estado actual del origen

    rotate(radians(i * 10)); // cada cuadrado un poco mas girado
    translate(120, 0);       // lo alejo del centro
    rect(0, 0, 50, 50);

    popMatrix();             // restauro: el proximo arranca limpio desde el centro
  }
}
