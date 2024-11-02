class Cuadrado{
  constructor() {
    this.posX = 100;
    this.posY = 100;
    this.alto = 100;
    this.ancho = 100;
    this.colorDeFondo = color(255,0,0);
  }
  
  dibujar() {
    fill(this.colorDeFondo);
    rect(this.posX, this.posY ,this.ancho, this.alto);
  }
}
