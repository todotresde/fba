class Personaje{
  PImage imagen;
  
  Personaje(){
    imagen = loadImage("personaje.png");
  }
  
  void dibujar(){
    image(imagen)
  }
}
