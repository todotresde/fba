
void moverDerecha() {
  posX++;
}

void moverIzquierda() {
  posX--;
}

void moverArriba() {
  posY--;
}

void moverAbajo() {
  posY++;
}

boolean deboMoverDerecha() {
  return posX < cant-1 && posY == 0 && dirX == 1 && dirY == 0;
}

boolean deboMoverIzquierda() {
  return posX > 0 && posY == cant-1 && dirX == -1 && dirY == 0;
}

boolean deboMoverArriba() {
  return posX == 0 && posY > 0 && dirX == 0 && dirY == -1;
}

boolean deboMoverAbajo() {
  return posX == cant-1 && posY < cant-1 && dirX == 0 && dirY == 1;
}
