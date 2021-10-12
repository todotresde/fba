class Enemigo{
  PImage imagen;
  int posX, posY, ancho, alto;
  boolean vivo;
  
  Enemigo(int posX, int posY){
    this.imagen = loadImage("enemigo.png");
    this.ancho = 50;
    this.alto = 60;
    this.posX = posX;
    this.posY = posY;
    this.vivo = true;
  }
  
  void dibujar(){
    if(this.vivo){
      image(this.imagen, this.posX, this.posY, this.ancho, this.alto);
    }
  }
  
  void matar(){
    vivo = false;
  }
  
}
