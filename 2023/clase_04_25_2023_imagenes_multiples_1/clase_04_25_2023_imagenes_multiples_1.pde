PImage miImagen1, miImagen2, miImagen3;

void setup(){
  size(600,400);
  
  miImagen1 = loadImage("transbordador.jpg");
  miImagen2 = loadImage("spacex.jpg");
  miImagen3 = loadImage("goofy.jpg");
  
}

void draw(){
  
  image(miImagen1, 0, 0, 200, 400);
  image(miImagen2, 200, 0, 200, 400);
  image(miImagen3, 400, 0, 200, 400);
}
