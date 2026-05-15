void dibujarLetraC(){
  ellipse(posX, posY, tam, tam);

  if (siEstanEnRangoSuperior()) {
    moverElipseHaciaLaIzquierda();
  } else if (siEstaEnMargenIzquerdo()) {
    moverElipseHaciaAbajo();
  } else if (siEstanEnRangoInferior()) {
    moverElipseHaciaLaDerecha();
  }
}

void dibujarLetraO(){
  ellipse(posX, posY, tam, tam);

  if (siEstanEnRangoSuperior()) {
    moverElipseHaciaLaIzquierda();
  } else if (siEstaEnMargenIzquerdo()) {
    moverElipseHaciaAbajo();
  } else if (siEstanEnRangoInferior()) {
    moverElipseHaciaLaDerecha();
  } else if (siEstaEnMargenDerecho()) {
    moverElipseHaciaArriba();
  }
}

void controlDeAnimacion(){
  if(millis() > 10000 && millis() < 10100){
    println(millis());
    background(200);
    inicializarVariables();
    animacionActual = 2;
  }
}
