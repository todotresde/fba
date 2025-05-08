int posX = 200;
int dir = 1;

void setup() {
  size(400, 400);
  textSize(30);
}

void draw() {
  background(200);
  fill(0);
  text("Hola!", posX, 200);
  posX = posX + dir;

  if (posX > 340) {
    dir = -1;
  }

  if (posX < 0) {
    dir = 1;
  }
}

void mouseClicked() {
}

void keyPressed() {
}
