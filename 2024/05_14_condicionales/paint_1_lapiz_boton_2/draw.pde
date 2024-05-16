void draw() {
  if(lapizActivo){
    strokeWeight(10);
    stroke(lapizColor);
    line(mouseX, mouseY, pmouseX, pmouseY);
  }

  //Boton 1
  fill(boton1Color);
  strokeWeight(1);
  stroke(0);
  rect(boton1PosX, boton1PosY, boton1Ancho, boton1Alto);

  //Boton 2
  fill(boton2Color);
  stroke(0);
  rect(boton2PosX, boton2PosY, boton2Ancho, boton2Alto);
}
