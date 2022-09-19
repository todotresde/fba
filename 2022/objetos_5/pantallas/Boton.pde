class Boton {
  int posX, posY, ancho, alto;
  
  Boton() {
    posX = round(random(100,width-100));
    posY = round(random(100,width-100));
    ancho = round(random(10,50));
    alto = round(random(5,10));
  }

  void dibujar() {
    fill(150);
    rect(posX, posY, ancho, alto);
  }
  
  
  void mousePresionado() {
  }

}
