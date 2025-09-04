void dibujarTablero(int cantidad) {
  for (int j=0; j<cantidad; j=j+1) {
    for (int i=0; i<cantidad; i=i+1) {
      dibujarCelda(i, j);
    }
  }
}

void dibujarCelda(int i, int j) {
  float miColor = map(i, 0, cant, 255, 0);
  fill(255,miColor,miColor);
  noStroke();
  rect(i*tam, j*tam, tam, tam);
}
