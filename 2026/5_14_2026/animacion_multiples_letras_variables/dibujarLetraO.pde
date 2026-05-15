int letraO_posX;
int letraO_posY;

void dibujarLetraO(){
  ellipse(letraO_posX, letraO_posY, tam, tam);

  if (siEstanEnRangoSuperiorO()) {
    moverElipseHaciaLaIzquierdaO();
  } else if (siEstaEnMargenIzquerdoO()) {
    moverElipseHaciaAbajoO();
  } else if (siEstanEnRangoInferiorO()) {
    moverElipseHaciaLaDerechaO();
  } else if (siEstaEnMargenDerechoO()) {
    moverElipseHaciaArribaO();
  }
}

void inicializarVariablesO(){
  letraO_posX = 300;
  letraO_posY = 100;
}

void moverElipseHaciaLaIzquierdaO(){
  letraO_posX--;
}

void moverElipseHaciaAbajoO(){
  letraO_posY++;
}

void moverElipseHaciaArribaO(){
  letraO_posY--;
}

void moverElipseHaciaLaDerechaO(){
  letraO_posX++;
}

boolean siEstanEnRangoSuperiorO(){
  boolean estado = letraO_posX > 100 && letraO_posY == 100;
  return estado;
}

boolean siEstaEnMargenIzquerdoO(){
  boolean estado = letraO_posY < 300 && letraO_posX == 100;
  return estado;
}

boolean siEstaEnMargenDerechoO(){
  boolean estado = letraO_posX == 300;
  return estado;
}

boolean siEstanEnRangoInferiorO(){
  boolean estado = letraO_posX < 300;
  return estado;
}
