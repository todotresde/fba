boolean cambiarColorRojo = false;

void setup(){
  size(400,400);
  dibujarPantalla();
}

void draw(){
  dibujarBoton();
  dibujarLapiz();
}

void mouseClicked(){
  if (dist(mouseX, mouseY, 50, 350) < 25) {
    cambiarColorRojo = !cambiarColorRojo;
  }
}
