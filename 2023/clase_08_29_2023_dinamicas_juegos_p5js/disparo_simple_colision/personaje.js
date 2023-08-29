function dibujarPersonaje() {
  dibujarBala();
  
  fill(0);
  rect(posX, posY, playerWidth, playerHeight);
}

function dibujarBala() {
  fill(255, 0, 0);
  ellipse(balaPosX, balaPosY, 10, 10);
  
  if(balaDisparada){
    balaPosX+=2;
    
    //Colisión con el enemigo
    if(enemigoEstaVivo && dist(balaPosX, balaPosY, posXEnemigo, posYEnemigo + playerHeight/2) < 5){
      vidasEnemigo--;
      balaPosX = posX + playerWidth/2;
      balaDisparada = false;
      if(vidasEnemigo <= 0){
        enemigoEstaVivo = false;
      }
    }
  }
}
