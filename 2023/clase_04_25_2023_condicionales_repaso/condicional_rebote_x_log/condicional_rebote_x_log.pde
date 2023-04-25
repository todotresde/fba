int tam = 50;
int dir = 1;
int posX;
int pantalla = 1;

void setup() {
  size(400, 400);
  posX = height/2;
  textSize(40);
}

void draw() {
  if (pantalla == 1) {
    background(200);
    fill(0);
    text("posX: " + posX, 100, 100);
    text("dir: " + dir, 100, 150);
    fill(100);
    ellipse(posX, height/2, tam, tam);
    if (posX+tam/2 > width || posX-tam/2 < 0) {
      dir = dir * -1;
    }
    posX = posX + dir;
  } else if (pantalla == 2) {
    background(200);
    text("Hola Mundo", 100, 200);
  }
  
  if (mouseX < 50) {
    cursor(CROSS);
  } else {
    cursor(HAND);
  }
}





void keyPressed(){
  pantalla = 2;
}
