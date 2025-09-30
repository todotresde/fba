function dibujarPista(){
}

function analizarColision(){
  for(let i=0; i<cantAutos; i++){
    for(let j=0; j<cantAutos; j++){
      if( dist(autos[i][0], autos[i][1] + altoAuto, autoJugador[0], autoJugador[1]) < 5){
         estado = 1;
      }
    }
  }
}
