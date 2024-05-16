color boton1Color = color(255, 0, 0);
int boton1PosX = 0;
int boton1PosY = 0;
int boton1Ancho = 50;
int boton1Alto = 50;
boolean boton1Mostrar = true;

color lapizColor = color(0);
boolean lapizActivo = false;
/*
color boton2Color = color(0, 255, 0);
int boton2PosX = 50;
int boton2PosY = 0;
int boton2Ancho = 50;
int boton2Alto = 50;
*/

void setup() {
  size(400, 400);
}

void draw() {
  if(lapizActivo){
    strokeWeight(10);
    stroke(lapizColor);
    line(mouseX, mouseY, pmouseX, pmouseY);
  }

  //Boton 1
  fill(boton1Color);
  strokeWeight(1);
  rect(boton1PosX, boton1PosY, boton1Ancho, boton1Alto);

  //Boton 2
  /*
  fill(boton2Color);
  rect(boton2PosX, boton2PosY, boton2Ancho, boton2Alto);
  */
}

void mouseMoved() {
  //Boton 1
  if (mouseX > boton1PosX && mouseX < boton1PosX + boton1Ancho &&
    mouseY > boton1PosY && mouseY < boton1PosY + boton1Alto) {
    boton1Color = color(255, 0, 0);
  }

  //Boton 2
  /*
  if (mouseX > boton2PosX && mouseX < boton2PosX + boton2Ancho &&
    mouseY > boton2PosY && mouseY < boton2PosY + boton2Alto) {
    boton2Color = color(200, 255, 100);
  } 
  */
}

void mouseClicked() {
  //Boton 1
  if (mouseX > boton1PosX && mouseX < boton1PosX + boton1Ancho &&
    mouseY > boton1PosY && mouseY < boton1PosY + boton1Alto) {
    boton1Color = color(255, 0, 0);
    lapizColor = color(255,0,0);
    lapizActivo = true;
  }

  //Boton 2
  
  /*
  if (mouseX > boton2PosX && mouseX < boton2PosX + boton2Ancho &&
    mouseY > boton2PosY && mouseY < boton2PosY + boton2Alto) {
    boton2Color = color(0, 0, 255);
    boton1Mostrar = false;
  }
  */
}
