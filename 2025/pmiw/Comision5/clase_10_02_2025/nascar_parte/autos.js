function iniciarlizarAutosCarrera(){
  for(let i=0; i<cantAutos; i++){
    autos[i] = [];
    for(let j=0; j<cantAutos; j++){
      autos[i][0] = random(0, width-anchoAuto);
      autos[i][1] = random(-400, -10000);
    }
  }
}

function dibujarAutosCarerra(){
  for(let i=0; i<cantAutos; i++){
    for(let j=0; j<cantAutos; j++){
      rect(autos[i][0], autos[i][1], anchoAuto, altoAuto);
    }
  }
  
  moverAutosCarrera();
}

function moverAutosCarrera(){
  for(let i=0; i<cantAutos; i++){
    for(let j=0; j<cantAutos; j++){
      autos[i][1] += 0.2;
    }
  }
}
