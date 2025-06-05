void dibujarTablero(int cantidad) {
  for (int j=0; j<cantidad; j=j+1) {
    for (int i=0; i<cantidad; i=i+1) {
      dibujarCelda(i, j);
    }
  }
}

void dibujarCelda(int i, int j) {
  float r = dist(mouseX, mouseY, i*tam, j*tam);
  fill(0,0,r);
  rect(i*tam, j*tam, tam, tam);
}
