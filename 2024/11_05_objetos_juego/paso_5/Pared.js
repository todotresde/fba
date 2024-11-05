class Pared{
  constructor(){
    this.posX = -100;
    this.velocidad = 0.2;
  }
  
  dibujar(){
    fill(0);
    rect(this.posX, -10, 20, height + 10);
    this.posX = this.posX + this.velocidad;
  }
  
  mover(){
  
  }
}
