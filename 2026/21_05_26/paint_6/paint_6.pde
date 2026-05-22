color colorLapiz = color(0);

void setup(){
  size(400,400);
  dibujarPantalla();
}

void draw(){
  dibujarBotonRojo();
  dibujarBotonAzul();
  dibujarLapiz();
}

void mouseClicked(){
  if (dist(mouseX, mouseY, 50, 350) < 25) {
    colorLapiz = color(255,0,0);
  }
  
  if (dist(mouseX, mouseY, 100, 350) < 25) {
    colorLapiz = color(0,0,255);
  }
}
