void dibujarTablero(int cantidad) {
  for (int j=0; j<cantidad; j=j+1) {
    for (int i=0; i<cantidad; i=i+1) {
      if (mouseX > i*tam && mouseX < i*tam + tam &&
        mouseY > j*tam && mouseY < j*tam + tam) {
        fill(255, 0, 0);
      } else {
        if ((i+j)%2 == 0) {
          fill(0);
        } else {
          fill(255);
        }
      }
      rect(i*tam, j*tam, tam, tam);
      fill(0);
      text(i + "-" + j, i*tam, (j*tam)+tam/2);
    }
  }
}

void dibujarCelda()
