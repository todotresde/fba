color boton1Color = color(255);
int boton1PosX = 100;
int boton1PosY = 100;
int boton1Ancho = 50;
int boton1Alto = 50;
boolean boton1Mostrar = true;

color boton2Color = color(255);
int boton2PosX = 250;
int boton2PosY = 200;
int boton2Ancho = 80;
int boton2Alto = 20;

void setup() {
  size(400, 400);
}

void draw() {
  background(200);
  
  //Boton 1
  if (boton1Mostrar) {
    fill(boton1Color);
    rect(boton1PosX, 100, 50, 50);
  }

  //Boton 2
  fill(boton2Color);
  rect(250, 200, 80, 20);
}

void mouseMoved() {
  //Boton 1
  if (boton1Mostrar) {
    if (mouseX > boton1PosX && mouseX < boton1PosX + boton1Ancho &&
      mouseY > boton1PosY && mouseY < boton1PosY + boton1Alto) {
      boton1Color = color(255, 0, 0);
    } else {
      boton1Color = color(255);
    }
  }

  //Boton 2
  if (mouseX > boton2PosX && mouseX < boton2PosX + boton2Ancho &&
    mouseY > boton2PosY && mouseY < boton2PosY + boton2Alto) {
    boton2Color = color(0, 255, 0);
  } else {
    boton2Color = color(255);
  }
}

void mouseClicked() {
  //Boton 1
  if (boton1Mostrar) {
    if (mouseX > boton1PosX && mouseX < boton1PosX + boton1Ancho &&
      mouseY > boton1PosY && mouseY < boton1PosY + boton1Alto) {
      boton1Color = color(0, 255, 255);
    }
  }

  //Boton 2
  if (mouseX > boton2PosX && mouseX < boton2PosX + boton2Ancho &&
    mouseY > boton2PosY && mouseY < boton2PosY + boton2Alto) {
    boton2Color = color(0, 0, 255);
    boton1Mostrar = false;
  }
}
