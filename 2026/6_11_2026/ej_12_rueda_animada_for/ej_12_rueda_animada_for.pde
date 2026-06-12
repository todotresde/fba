// Ejemplo 12 - rotate + for + animacion: rueda de aspas girando
// Combinamos el for (que arma las aspas) con la animacion (que las hace girar).
// Truco: una rotacion global 'angulo' gira TODA la rueda, y dentro el for
// reparte las aspas con su propia rotacion.

float angulo = 0;

void setup() {
  size(400, 400);
  rectMode(CENTER);
  noStroke();
}

void draw() {
  background(20);

  translate(200, 200);  // centro de la rueda
  rotate(angulo);       // esta rotacion hace girar toda la rueda

  for (int i = 0; i < 8; i++) {
    fill(100, 200, 255);
    rect(80, 0, 60, 20);   // aspa alejada 80px del centro
    rotate(radians(45));   // 8 aspas * 45 = 360 (vuelta completa)
  }

  angulo = angulo + 0.01;  // velocidad de giro de la rueda completa
}
