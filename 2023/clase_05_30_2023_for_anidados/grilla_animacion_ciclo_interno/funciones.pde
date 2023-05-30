void mover() {
  if (frameCount%5 == 0) {
    if (deboMoverDerecha()) {
      moverDerecha();
    } else if (deboMoverIzquierda()) {
      moverIzquierda();
    } else if (deboMoverArriba()) {
      moverArriba();
    } else if (deboMoverAbajo()) {
      moverAbajo();
    }
    cambiarDireccion();
    cambiarBucle();
  }
}

void cambiarDireccion() {
  if (posX == cantPorBucle-1 && dirX == 1 && dirY == 0) {
    dirX = 0;
    dirY = 1;
  } else if (posY == cantPorBucle-1 && dirX == 0 && dirY == 1) {
    dirX = -1;
    dirY = 0;
  } else if (posX == minPorBucle && dirX == -1 && dirY == 0) {
    dirX = 0;
    dirY = -1;
  } else if (posY == minPorBucle && dirX == 0 && dirY == -1) {
    dirX = 1;
    dirY = 0;
    inicioBucle = true;
  }
}

void cambiarBucle() {
  if (inicioBucle){
    inicioBucle = false;
    minPorBucle = minPorBucle + 1;
    cantPorBucle = cantPorBucle - 1;
    posX++;
    posY++;
  }
}
