// Ejemplo 16 - funcion que retorna + translate + for: espiral
// La funcion calcula cuanto avanzar en cada paso de la espiral.
// Como translate es acumulativo, vamos "caminando" el origen hacia afuera
// mientras rotamos un poco en cada vuelta.

void setup() {
  size(400, 400);
  background(255);
  noStroke();
  fill(200, 100, 100);

  translate(200, 200);   // origen al centro

  for (int i = 0; i < 60; i++) {
    float paso = avance(i);   // la funcion decide cuanto alejarnos en este paso
    ellipse(0, 0, 12, 12);
    translate(paso, 0);       // nos movemos hacia afuera
    rotate(radians(25));      // y giramos para armar la espiral
  }
}

// Recibe el numero de paso y DEVUELVE cuanto avanzar.
// Cuanto mayor el indice, mas grande el avance -> la espiral se abre.
float avance(int i) {
  return i * 0.4;
}
