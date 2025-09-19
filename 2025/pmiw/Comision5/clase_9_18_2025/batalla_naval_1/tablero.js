function armarTableroJugador1(){
   jugador1[0][0] = 1;
   jugador1[0][1] = 1;
   
   jugador1[4][3] = 1;
   jugador1[4][4] = 1;
   jugador1[4][5] = 1;
   
   jugador1[5][6] = 1;
   jugador1[6][6] = 1;
   jugador1[7][6] = 1;
   jugador1[8][6] = 1;
}

function armarTableroJugador2(){
   jugador2[1][0] = 1;
   jugador2[1][1] = 1;
   
   jugador2[3][6] = 1;
   jugador2[3][7] = 1;
   jugador2[3][8] = 1;
   
   jugador2[5][3] = 1;
   jugador2[6][3] = 1;
   jugador2[7][3] = 1;
   jugador2[8][3] = 1;
}

function dibujarTableroJugador1(){
  strokeWeight(1);
  for(let i = 0; i < cant; i++){
    for(let j = 0; j < cant; j++){
      if(jugador1[i][j] == 1){
        fill(0);
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

function dibujarTableroJugador2(){
  strokeWeight(1);
  for(let i = 0; i < cant; i++){
    for(let j = 0; j < cant; j++){
      if(jugador2[i][j] == 1){
        fill(0);
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
