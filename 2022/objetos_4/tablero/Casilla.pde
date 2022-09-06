class Casilla {
  int posX;
  int posY;
  int tam;
  Ficha ficha;
  
  Casilla(int _posX, int _posY, int _tam) {
    posX = _posX;
    posY = _posY;
    tam = _tam;
  }
  
  Casilla(int _posX, int _posY, int _tam, Ficha _ficha) {
    ficha = _ficha;
    posX = _posX;
    posY = _posY;
    tam = _tam;
  }

  void dibujar() {
    rect(posX * tam, posY * tam, tam, tam);
    if(ficha != null)
      ficha.dibujar();
  }

}
