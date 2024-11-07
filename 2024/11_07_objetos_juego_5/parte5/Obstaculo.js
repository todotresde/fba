class Obstaculo{
  constructor(){
    this.vidas = 1;    
    this.posX = 300;   
    this.posY = 370;
    this.ancho = 30;
    this.alto = 100;
  }
  
  dibujar(){
    if(this.estaVivo()){
      fill(0,255,0);
      rect(this.posX, this.posY, this.ancho, this.alto);
    }
  }
  
  matar() {
    this.vidas = 0;
  }
  
  estaVivo(){
    return this.vidas > 0;
  }
}
