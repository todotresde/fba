// Ejemplo 13 - translate + rotate + for + animacion: sistema de orbitas
// El for crea varios "planetas" en orbitas a distinta distancia,
// y cada planeta tiene una luna girando a su alrededor.
// pushMatrix/popMatrix aislan cada planeta para que no se arrastren entre si.

float angulo = 0;

void setup() {
  size(500, 500);
  noStroke();
}

void draw() {
  background(10);

  translate(250, 250); // centro del sistema

  // Sol en el centro
  fill(255, 200, 0);
  ellipse(0, 0, 40, 40);

  // for externo: 3 planetas, cada uno mas lejos y mas rapido
  for (int p = 1; p <= 3; p++) {
    pushMatrix();                 // guardamos el origen (centro)

    rotate(angulo * p);           // cada planeta gira a distinta velocidad
    translate(p * 70, 0);         // distancia segun el numero de planeta

    fill(100, 200, 255);
    ellipse(0, 0, 30, 30);        // el planeta

    // Una luna girando alrededor de ESTE planeta
    pushMatrix();
    rotate(angulo * 3);          // la luna gira mas rapido que el planeta
    translate(25, 0);
    fill(200);
    ellipse(0, 0, 10, 10);       // la luna
    popMatrix();

    popMatrix();                  // volvemos al centro para el proximo planeta
  }

  angulo = angulo + 0.02;
}
