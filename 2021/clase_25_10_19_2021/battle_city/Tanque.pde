class Tanque{
  PImage imagen;
  int posX, posY, tamCelda;
  Mapa mapa;
  
  Tanque(Mapa mapa){
    this.imagen = loadImage("tanque2.png");
    this.mapa = mapa;
  }
  
  void dibujar(){
    image(this.imagen, this.posX, this.posY, this.tamCelda, this.tamCelda);
  }
  
  void teclaPresionada(){
    if(keyCode == UP){
      this.mapa.subirDesde(this.posX, this.posY);
    }
  }
}
