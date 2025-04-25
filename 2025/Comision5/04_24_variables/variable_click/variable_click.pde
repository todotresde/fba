int posXEllipse = 200;

void setup() {
  size(400, 400);
}

void draw() {
  background(200);
  ellipse(posXEllipse, 200, 100, 100);
}

void mouseClicked() {
  posXEllipse = 100;
}
