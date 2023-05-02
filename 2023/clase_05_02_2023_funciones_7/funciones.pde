void personaje(int posX, int posY) {
  line(posX, posY, posX, posY+50); //Cuerpo
  ellipse(posX, posY, 30, 30); //Cabeza
  line(posX, posY+50, posX+20, posY+70); //Pierna Izq
  line(posX, posY+50, posX-20, posY+70); //Pierna Der
  line(posX, posY+30, posX+20, posY+50); //Mano Izq
  line(posX, posY+30, posX-20, posY+50); //Mano Der
}

void dibujarPaisaje(String tipo) {
  if (tipo == "soleado") {
    line(0, 300, 400, 300);
    ellipse(300, 0, 50, 50);
  } else if (tipo == "atardecer") {
    ellipse(300, 300, 50, 50);
    rect(0, 300, 400, 300);
  } else {
    line(0, 300, 400, 300);
  }
  
  personaje(200, 200);
}
