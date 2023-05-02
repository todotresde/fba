int pantalla = 1;

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
  } else if (pantalla == 3) {
    background(0,0,255);
    fill(0);
    text("Esta es la pantalla 3", 100, 200);
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
}
