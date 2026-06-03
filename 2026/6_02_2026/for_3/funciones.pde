
void dibujarGrilla(int cantidad) {
  for (int j=0; j<cantidad; j++) {
    dibujarFila(j, cantidad);
  }
}

void dibujarFila(int j, int cantidad) {
  for (int i=0; i<cantidad; i++) {
    rect(i * 50, j * 50, 50, 50);
  }
}
