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
      this.mapa.subirContenidoCeldaDesde(this.posX, this.posY);
    }
    if(keyCode == DOWN){
      this.mapa.bajarContenidoCeldaDesde(this.posX, this.posY);
    }
    if(keyCode == LEFT){
      this.mapa.izquierdaContenidoCeldaDesde(this.posX, this.posY);
    }
    if(keyCode == RIGHT){
      this.mapa.derechaContenidoCeldaDesde(this.posX, this.posY);
    }
  }
}
