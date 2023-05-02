int pantalla = 1;
int contador = 0;
int segundos = 0;

void setup() {
  size(400, 400);
  textSize(30);
}

void draw() {
  background(200);
  if (pantalla == 1) {
    background(255,0,0);
    fill(0);
    text("Esta es la pantalla 1", 100, 200);
  } else if (pantalla == 2) {
    background(0,255,0);
    fill(0);
    text("Esta es la pantalla 2", 100, 200);
    text("Contador " + contador, 100, 250);
  } else if (pantalla == 3) {
    background(0,0,255);
    fill(0);
    text("Esta es la pantalla 3", 100, 200);
  }
  
  text("frameCount: " + frameCount, 180, 100);
  text("segundos: " + segundos, 10, 100);
  
  if(frameCount % 60 == 0){
    segundos = segundos + 1;
  }
}

void mouseClicked() {
  if (pantalla == 3) {
    pantalla = 1;
  } else {
    pantalla = pantalla + 1;
  }
}

void keyPressed() {
  
  if (pantalla == 1) {
  } else if (pantalla == 2) {
    contador = contador + 1;
  } else if (pantalla == 3) {

  }
}
