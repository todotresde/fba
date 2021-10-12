class Personaje{
  PImage imagen;
  int posX, posY, ancho, alto;
  Bala bala;
  
  Personaje(){
    this.imagen = loadImage("personaje.png");
    this.ancho = 50;
    this.alto = 60;
    this.posX = width/2 - (this.ancho / 2);
    this.posY = 300;
    this.bala = new Bala(this.posX + (this.ancho / 2), this.posY + 10);
  }
  
  void dibujar(){
    this.bala.dibujar();
    image(this.imagen, this.posX, this.posY, this.ancho, this.alto);
  }
  
  void teclaPresionada(){
    if(keyCode == LEFT){
      this.posX-=5;
    }else if(keyCode == RIGHT){
      this.posX+=5;
    }else if(key == ' '){
      this.bala.dispararse();
    }
  }
}
