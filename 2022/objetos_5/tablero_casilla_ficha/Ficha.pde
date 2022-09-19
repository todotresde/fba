class Ficha {
  int posX;
  int posY;
  int tam;
  
  Ficha(int _posX, int _posY, int _tam) {
    posX = _posX;
    posY = _posY;
    tam = _tam;
  }

  void dibujar() {
    ellipseMode(CORNER);
    ellipse(posX * tam, posY * tam, tam, tam);
  }

}
