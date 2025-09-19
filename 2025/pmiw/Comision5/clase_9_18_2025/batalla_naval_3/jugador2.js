function dibujarTableroJugador2(){
  dibujarTableroBarcosJugador2();
  dibujarTableroDisparosJugador2();
}

function dibujarTableroBarcosJugador2(){
  strokeWeight(1);
  for(let i = 0; i < cant; i++){
    for(let j = 0; j < cant; j++){
      if(barcosJ2[i][j] == 1){
        fill(0);
      }else if(barcosJ2[i][j] == 10){
        fill(255,200,200);
      }else{
        fill(200,200,255);
      }
      rect(i*tam, j*tam, tam, tam);
    }
  }
  strokeWeight(10);
  noFill();
  rect(0,0,400,400);
  
}

function dibujarTableroDisparosJugador2(){
  strokeWeight(1);
  for(let i = 0; i < cant; i++){
    for(let j = 0; j < cant; j++){
      if(disparosJ2[i][j] == 1){
        fill(0);
      }else if(disparosJ2[i][j] == 10){
        fill(255,200,200);
      }else{
        fill(200,200,255);
      }
      rect(width/2 + (i*tam), j*tam, tam, tam);
    }
  }
  strokeWeight(10);
  noFill();
  rect(400,0,400,400);
  
}
