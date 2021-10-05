class Personaje{
  //Atributos
  int posX;
  int posY;
  int direccion;
  boolean seleccionado;
  
  PImage personaje_der = loadImage("personaje_der.png");
  PImage personaje_izq = loadImage("personaje_izq.png");
  
  //Constructores
  Personaje(){
    this.posX = round(random(-50, width+50));
    this.posY = round(random(-50, height+50));
    this.direccion = 1;
    this.seleccionado = false;
  }
  
  Personaje(int _posX, int _posY){
    this.posX = _posX;
    this.posY = _posY;
    this.direccion = 1;
    this.seleccionado = false;
  }
  
  //Método ú acciones
  void dibujar(){
    if(this.direccionEsHaciaDerecha()){
      image(this.personaje_der, this.posX, this.posY, 100, 100);
    }else{
      image(this.personaje_izq, this.posX, this.posY, 100, 100);
    }
  }
  
  void moverIzquierda(){
    this.direccion = -1;
    this.posX = this.posX - 5;
  }
  
  void moverDerecha(){
    this.direccion = 1;
    this.posX = this.posX + 5;
  }
  
  boolean direccionEsHaciaDerecha(){
    return this.direccion == 1;
  }
  
  void teclaPresionada(){
    if(keyCode == LEFT){
      this.moverIzquierda();
    }else if(keyCode == RIGHT){
      this.moverDerecha();
    }
  }
  
  void seleccionarPersonaje(){
    this.seleccionado = true;
  }
  
  void deseleccionarPersonaje(){
    this.seleccionado = false;
  }
  
  boolean estaSeleccionado(){
    return this.seleccionado == true;
  }
  
  boolean mousePresionado(){
    return (mouseX > this.posX && mouseX < this.posX + 100 && 
    mouseY > this.posY && mouseY < this.posY + 100);
  }
}
