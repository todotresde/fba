function dibujarEnemigo() {
  if(enemigoEstaVivo){
    fill(0,255,0);
    rect(posXEnemigo, posYEnemigo, playerWidth, playerHeight);
    fill(0);
    textSize(30);
    text(vidasEnemigo, posXEnemigo, posYEnemigo - 20);
  }
}
