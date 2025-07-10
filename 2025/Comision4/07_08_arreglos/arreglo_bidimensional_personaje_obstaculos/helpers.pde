boolean mePuedoMover() {
  if (keyCode == LEFT && miContador[posXPersonaje-1][posYPersonaje] == 2) {
    return false;
  } else if (keyCode == RIGHT && miContador[posXPersonaje+1][posYPersonaje] == 2) {
    return false;
  } else if (keyCode == UP && miContador[posXPersonaje][posYPersonaje-1] == 2) {
    return false;
  } else if (keyCode == DOWN && miContador[posXPersonaje][posYPersonaje+1] == 2) {
    return false;
  }
  return true;
}

void mover() {
  if (keyCode == LEFT) {
    miContador[posXPersonaje][posYPersonaje] = 0;
    miContador[posXPersonaje-1][posYPersonaje] = 1;
    posXPersonaje--;
  } else if (keyCode == RIGHT) {
    miContador[posXPersonaje][posYPersonaje] = 0;
    miContador[posXPersonaje+1][posYPersonaje] = 1;
    posXPersonaje++;
  } else if (keyCode == UP) {
    miContador[posXPersonaje][posYPersonaje] = 0;
    miContador[posXPersonaje][posYPersonaje-1] = 1;
    posYPersonaje--;
  } else if (keyCode == DOWN) {
    miContador[posXPersonaje][posYPersonaje] = 0;
    miContador[posXPersonaje][posYPersonaje+1] = 1;
    posYPersonaje++;
  }
}
