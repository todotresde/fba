float posX = 100;
float posY = 100;
boolean direccion = true;
void setup() {
  size(400, 400);
  textSize(30);
}

void draw() {
  background(200);
  ellipse(posX, 200, 100, 100);

  if (posX <= 0 || posX >= width) {
    direccion = !direccion;
  }

  if (direccion) {
    posX = posX + 1;
  } else {
    posX = posX - 1;
  }

  text("PosX: " + posX + "PosY: " + posY, 100, 50);
}
