void dibujarStickman(int posX, int posY) {
  line(posX, posY, posX, posY+50); //Cuerpo
  ellipse(posX, posY, 30, 30); //Cabeza
  line(posX, posY+50, posX+20, posY+70); //Pierna Izq
  line(posX, posY+50, posX-20, posY+70); //Pierna Der
  line(posX, posY+30, posX+20, posY+50); //Mano Izq
  line(posX, posY+30, posX-20, posY+50); //Mano Der
}
