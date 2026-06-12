int angulo = 0;

void setup() {
  size(400, 400);
  background(255);
  stroke(0);
  fill(200, 100, 100);
  rectMode(CENTER);
}

void draw(){
  background(255);
  // Ciclo externo: recorre las filas (eje Y)
  for (int y = 0; y < 400; y = y + 50) {
      for (int x = 0; x < 8; x = x + 1) {
        pushMatrix();
        translate(x * 50, y);
        rotate(radians(angulo));
        rect(0,0, 40, 40);
        popMatrix();
    }
  }
  angulo++;
}
