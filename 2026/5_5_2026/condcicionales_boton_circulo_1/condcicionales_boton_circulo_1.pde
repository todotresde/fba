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
  ellipse(posX, 200, ancho, ancho);
  line(mouseX, mouseY, posX, 200);
  if (dist(mouseX, mouseY, posX, 200) < ancho/2) {
    colorBoton = color(255, 0, 0);
    if(mousePressed){
      colorFondo = color(0,255,0);
    }
  } else {
    colorBoton = color(200);
  }
}
