int posXPersona1, posXPersona2, posXPersona3, posXPersona4, posXPersona5;

void setup() {
  size(400, 400);

  inicializarVariables();
}

void draw() {
  background(200);
  dibujarPersona(posXPersona1, round(random(10,40)));
  dibujarPersona(posXPersona2, round(random(10,40)));
  dibujarPersona(posXPersona3, round(random(10,40)));
  dibujarPersona(posXPersona4, round(random(10,40)));
  dibujarPersona(posXPersona5, round(random(10,40)));
}

void mouseClicked() {
  inicializarVariables();
}
