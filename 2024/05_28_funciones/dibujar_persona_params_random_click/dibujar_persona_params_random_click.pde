int posXPersona1, posXPersona2, posXPersona3, posXPersona4, posXPersona5;

void setup() {
  size(400, 400);

  inicializarVariables();
}

void draw() {
  background(200);
  dibujarPersona(posXPersona1);
  dibujarPersona(posXPersona2);
  dibujarPersona(posXPersona3);
  dibujarPersona(posXPersona4);
  dibujarPersona(posXPersona5);
}

void mouseClicked() {
  inicializarVariables();
}
