int letraC_posX;
int letraC_posY;

void dibujarLetraC(){
  ellipse(letraC_posX, letraC_posY, tam, tam);

  if (siEstanEnRangoSuperiorC()) {
    moverElipseHaciaLaIzquierdaC();
  } else if (siEstaEnMargenIzquerdoC()) {
    moverElipseHaciaAbajoC();
  } else if (siEstanEnRangoInferiorC()) {
    moverElipseHaciaLaDerechaC();
  }
}

void inicializarVariablesC(){
  letraC_posX = 300;
  letraC_posY = 100;
}

void moverElipseHaciaLaIzquierdaC(){
  letraC_posX--;
}

void moverElipseHaciaAbajoC(){
  letraC_posY++;
}

void moverElipseHaciaArribaC(){
  letraC_posY--;
}

void moverElipseHaciaLaDerechaC(){
  letraC_posX++;
}

boolean siEstanEnRangoSuperiorC(){
  boolean estado = letraC_posX > 100 && letraC_posY == 100;
  return estado;
}

boolean siEstaEnMargenIzquerdoC(){
  boolean estado = letraC_posY < 300 && letraC_posX == 100;
  return estado;
}

boolean siEstaEnMargenDerechoC(){
  boolean estado = letraC_posX == 300;
  return estado;
}

boolean siEstanEnRangoInferiorC(){
  boolean estado = letraC_posX < 300;
  return estado;
}
