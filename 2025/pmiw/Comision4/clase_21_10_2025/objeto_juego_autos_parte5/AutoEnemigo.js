class AutoEnemigo{
  constructor(){
    this.posX;
    this.posY;
    this.velocidad = 10;
    this.color = color(0,255,0);
  }
  
  dibujar(){
    fill(this.color);
    rect(this.posX, this.posY, 30, 50);
  }
  
  moverX(){
  }
}
