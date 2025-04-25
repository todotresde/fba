int posXEllipse = 200;
int tam = 0;

void setup() {
  size(400, 400);
}

void draw() {
  background(200);
  ellipse(200, 200, tam, tam);
  posXEllipse = posXEllipse + 1;
  tam = tam + 1;
}

void mouseClicked() {
}
