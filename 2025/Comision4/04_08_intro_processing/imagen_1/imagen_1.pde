PImage miImagen;

void setup(){
  size(400,400);
  miImagen = loadImage("prueba.jpg");
}

void draw(){
  background(#E6EA21);
  image(miImagen, 0, 0, 200, 400);
  
}
