class Ficha{
  color miColor;
  int posX, posY, tam;
  
  Ficha(color p_color){
    this.miColor = p_color;
  }
  
  void dibujar(){
    ellipseMode(CORNER);
    fill(this.miColor);
    ellipse(this.posX, this.posY, tam, tam);
  }
}
