int posX, posY;

void setup() {
  size(400, 400);
  rectMode(CENTER);
}

void draw() {
  background(200);

  for (int j=0; j<4; j++) {
    color colorDelRectangulo = color(0);
    
    modificarPosXPosY(j);
    
    if(mouseDentroDelRectagulo(posX - width/4, posY - width/4, width/2)){
      colorDelRectangulo = color(
        map(dist(mouseX, mouseY, posX, posY), 0, 200, 0, 255));
    }
    
    dibujarRectangulos(width/2, 10, posX, posY, colorDelRectangulo);
  }
}
