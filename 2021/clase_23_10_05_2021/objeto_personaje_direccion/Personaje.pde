class Personaje{
  //Atributos
  int posX;
  int posY;
  
  PImage personaje_der = loadImage("personaje_der.png");
  PImage personaje_izq = loadImage("personaje_izq.png");
  
  //Constructores
  Personaje(){
    this.posX = round(random(50, width-200));
    this.posY = round(random(50, height-200));
  }
  
  Personaje(int _posX, int _posY){
    this.posX = _posX;
    this.posY = _posY;
  }
  
  //Método ú acciones
  void dibujar(){
    image(personaje_der, this.posX, this.posY);
  }
  
  void moverIzquierda(){
    this.posX = this.posX - 5;
  }
  
  void moverDerecha(){
    this.posX = this.posX + 5;
  }
}
