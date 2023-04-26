PImage miImagen;

void setup(){
  size(800,400);
  
  miImagen = loadImage("transbordador.jpg");
  miImagen = loadImage("spacex.jpg");
  miImagen = loadImage("goofy.jpg");
  
}

void draw(){
  
  image(miImagen, 0, 0, 400, 400);
}
