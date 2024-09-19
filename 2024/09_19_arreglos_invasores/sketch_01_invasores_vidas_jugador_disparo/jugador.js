function dibujarJugador(){
  fill(255);
  rect(posXJugador, posYJugador, anchoJugador, altoJugador);
}

function moverJugador(){
  if(keyCode === LEFT_ARROW){
    posXJugador-=5;
  }
  if(keyCode === RIGHT_ARROW){
    posXJugador+=5;
  }
  
  if(!disparo){
    posXBala = posXJugador + anchoJugador/2;
    posYBala = posYJugador + altoJugador/2;
  }
}

function disparar(){
  if(keyCode === ENTER){
    disparo = true;
  }
}

function dibujarBala(){
  if(disparo === true){
    fill(0);
    ellipse(posXBala, posYBala, 10, 10);
    posYBala-=10;
    
    if(posYBala < 0){
      disparo = false;
    }
  }
}
