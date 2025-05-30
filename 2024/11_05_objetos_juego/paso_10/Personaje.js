class Personaje{
  constructor(){
    this.posX = 25;
    this.posY = height/2;
    this.vidas = 1;
    this.cantTalismanes = 0;
  }
  
  dibujar(){
    fill(0,255,0);
    ellipse(this.posX, this.posY, 50, 50);
    textSize(20);
    fill(0);
    text(this.cantTalismanes, this.posX + 30, this.posY - 30);
  }
  
  moverDerecha(){
    this.posX = this.posX + 1;
  }
  
  moverIzquierda(){
    this.posX = this.posX - 1;
  }
  
  teclaPresionada(){
    if(keyCode === RIGHT_ARROW){
      this.moverDerecha();
    }else if(keyCode === LEFT_ARROW){
      this.moverIzquierda();
    }
  }
  
  sumarTalisman(){
    this.cantTalismanes++;
  }
}
