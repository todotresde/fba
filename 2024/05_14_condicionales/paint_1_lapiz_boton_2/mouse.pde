void mouseMoved() {
  //Boton 1
  if (mouseX > boton1PosX && mouseX < boton1PosX + boton1Ancho &&
    mouseY > boton1PosY && mouseY < boton1PosY + boton1Alto) {
    boton1Color = color(255, 0, 0);
  }

  //Boton 2
  if (mouseX > boton2PosX && mouseX < boton2PosX + boton2Ancho &&
    mouseY > boton2PosY && mouseY < boton2PosY + boton2Alto) {
    boton2Color = color(255, 255, 255);
  } 
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
  if (mouseX > boton2PosX && mouseX < boton2PosX + boton2Ancho &&
    mouseY > boton2PosY && mouseY < boton2PosY + boton2Alto) {
    boton2Color = color(255, 255, 255);
    lapizColor = color(255,255,255);
    lapizActivo = true;
  }
}
