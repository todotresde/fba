function dibujarEnemigo(numeroEnemigo){
  if(enemigosVida[numeroEnemigo] > 0){
    fill(255,0,0);
    ellipse(enemigosPosX[numeroEnemigo], enemigosPosY[numeroEnemigo], 30, 30);
  }
}

function enemigoEstaVivo(numeroEnemigo){
  return enemigosVida[numeroEnemigo] > 0;
}
