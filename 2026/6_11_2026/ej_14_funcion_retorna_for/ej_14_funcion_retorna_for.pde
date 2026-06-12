// Ejemplo 14 - funcion que RETORNA un valor + for
// Hasta ahora usamos funciones tipo void (setup, draw) que "hacen" cosas.
// Ahora creamos una funcion que DEVUELVE un valor con return.
// Estructura:  tipo  nombre(parametros) { ... return valor; }
//              float posicionX(int indice)  ->  devuelve un float
// La usamos como si fuera un numero, dentro del for.

void setup() {
  size(500, 200);
  background(255);
  noStroke();
  fill(50, 120, 200);

  for (int i = 0; i < 7; i++) {
    float x = posicionX(i);   // llamamos a la funcion y guardamos lo que devuelve
    ellipse(x, 100, 40, 40);
  }
}

// Recibe un indice (int) y DEVUELVE la coordenada X (float) de ese circulo.
float posicionX(int indice) {
  return 50 + indice * 60;
}
