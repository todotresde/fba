void personaje(int posX) {
  line(posX, 100, posX, 150); //Cuerpo
  ellipse(posX, 100, 30, 30); //Cabeza
  line(posX, 150, posX+20, 170); //Pierna Izq
  line(posX, 150, posX-20, 170); //Pierna Der
  line(posX, 130, posX+20, 150); //Mano Izq
  line(posX, 130, posX-20, 150); //Mano Der
}

void dibujarPaisaje() {
  line(0,300, 400, 300);
  ellipse(300,0,50, 50);
}
