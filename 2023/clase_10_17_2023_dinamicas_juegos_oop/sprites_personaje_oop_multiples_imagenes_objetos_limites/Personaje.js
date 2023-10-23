class Personaje {
  constructor() {
    this.DERECHA = "DERECHA";
    this.IZQUIERDA = "IZQUIERDA";

    this.posX = random(100, width-100);
    this.posY = random(100, height-100);
    this.dir = this.DERECHA;
    this.tam = 10;
    this.vel = 1;
    this.imagenDer = imagenesMarioDer;
    this.imagenIzq = imagenesMarioIzq;
    this.spriteActual = 0;
  }

  dibujar() {
    fill(0);
    if (this.dir == this.DERECHA) {
      image(this.imagenDer[round(this.spriteActual)], this.posX, this.posY);
    } else if (this.dir == this.IZQUIERDA) {
      image(this.imagenIzq[round(this.spriteActual)], this.posX, this.posY);
    }
  }

  moverDerecha() {
    if(this.posX + 2 > width - 50){
      return;
    }
    
    this.dir = this.DERECHA;
    this.posX+=2;
    this.calcularSiguienteSprite();
  }

  moverIzquierda() {
    if(this.posX - 2 < 0){
      return;
    }
    this.dir = this.IZQUIERDA;
    this.posX-=2;
    this.calcularSiguienteSprite();
  }

  saltar() {
  }

  teclaPresionada() {
    if (keyIsPressed) {
      if (keyCode == RIGHT_ARROW) {
        this.moverDerecha();
      } else if (keyCode == LEFT_ARROW) {
        this.moverIzquierda();
      }
    }
  }

  calcularSiguienteSprite() {
    if (this.dir == this.DERECHA) {
      if (this.spriteActual >= cantImagenes-1) {
        this.spriteActual = 0;
      } else {
        this.spriteActual+=0.1;
      }
    } else if (this.dir == this.IZQUIERDA) {
      if (this.spriteActual < 0) {
        this.spriteActual = cantImagenes-1;
      } else {
        this.spriteActual-=0.1;
      }
    }
  }
}
