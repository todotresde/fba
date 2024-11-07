class Pistola{
  constructor(posX, posY){
    this.posX = posX;   
    this.posY = posY;
    this.balas = [];    
    this.cantBalas = 5;
  }
  
  dibujar(){
    fill(255,0,0);
    rect(this.posX, this.posY + 20, 60, 15);
  }
}
