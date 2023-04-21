PImage miImagen;

void setup(){
  size(800,400);
  
  miImagen = loadImage("transbordador.jpg");
  
}

void draw(){
  image(miImagen, 0, 0, 400, 400);
}
