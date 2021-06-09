PImage miImagen, miImagen2, miImagen3;

void setup(){
  size(400, 400);
  miImagen = loadImage("img1.png");
  miImagen2 = loadImage("img2.jpg");
  miImagen3 = loadImage("img3.png");
}

void draw(){
  background(200);
  image(miImagen, 0, 0);
  image(miImagen2, width/2, height/2, 100, 100);
  image(miImagen3, mouseX, mouseY, 100, 100);
}
