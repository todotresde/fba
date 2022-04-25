int posX = 60; // Coordenada posX
int posY = 420; // Coordenada posY
int altoCuerpo = 110; // Altura del cuerpo
int altoCuello = 140; // Altura del cuello
int radio = 45;
int cuelloPosY = posY - altoCuerpo - altoCuello - radio; // posY del cuello

void dibujarRobot() {
  strokeWeight(2);
  ellipseMode(RADIUS);
  
  cuelloPosY = posY - altoCuerpo - altoCuello - radio;
  // Cuello
  dibujarCuello();
  // Antenas
  dibujarAntena();
  // Cuerpo
  dibujarCuerpo();
  // Cabeza
  dibujarCabeza();

  moverAdelanteAleatoriamente();
}

void dibujarAntena() {
  line(posX+12, cuelloPosY, posX-18, cuelloPosY-43);
  line(posX+12, cuelloPosY, posX+42, cuelloPosY-99);
  line(posX+12, cuelloPosY, posX+78, cuelloPosY+15);
}

void dibujarCuello() {
  stroke(102);
  line(posX+2, posY-altoCuerpo, posX+2, cuelloPosY);
  line(posX+12, posY-altoCuerpo, posX+12, cuelloPosY);
  line(posX+22, posY-altoCuerpo, posX+22, cuelloPosY);
}

void dibujarCuerpo() {
  noStroke();
  fill(102);
  ellipse(posX, posY-33, 33, 33);
  fill(0);
  rect(posX-45, posY-altoCuerpo, 90, altoCuerpo-33);
  fill(102);
  rect(posX-45, posY-altoCuerpo+17, 90, 6);
}

void dibujarCabeza() {
  fill(0);
  ellipse(posX+12, cuelloPosY, radio, radio);
  fill(255);
  ellipse(posX+24, cuelloPosY-6, 14, 14);
  fill(0);
  ellipse(posX+24, cuelloPosY-6, 3, 3);
  fill(153);
  ellipse(posX, cuelloPosY-8, 5, 5);
  ellipse(posX+30, cuelloPosY-26, 4, 4);
  ellipse(posX+41, cuelloPosY+6, 3, 3);
}

void moverAdelanteAleatoriamente() {
  posX+=random(1, 3);
}
