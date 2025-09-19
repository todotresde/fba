function dibujarTableroJugador1(){
  dibujarTableroBarcosJugador1();
  dibujarTableroDisparosJugador1();
}

function dibujarTableroBarcosJugador1(){
  strokeWeight(1);
  for(let i = 0; i < cant; i++){
    for(let j = 0; j < cant; j++){
      if(barcosJ1[i][j] == 1){
        fill(0);
      }else if(barcosJ1[i][j] == 10){
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

function dibujarTableroDisparosJugador1(){
  strokeWeight(1);
  for(let i = 0; i < cant; i++){
    for(let j = 0; j < cant; j++){
      if(disparosJ1[i][j] == 1){
        fill(0);
      }else if(disparosJ1[i][j] == 10){
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
