class AutoJugador{
  constructor(){
    this.posX = width/2;
    this.posY = 300;
    this.velocidad = 10;
    this.color = color(255,0,0);
  }
  
  dibujar(){
    fill(this.color);
    rect(this.posX, this.posY, 30, 50);
  }
  
  teclaPresionada(){
    if(keyCode === LEFT_ARROW){
      this.posX = this.posX - 10;
    }else if(keyCode === RIGHT_ARROW){
      this.posX = this.posX + 10;
    }
  }
}
