void dibujarPersona(int posX, int tamCabeza) {
  line(posX, 100, posX, 150); //Cuerpo
  ellipse(posX, 100, tamCabeza, tamCabeza); //Cabeza
  line(posX, 150, posX+20, 170); //Pierna Izq
  line(posX, 150, posX-20, 170); //Pierna Der
  line(posX, 130, posX+20, 150); //Mano Izq
  line(posX, 130, posX-20, 150); //Mano Der
}

void inicializarVariables(){
  posXPersona1 = round(random(10, width-10));
  posXPersona2 = round(random(10, width-10));
  posXPersona3 = round(random(10, width-10));
  posXPersona4 = round(random(10, width-10));
  posXPersona5 = round(random(10, width-10));
}
