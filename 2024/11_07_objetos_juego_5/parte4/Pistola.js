class Pistola{
  constructor(posX, posY){
    this.posX = posX;   
    this.posY = posY + 20;
    this.bala = new Bala(this.posX, this.posY);    
    this.cantBalas = 5;
  }
  
  dibujar(){
    fill(255,0,0);
    rect(this.posX, this.posY, 60, 15);
    this.bala.posX = this.posX;
    this.bala.dibujar();
  }
}
