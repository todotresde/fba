class Celda{
  int posX, posY, tamX, tamY;
  
  Celda(int p_posX, int p_posY, int p_tamX, int p_tamY){
    this.posX = p_posX;
    this.posY = p_posY;
    this.tamX = p_tamX;
    this.tamY = p_tamY;
  }
  
  void dibujar(){
    rect(this.posX, this.posY, this.tamX, this.tamY);
  }
  
  void moverDerecha(){
    this.posX+=10;
  }
  
  void moverIzquierda(){
    this.posX-=10;
  }
 
}
