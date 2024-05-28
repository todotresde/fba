int posXPersona1, posXPersona2, posXPersona3, posXPersona4, posXPersona5;
int posYPersona1, posYPersona2, posYPersona3, posYPersona4, posYPersona5;

void setup() {
  size(400, 400);

  inicializarVariables();
}

void draw() {
  background(200);
  dibujarPersona(posXPersona1, posYPersona1, round(random(10,40)));
  dibujarPersona(posXPersona2, posYPersona2, round(random(10,40)));
  dibujarPersona(posXPersona3, posYPersona3, round(random(10,40)));
  dibujarPersona(posXPersona4, posYPersona4, round(random(10,40)));
  dibujarPersona(posXPersona5, posYPersona5, round(random(10,40)));
}

void mouseClicked() {
  inicializarVariables();
}
