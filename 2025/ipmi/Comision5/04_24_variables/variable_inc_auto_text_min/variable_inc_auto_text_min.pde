int posXEllipse = 200;
float tam = 0;

void setup() {
  size(400, 400);
}

void draw() {
  background(200);
  textSize(tam);
  text("Hola mundo", 100, 200);
  tam = tam + 0.01;
}

void mouseClicked() {
}
