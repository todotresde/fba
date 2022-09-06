class Tanque{
  PImage img;
  int posX, posY;
  int ancho, alto;
  
  Tanque(int _posX, int _posY, int _ancho, int _alto){
    posX = _posX;
    posY = _posY;
    ancho = _ancho;
    alto = _alto;
    img = loadImage("tanque.png");
  }
  
  void dibujar(){
    image(img, posX, posY, ancho, alto);

  }
  
  void moverDerecha(){
    posX = posX + ancho;
  }
  
  void moverIzquierda(){
    posX = posX - ancho;
  }
  
  void moverArriba(){
    posY = posY - alto;
  }
  
  void moverAbajo(){
    posY = posY + alto;
  }
  
  int posicionALaDerecha(){
    return posX + ancho;
  }
  
  int posicionALaIzquierda(){
    return posX - ancho;
  }
  
  int posicionArriba(){
    return posY - alto;
  }
  
  int posicionAbajo(){
    return posY + alto;
  }
}
