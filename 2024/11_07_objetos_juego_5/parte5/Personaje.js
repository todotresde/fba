class Personaje{
  constructor(){
    this.vidas = 1;    
    this.posX = 50;   
    this.posY = 370;
    this.pistola = new Pistola(this.posX, this.posY);
  }
  
  dibujar(){
    fill(0,0,255);
    rect(this.posX, this.posY, 30, 100);
    this.pistola.dibujar();
  }
  
  teclaPresionada(){
    this.mover();
    this.pistola.teclaPresionada();
  }
  
  mover(){
    if(keyCode === LEFT_ARROW){
      this.posX-=5;
    }else if(keyCode === RIGHT_ARROW){
      this.posX+=5;
    }
    this.pistola.posX = this.posX;
  }
  
  haDisparado(){
    return this.pistola.balaDisparada;
  }
}
