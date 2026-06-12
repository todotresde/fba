// Ejemplo 5 - for anidado dinamico: grilla animada
// Lleva los ciclos anidados a draw() para que reaccionen al mouse.

void setup() {
  size(400, 400);
  noStroke();
}

void draw() {
  background(20);

  for (int y = 0; y < height; y = y + 40) {
    for (int x = 0; x < width; x = x + 40) {

      // Distancia desde cada circulo hasta el mouse
      float d = dist(x, y, mouseX, mouseY);

      // Cuanto mas cerca del mouse, mas grande el circulo
      float tam = map(d, 0, 400, 35, 0);

      fill(100, 200, 255);
      ellipse(x, y, tam, tam);
    }
  }
}
