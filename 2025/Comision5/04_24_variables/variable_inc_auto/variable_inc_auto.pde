int posXEllipse = 200;
int tam = 0;

void setup() {
  size(400, 400);
}

void draw() {
  background(200);
  ellipse(posXEllipse, 200, 100, 100);
  posXEllipse = posXEllipse + 1;
  tam = tam + 1;
}

void mouseClicked() {
}
