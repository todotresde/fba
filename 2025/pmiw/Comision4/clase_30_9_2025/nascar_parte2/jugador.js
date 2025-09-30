function dibujarAutoJugador(){
  rect(autoJugador[0],autoJugador[1], 50, 100);
  
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
