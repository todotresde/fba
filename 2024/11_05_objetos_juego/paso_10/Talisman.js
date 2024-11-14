class Talisman {
  constructor(posX, ubicacion) {
    this.posX = posX;
    this.rebote = false;
    this.activo = true;
    
    if (ubicacion) {
      this.posY = random(-50, -200);
      this.velocidad = random(0.5, 1);
    } else {
      this.posY = height + random(50, 200);
      this.velocidad = -random(0.5, 1);
    }
  }

  dibujar() {
    if(this.activo){
      fill(255, 0, 0);
      rect(this.posX, this.posY, 20, 20);
      this.posY = this.posY + this.velocidad;
      
      if(this.rebote === false && (this.posY > 0 && this.posY < height)){
        this.rebote = true;
      }
      if (this.rebote === true && (this.posY > height || this.posY < 0)) {
        this.velocidad = this.velocidad * -1;
      }
    }
  }

  mover() {
  }
}
