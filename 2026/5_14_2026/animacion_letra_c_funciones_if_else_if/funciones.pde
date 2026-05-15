void moverElipseHaciaLaIzquierda(){
  posX--;
}

void moverElipseHaciaAbajo(){
  posY++;
}

void moverElipseHaciaLaDerecha(){
  posX++;
}

boolean siEstanEnRangoSuperior(){
  boolean estado = posX > 100 && posY == 100;
  return estado;
}

boolean siEstaEnMargenIzquerdo(){
  boolean estado = posY < 300;
  return estado;
}

boolean siEstanEnRangoInferior(){
  boolean estado = posX < 300;
  return estado;
}
