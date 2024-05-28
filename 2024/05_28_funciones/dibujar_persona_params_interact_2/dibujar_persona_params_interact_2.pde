int posXPersona1, posXPersona2, posXPersona3, posXPersona4, posXPersona5;
int posYPersona1, posYPersona2, posYPersona3, posYPersona4, posYPersona5;
color colorCabeza1, colorCabeza2, colorCabeza3, colorCabeza4, colorCabeza5;

void setup() {
  size(400, 400);

  inicializarVariables();
}

void draw() {
  background(200);
  dibujarPersona(posXPersona1, posYPersona1, 30);
  dibujarPersona(posXPersona2, posYPersona2, 40);
  dibujarPersona(posXPersona3, posYPersona3, 100);
  dibujarPersona(posXPersona4, posYPersona4, 10);
  dibujarPersona(posXPersona5, posYPersona5, 50);
}

void mouseClicked() {
  //inicializarVariables();
}
