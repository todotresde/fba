function dibujarPersonaje(){
  fill(0,0,255);
  rect(posX, posY, 20, 50);
  
  moverPersonaje();
}

function moverPersonaje(){
  if(keyIsPressed){
    if(keyCode == LEFT_ARROW){
      posX--;
    }else if(keyCode == RIGHT_ARROW){
      posX++;
    }else if(keyCode == UP_ARROW){
      posY--;
    }else if(keyCode == DOWN_ARROW){
      posY++;
    }
  }
  
  verificarEnemigosMuertos();
}

function verificarEnemigosMuertos(){
  for(let i=0; i<cantEnemigos; i++){
    line(enemigosPosX[i], enemigosPosY[i], posX, posY);
    if(enemigoEstaVivo(i) && dist(enemigosPosX[i], enemigosPosY[i], posX, posY) < 10){
      enemigosVida[i] = 0;
      contador++;
    }
  }
}
