class Enemigo {
  constructor() {
    this.posX = 100;
    this.posY = -50;
    this.velocidad = 1;
  }

  dibujar() {
    fill(255,0,0);
    rect(this.posX, this.posY, 20, 20);
    this.posY = this.posY + this.velocidad;
  }

  mover() {
  }
}
