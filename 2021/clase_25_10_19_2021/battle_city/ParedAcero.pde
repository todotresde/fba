class ParedAcero{
  PImage imagen;
  int posX, posY, tamCelda;
  
  ParedAcero(){
    this.imagen = loadImage("pared_acero.png");
  }
  
  void dibujar(){
    image(this.imagen, this.posX, this.posY, this.tamCelda, this.tamCelda);
  }
  
}
