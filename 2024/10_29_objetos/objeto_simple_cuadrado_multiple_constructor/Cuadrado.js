class Cuadrado{
  constructor(posX, posY, ancho, alto, miColor) {
    this.posX = posX;
    this.posY = posY;
    this.alto = alto;
    this.ancho = ancho;
    this.colorDeFondo = miColor;
  }
  
  dibujar() {
    fill(this.colorDeFondo);
    rect(this.posX, this.posY ,this.ancho, this.alto);
  }
}
