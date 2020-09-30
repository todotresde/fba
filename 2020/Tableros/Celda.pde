class Celda{
  int posX, posY, tamX, tamY;
  color miColor;
  Ficha ficha;
  
  Celda(int p_posX, int p_posY, int p_tamX, int p_tamY){
    this.posX = p_posX;
    this.posY = p_posY;
    this.tamX = p_tamX;
    this.tamY = p_tamY;
    this.miColor = color(255);
  }
  
  void dibujar(){
    fill(this.miColor);
    rect(this.posX, this.posY, this.tamX, this.tamY);
    if(hayFicha()){
      this.ficha.dibujar();
    }
  }
  
  void moverDerecha(){
    this.posX+=10;
  }
  
  void moverIzquierda(){
    this.posX-=10;
  }
  
  void definirColor(color p_color){
    this.miColor = p_color;
  }
  
  void agregarFicha(Ficha p_ficha){
    this.ficha = p_ficha;
    this.ficha.posX = this.posX;
    this.ficha.posY = this.posY;
    this.ficha.tam = this.tamX;
  }
  
  boolean hayFicha(){
    return this.ficha != null;
  }
 
}
