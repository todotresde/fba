
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
  return posX < cantPorBucle-1 && posY == minPorBucle && dirX == 1 && dirY == 0;
}

boolean deboMoverIzquierda() {
  return posX > minPorBucle && posY == cantPorBucle-1 && dirX == -1 && dirY == 0;
}

boolean deboMoverArriba() {
  return posX == minPorBucle && posY > minPorBucle && dirX == 0 && dirY == -1;
}

boolean deboMoverAbajo() {
  return posX == cantPorBucle-1 && posY < cantPorBucle-1 && dirX == 0 && dirY == 1;
}
