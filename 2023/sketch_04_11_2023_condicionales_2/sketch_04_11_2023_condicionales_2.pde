float posX = 100;
float posY = 100;
String punteroDelMouse;

void setup() {
  size(400, 400);
}

void draw() {
  background(200);
  if (mouseX > width/2) {
    fill(255, 0, 0);
    ellipse(200, 200, 100, 100);
  } else {
    fill(0, 255, 0);
    rect(200, 200, 100, 100);
  }
}
