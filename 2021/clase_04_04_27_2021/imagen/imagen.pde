PImage miImagen, miImagen2;

void setup(){
  size(400, 400);
  miImagen = loadImage("img1.png");
  miImagen2 = loadImage("img2.jpg");
}

void draw(){
  background(200);
  image(miImagen, 0, 0);
  
  image(miImagen2, mouseX, mouseY);
}
