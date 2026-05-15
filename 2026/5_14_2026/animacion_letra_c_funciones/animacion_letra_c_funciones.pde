int posX = 300;
int posY = 100;
int tam = 50;

void setup() {
  size(400, 400);
}

void draw() {
  ellipse(posX, posY, tam, tam);

  if (siEstanEnRangoSuperior()) {
    moverElipseHaciaLaIzquierda();
  } else {
    if (siEstaEnMargenIzquerdo()) {
      moverElipseHaciaAbajo();
    } else {
      if (siEstanEnRangoInferior()) {
        moverElipseHaciaLaDerecha();
      }
    }
  }
}
