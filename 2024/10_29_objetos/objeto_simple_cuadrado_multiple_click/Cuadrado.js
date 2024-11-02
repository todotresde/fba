class Cuadrado{
  constructor(posX, posY, ancho, alto, miColor) {
    this.posX = posX;
    this.posY = posY;
    this.alto = alto;
    this.ancho = ancho;
    this.colorDeFondo = miColor;
    this.visible = true;
  }
  
  dibujar() {
    if(this.visible === true){
      fill(this.colorDeFondo);
      rect(this.posX, this.posY ,this.ancho, this.alto);
    }
  }
  
  click() {
    if(mouseX > this.posX && mouseX < this.posX + this.ancho &&
    mouseY > this.posY && mouseY < this.posY + this.alto){
      this.visible = false;
    }
  }
}
