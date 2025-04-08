class Premio{
  constructor(posX, posY){
    this.posX = posX;
    this.posY = posY;
  }
  
  dibujar(){
    fill(0,0,255);
    rect(this.posX, this.posY, 30, 30);
  }
}
