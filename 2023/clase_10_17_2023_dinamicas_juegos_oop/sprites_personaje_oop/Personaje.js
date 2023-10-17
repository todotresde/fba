class Personaje {
  constructor() {
    this.posX = random(100, width-100);
    this.posY = random(100, height-100);
    this.dir = 1;
    this.tam = 10;
    this.vel = 1;
    this.imagen = imagenMario;
  }

  dibujar() {
    image(this.imagen, this.posX, this.posY);
  }
  
  moverDerecha() {
    this.posX+=2;
  }

  moverIzquierda() {
    this.posX-=2;
  }
  
  saltar(){
  }
  
  teclaPresionada(){
    if(keyIsPressed){
      if (keyCode == RIGHT_ARROW) {
        this.moverDerecha();
      } else if (keyCode == LEFT_ARROW) {
        this.moverIzquierda();
      }
    }
  }
}
