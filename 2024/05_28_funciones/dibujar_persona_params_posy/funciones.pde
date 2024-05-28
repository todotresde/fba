void dibujarPersona(int posX, int posY, int tamCabeza) {
  line(posX, posY, posX, posY+50); //Cuerpo
  ellipse(posX, posY, tamCabeza, tamCabeza); //Cabeza
  line(posX, posY+50, posX+20, posY+70); //Pierna Izq
  line(posX, posY+50, posX-20, posY+70); //Pierna Der
  line(posX, posY+30, posX+20, posY+50); //Mano Izq
  line(posX, posY+30, posX-20, posY+50); //Mano Der
}

void inicializarVariables(){
  posXPersona1 = round(random(10, width-10));
  posXPersona2 = round(random(10, width-10));
  posXPersona3 = round(random(10, width-10));
  posXPersona4 = round(random(10, width-10));
  posXPersona5 = round(random(10, width-10));
  
  posYPersona1 = round(random(10, height-10));
  posYPersona2 = round(random(10, height-10));
  posYPersona3 = round(random(10, height-10));
  posYPersona4 = round(random(10, height-10));
  posYPersona5 = round(random(10, height-10));
}
