function iniciarlizarAutosCarrera(){
  for(let i=0; i<cantAutos; i++){
    autos[i] = [];
    for(let j=0; j<cantAutos; j++){
      autos[i][0] = 0;
      autos[i][1] = 0;
    }
  }
}

function iniciarlizarAutoJugador(){
  autoJugador[0] = 200;//posX
  autoJugador[1] = 300;//posY
}

function dibujarPista(){
}

function analizarColision(){
}
