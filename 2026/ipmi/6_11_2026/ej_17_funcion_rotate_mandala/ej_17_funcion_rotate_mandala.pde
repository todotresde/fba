// Ejemplo 17 - funcion que retorna un ANGULO + rotate + for: mandala
// La funcion calcula el angulo que le toca a cada petalo para repartirlos
// de forma pareja en los 360 grados. Asi, si cambiamos 'cantidad',
// la funcion reacomoda todo sola.

int cantidad = 10; // cantidad de petalos

void setup() {
  size(400, 400);
  background(255);
  noFill();
  stroke(120, 80, 160);
  strokeWeight(2);

  translate(200, 200);

  for (int i = 0; i < cantidad; i++) {
    pushMatrix();
    rotate(anguloPetalo(i));   // usamos el angulo que devuelve la funcion
    ellipse(0, 80, 60, 140);   // petalo alejado del centro
    popMatrix();
  }
}

// Recibe el indice del petalo y DEVUELVE su angulo (en radianes),
// repartiendo 360 grados entre todos los petalos.
float anguloPetalo(int i) {
  return radians(360.0 / cantidad * i);
}
