void dibujarRectangulos(
  int tamTotal, 
  int cantidadRectangulos,
  int posX, 
  int posY
) {
  int diferencia = tamTotal/cantidadRectangulos;
  int tam = tamTotal;
  
  for (int i=0; i<cantidadRectangulos; i++) {
    if (i%2 == 0) {
      fill(0);
    } else {
      fill(255);
    }
    rect(posX, posY, tam, tam);
    tam = tam - diferencia;
  }
}
