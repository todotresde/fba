class Pared{
  PImage img;
  int posX, posY;
  int ancho, alto;
  
  Pared(int _posX, int _posY, int _ancho, int _alto){
    posX = _posX;
    posY = _posY;
    ancho = _ancho;
    alto = _alto;
    img = loadImage("pared.png");
  }
  
  void dibujar(){
    image(img, posX, posY, ancho, alto);
  }
}
