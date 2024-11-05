class Enemigo {
  constructor(posX, ubicacion) {
    this.posX = posX;
    if (ubicacion) {
      this.posY = random(-50, -200);
      this.velocidad = random(0.5,1);
    } else {
      this.posY = height + random(50, 200);
      this.velocidad = -random(0.5,1);
    }
  }

  dibujar() {
    fill(255, 0, 0);
    rect(this.posX, this.posY, 20, 20);
    this.posY = this.posY + this.velocidad;
  }

  mover() {
  }
}
