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
    fill(255);
    rect(posX * tam, posY * tam, tam, tam);
    if(tengoFicha())
      ficha.dibujar();
  }
  
  void mousePresionado() {
    if(tengoFicha()){
      ficha.mousePresionado();
    }
  }
  
  boolean tengoFicha(){
    return ficha != null;
  }
  
  void deseleccionarFicha(){
    if(tengoFicha())
        ficha.deseleccionar();
  }
  
  boolean fichaSeleccionada(){
    if(tengoFicha()){
      return ficha.seleccionada;
    }else{
      return false;
    }
  }
  
  void quitarFicha(){
    if(tengoFicha()){
      ficha = null;
    }
  }

}
