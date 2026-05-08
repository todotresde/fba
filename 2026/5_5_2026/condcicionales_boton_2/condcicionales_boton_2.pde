// AND = && => TRUE && TRUE => TRUE

int posX = 200;
int posY = 200;
int ancho = 100;
int alto = 50;
color colorBoton = color(200);
color colorFondo = color(255);

void setup() {
  size(400, 400);
}

void draw() {
  background(colorFondo);

  fill(colorBoton);
  rect(posX, 200, ancho, alto);

  if (
    mouseX > posX && mouseX < posX + ancho &&
    mouseY > posY && mouseY < posY + alto) {
    colorBoton = color(255, 0, 0);
  } else {
    colorBoton = color(200);
  }
}

void mouseClicked(){
  if (
    mouseX > posX && mouseX < posX + ancho &&
    mouseY > posY && mouseY < posY + alto) {
    colorFondo = color(0,255,0);
  } 
}
