class Personaje {
  constructor() {
    this.posX = 200;
    this.posY = 300;
    this.vel = 1;
    this.cantidadVidas = 3;
  }

  mover() {
    if(this.estaVivo()){
      if (keyIsDown(RIGHT_ARROW)) {
        this.posX += 5;
      }
      if (keyIsDown(LEFT_ARROW)) {
        this.posX -= 5;
      }
    }
  }

  dibujar() {
    if(this.estaVivo()){
      fill(0, 255, 0);
    }else{
      fill(255, 0, 0);
    }
    ellipse(this.posX, this.posY, 50, 50);
    this.mover();
    print(this.cantidadVidas);
  }
  
  morir(){
    this.cantidadVidas = 0;
  }
  
  dañar(){
    this.cantidadVidas--;
  }
  
  estaVivo(){
    return this.cantidadVidas > 0;
  }
}
