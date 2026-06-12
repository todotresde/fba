// Ejemplo 9 - rotate + for: rueda de lineas
// Misma idea que el ejemplo anterior, pero rotando un poco en cada vuelta.
// 12 lineas, girando 30 grados cada una (12 * 30 = 360, la vuelta completa).

void setup() {
  size(400, 400);
  background(255);
  stroke(0);
  strokeWeight(3);

  // Centro de la rueda
  translate(200, 200);

  for (int i = 0; i < 12; i++) {
    line(0, 0, 0, -150);   // linea desde el centro hacia arriba
    rotate(radians(30));   // giramos el sistema para la proxima linea
  }
}
