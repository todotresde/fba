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
}
