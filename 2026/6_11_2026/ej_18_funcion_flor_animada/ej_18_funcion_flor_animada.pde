// Ejemplo 18 - integracion: funcion que retorna + for + rotate + translate + animacion
// Juntamos todo. Una funcion calcula el tamano de cada petalo segun su indice,
// el for los reparte con rotate, y una variable global hace girar la flor.

float giro = 0;
int petalos = 12;

void setup() {
  size(400, 400);
  noStroke();
}

void draw() {
  background(20);

  translate(200, 200);
  rotate(giro);            // gira toda la flor

  for (int i = 0; i < petalos; i++) {
    pushMatrix();
    rotate(radians(360.0 / petalos * i)); // repartimos los petalos
    translate(70, 0);                      // los alejamos del centro

    float d = tamanoPetalo(i);             // la funcion devuelve el tamano
    fill(255, 100 + i * 10, 150);
    ellipse(0, 0, d, d);

    popMatrix();
  }

  // centro de la flor
  fill(255, 220, 0);
  ellipse(0, 0, 40, 40);

  giro = giro + 0.01;
}

// Recibe el indice del petalo y DEVUELVE su diametro.
// Alterna petalos grandes y chicos usando el resto (par/impar).
float tamanoPetalo(int i) {
  if (i % 2 == 0) {
    return 50;
  } else {
    return 35;
  }
}
