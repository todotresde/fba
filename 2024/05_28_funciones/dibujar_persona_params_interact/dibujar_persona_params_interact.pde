int posXPersona1, posXPersona2, posXPersona3, posXPersona4, posXPersona5;
int posYPersona1, posYPersona2, posYPersona3, posYPersona4, posYPersona5;
color colorCabeza1, colorCabeza2, colorCabeza3, colorCabeza4, colorCabeza5;

void setup() {
  size(400, 400);

  inicializarVariables();
}

void draw() {
  background(200);
  dibujarPersona(posXPersona1, posYPersona1, 30, colorCabeza1);
  dibujarPersona(posXPersona2, posYPersona2, 40, colorCabeza2);
  dibujarPersona(posXPersona3, posYPersona3, 100, colorCabeza3);
  dibujarPersona(posXPersona4, posYPersona4, 10, colorCabeza4);
  dibujarPersona(posXPersona5, posYPersona5, 50, colorCabeza5);
}

void mouseClicked() {
  //inicializarVariables();
  if(dist(posXPersona1, posYPersona1, mouseX, mouseY) < 30){
    colorCabeza1 = color(255,0,0);
  }
  if(dist(posXPersona2, posYPersona2, mouseX, mouseY) < 40){
    colorCabeza2 = color(255,0,0);
  }
  if(dist(posXPersona3, posYPersona3, mouseX, mouseY) < 100){
    colorCabeza3 = color(255,0,0);
  }
  if(dist(posXPersona4, posYPersona4, mouseX, mouseY) < 10){
    colorCabeza4 = color(255,0,0);
  }
  if(dist(posXPersona5, posYPersona5, mouseX, mouseY) < 50){
    colorCabeza5 = color(255,0,0);
  }
}
