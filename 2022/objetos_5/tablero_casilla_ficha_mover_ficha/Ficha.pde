class Ficha {
  int posX;
  int posY;
  int tam;
  boolean seleccionada;
  
  Ficha(int _posX, int _posY, int _tam) {
    posX = _posX;
    posY = _posY;
    tam = _tam;
    seleccionada = false;
  }

  void dibujar() {
    if(seleccionada){
      fill(255,0,0);
    }else{
      fill(0);
    }
    ellipseMode(CORNER);
    ellipse(posX * tam, posY * tam, tam, tam);
  }
  
  void mousePresionado() {
    if(dist(mouseX, mouseY, posX * tam, posY * tam) < tam){
      seleccionada = !seleccionada;
    }
  }
  
  void deseleccionar(){
    seleccionada = false;
  }

}
