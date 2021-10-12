class Bala{
  int posX, posY, posYInicial, ancho, alto;
  boolean disparada;
  
  Bala(int posX, int posY){
    this.ancho = 5;
    this.alto = 5;
    this.posX = posX;
    this.posY = posY;
    this.posYInicial = posY;
    this.disparada = false;
  }
  
  void dibujar(){
    fill(0);
    ellipse(this.posX, this.posY, this.ancho, this.alto);
    
    if(disparada){
      this.posY-=5;
      if(this.posY < 0){
        this.posY = this.posYInicial;
        disparada = false;
      }
    }
  }
  
  void dispararse(){
    disparada = true;
  }
  
  void cambiarPosX(int posX){
    this.posX = posX;
  }
}
