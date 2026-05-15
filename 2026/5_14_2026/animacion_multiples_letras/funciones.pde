void inicializarVariables(){
  posX = 300;
  posY = 100;
}

void moverElipseHaciaLaIzquierda(){
  posX--;
}

void moverElipseHaciaAbajo(){
  posY++;
}

void moverElipseHaciaArriba(){
  posY--;
}

void moverElipseHaciaLaDerecha(){
  posX++;
}

boolean siEstanEnRangoSuperior(){
  boolean estado = posX > 100 && posY == 100;
  return estado;
}

boolean siEstaEnMargenIzquerdo(){
  boolean estado = posY < 300 && posX == 100;
  return estado;
}

boolean siEstaEnMargenDerecho(){
  boolean estado = posX == 300;
  return estado;
}

boolean siEstanEnRangoInferior(){
  boolean estado = posX < 300;
  return estado;
}
