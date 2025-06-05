void dibujarTablero(int cantidad) {
  for (int j=0; j<cantidad; j=j+1) {
    for (int i=0; i<cantidad; i=i+1) {
      dibujarCelda(i, j);
    }
  }
}

void dibujarCelda(int i, int j) {
  float r = dist(mouseX, mouseY, i*tam, j*tam);
  if (mouseDentroDeCelda(i, j)) {
    fill(255);
  } else {
    fill(0, 0, r);
  }
  rect(i*tam, j*tam, tam, tam);
}

boolean mouseDentroDeCelda(int i, int j) {
  boolean retorno = mouseX > i*tam &&
    mouseX < i*tam + tam &&
    mouseY > j*tam &&
    mouseY < j*tam + tam;
  return retorno;
}
