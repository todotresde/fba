void mover() {
  if (frameCount%60 == 0) {
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
  }
}

void cambiarDireccion() {
  if (posX == cant-1 && dirX == 1 && dirY == 0) {
    dirX = 0;
    dirY = 1;
  } else if (posY == cant-1 && dirX == 0 && dirY == 1) {
    dirX = -1;
    dirY = 0;
  } else if (posX == 0 && dirX == -1 && dirY == 0) {
    dirX = 0;
    dirY = -1;
  } else if (posY == 0 && dirX == 0 && dirY == -1) {
    dirX = 1;
    dirY = 0;
  }
}
