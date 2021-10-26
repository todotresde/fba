class ParedLadrillo{
  PImage imagen;
  int posX, posY, tamCelda;
  
  ParedLadrillo(){
    this.imagen = loadImage("pared_ladrillo.png");
  }
  
  void dibujar(){
    image(this.imagen, this.posX, this.posY, this.tamCelda, this.tamCelda);
  }

}
