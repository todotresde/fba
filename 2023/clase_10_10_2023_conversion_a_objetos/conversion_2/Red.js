class Red{
  constructor(){
    this.posX = 0;
    this.posY = 0;
    this.imagen = imagenRed;
  }
  
  dibujar(){
    image(this.imagen, this.posX, this.posY, 80, 80);
    this.posX = mouseX;
    this.posY = mouseY;
  }
}
