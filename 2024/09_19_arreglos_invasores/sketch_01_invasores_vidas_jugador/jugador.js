function dibujarJugador(){
  rect(posXJugador, posYJugador, 50, 20);
}

function moverJugador(){
  if(keyCode === LEFT_ARROW){
    posXJugador-=5;
  }
  if(keyCode === RIGHT_ARROW){
    posXJugador+=5;
  }
}
