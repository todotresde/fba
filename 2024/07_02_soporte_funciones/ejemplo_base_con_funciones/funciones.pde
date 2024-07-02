void dibujarRectangulos() {
  for (int i=0; i<cant; i++) {
    if (i%2 == 0) {
      fill(0);
    } else {
      fill(255);
    }
    rect(width/2, height/2, tam, tam);
    tam = tam - diferencia;
  }
}
