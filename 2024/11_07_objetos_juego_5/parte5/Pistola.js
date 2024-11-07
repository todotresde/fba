class Pistola{
  constructor(posX, posY){
    this.posX = posX;   
    this.posY = posY + 20;
    this.bala = new Bala(this.posX, this.posY);    
    this.cantBalas = 5;
    this.balaDisparada = false;
  }
  
  dibujar(){
    fill(255,0,0);
    rect(this.posX, this.posY, 60, 15);    
    
    if(this.balaDisparada){
      this.bala.posX+=5;
    }else{
      this.bala.posX = this.posX;
    }
    
    this.bala.dibujar();
  }
  
  teclaPresionada(){
    if(keyCode === ENTER){
      this.balaDisparada = true;
    }
  }
}
