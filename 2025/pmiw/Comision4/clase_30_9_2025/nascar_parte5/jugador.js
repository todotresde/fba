function iniciarlizarAutoJugador(){
  autoJugador[0] = 200;//posX
  autoJugador[1] = 300;//posY
}

function dibujarAutoJugador(){
  rect(autoJugador[0],autoJugador[1], anchoAuto, altoAuto);
  
  moverAutoJugador();
}

function moverAutoJugador(){
  if(keyIsPressed){
    if(keyCode == LEFT_ARROW){
      autoJugador[0]--;
    }else if(keyCode == RIGHT_ARROW){
      autoJugador[0]++;
    }
  }
}
