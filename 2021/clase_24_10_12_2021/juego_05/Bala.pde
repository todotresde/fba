class Bala{
  int posX, posY, ancho, alto;
  
  Bala(int posX, int posY){
    this.ancho = 5;
    this.alto = 5;
    this.posX = posX;
    this.posY = posY;
  }
  
  void dibujar(){
    fill(0);
    ellipse(this.posX, this.posY, this.ancho, this.alto);
  }
  
  void dispararse(){
  }
}
