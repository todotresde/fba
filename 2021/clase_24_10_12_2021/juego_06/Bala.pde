class Bala{
  int posX, posY, ancho, alto;
  boolean disparada;
  
  Bala(int posX, int posY){
    this.ancho = 5;
    this.alto = 5;
    this.posX = posX;
    this.posY = posY;
    this.disparada = false;
  }
  
  void dibujar(){
    fill(0);
    ellipse(this.posX, this.posY, this.ancho, this.alto);
    
    if(disparada){
      this.posY-=5;
    }
  }
  
  void dispararse(){
    disparada = true;
  }
  
  void cambiarPosX(int posX){
    this.posX = posX;
  }
}
