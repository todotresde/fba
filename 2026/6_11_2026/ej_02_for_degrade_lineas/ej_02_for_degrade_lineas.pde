// Ejemplo 2 - for con calculos: degrade de lineas
// Muestra que dentro del for se puede usar la variable del ciclo para calculos
// (color y posicion).

void setup() {
  size(400, 400);
  background(0);

  // y va de 0 a 400, de a 1 pixel: dibujamos 400 lineas.
  for (int y = 0; y < height; y++) {
    // El color depende de la posicion: arriba oscuro, abajo claro.
    //int valorColor = y * 255 / height;
    float valorColor = map(y,0,height,0,255);
    stroke(valorColor);
    line(0, y, width, y);
  }
}
