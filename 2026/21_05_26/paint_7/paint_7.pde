color colorLapiz = color(0);

void setup(){
  size(400,400);
  dibujarPantalla();
}

void draw(){
  dibujarBoton(50, 350, color(255,0,0), color(150,0,0));
  dibujarBoton(100, 350, color(0,0,255), color(0,0,150));
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
