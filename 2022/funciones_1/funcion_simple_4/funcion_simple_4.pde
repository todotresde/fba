PImage image;
int counter;

void setup(){
  size(400,400);
  counter = 16;
  image = loadImage("frame" + counter + ".png");
}

void draw(){
  background(200);
  image(image, 0, 0, width, height);
  
  dibujarPersonajeFrameCount();
}
