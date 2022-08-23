class ObjetoElipse {
  int posX;
  int posY;
  int dir;
  int tam;
  color miColor;

  ObjetoElipse() {
    posX = round(random(50, width-50));
    posY = round(random(50, height-50));
    tam = round(random(5, 20));
    miColor = color(random(0, 255), random(0, 255), random(0, 255));
    dir = floor(random(0, 4));
  }

  void dibujar() {
    fill(miColor);
    ellipse(posX, posY, tam, tam);

    calcularPosicion();
  }

  void calcularPosicion() {
    if (dir == 0) {
      posX++;
      if (posX>width) {
        dir = 2;
      }
    } else if (dir == 1) {
      posY++;
      if (posY>height) {
        dir = 3;
      }
    } else if (dir == 2) {
      posX--;
      if (posX<0) {
        dir = 0;
      }
    } else if (dir == 3) {
      posY--;
      if (posY<0) {
        dir = 1;
      }
    }
  }
}
