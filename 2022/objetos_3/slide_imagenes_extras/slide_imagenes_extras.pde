Slide slide;

void setup(){
  size(400, 400);
  slide = new Slide();
}

void draw(){
  background(200);
  slide.dibujar();
}

void keyPressed(){
  slide.teclaPresionada(keyCode);
}
