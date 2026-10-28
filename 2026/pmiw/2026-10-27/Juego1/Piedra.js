class Piedra{
  constructor(){
    this.posX = random(50, 350);
    this.posY = random(-100, -300);
    this.vel = 1;
  }
  
  mover(){
    this.posY++;
  }
  
  dibujar(){
    fill(200);
    ellipse(this.posX, this.posY, 10, 10);
    this.mover();
  }
}
