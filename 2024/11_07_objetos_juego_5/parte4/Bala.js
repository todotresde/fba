class Bala{
  constructor(posX, posY){
    this.posX = posX;   
    this.posY = posY;
    this.tam = 5;
  }
  
  dibujar(){
    fill(0);
    ellipse(this.posX, this.posY, this.tam, this.tam);
  }
}
