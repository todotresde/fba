class Bala{
  constructor(){
    this.posX = 200;    
    this.posY = 200;
    this.tam = 5;
  }
  
  dibujar(){
    fill(0);
    ellipse(this.posX, this.posY, this.tam, this.tam);
  }
}
