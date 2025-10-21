class AutoEnemigo{
  constructor(posX, posY){
    this.posX = posX;
    this.posY = posY;
    this.velocidad = 3;
    this.color = color(0,255,0);
  }
  
  dibujar(){
    fill(this.color);
    rect(this.posX, this.posY, 30, 50);
    this.mover();
  }
  
  mover(){
    this.posY = this.posY + this.velocidad;
  }
}
