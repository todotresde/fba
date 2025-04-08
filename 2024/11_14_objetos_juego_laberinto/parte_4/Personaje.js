class Personaje{
  constructor(posX, posY){
    this.posX = posX;
    this.posY = posY;
  }
  
  dibujar(){
    fill(0,255,0);
    rect(this.posX, this.posY, 30, 30);
  }
}
