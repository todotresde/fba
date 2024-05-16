color boton1Color = color(255);
color boton1PosX = 100;
color boton1PosY = 100;
color boton1Ancho = 50;
color boton1Alto = 50;

color boton2Color = color(255);
color boton2PosX = 250;
color boton2PosY = 200;
color boton2Ancho = 80;
color boton2Alto = 20;

void setup() {
  size(400, 400);
}

void draw() {
  fill(boton1Color);
  rect(boton1PosX, 100, 50, 50);

  fill(boton2Color);
  rect(250, 200, 80, 20);
}

void mouseMoved() {
  if (mouseX > boton1PosX && mouseX < boton1PosX + boton1Ancho &&
    mouseY > boton1PosY && mouseY < boton1PosY + boton1Alto) {
    boton1Color = color(255, 0, 0);
  } else {
    boton1Color = color(255);
  }

  if (mouseX > boton2PosX && mouseX < boton2PosX + boton2Ancho &&
    mouseY > boton2PosY && mouseY < boton2PosY + boton2Alto) {
    boton2Color = color(0, 255, 0);
  } else {
    boton2Color = color(255);
  }
}

void mouseClicked() {
  if (mouseX > boton1PosX && mouseX < boton1PosX + boton1Ancho &&
    mouseY > boton1PosY && mouseY < boton1PosY + boton1Alto) {
    boton1Color = color(0, 255, 255);
  }

  if (mouseX > boton2PosX && mouseX < boton2PosX + boton2Ancho &&
    mouseY > boton2PosY && mouseY < boton2PosY + boton2Alto) {
    boton2Color = color(0, 0, 255);
  }
}
