function iniciarTablero(){
  for(let i = 0; i < cant; i++){
    barcosJ1[i] = [];
    disparosJ1[i] = [];
    barcosJ2[i] = [];
    disparosJ2[i] = [];
    for(let j = 0; j < cant; j++){
      barcosJ1[i][j] = 0;
      disparosJ1[i][j] = 0;
      barcosJ2[i][j] = 0;
      disparosJ2[i][j] = 0;
    }
  }
}

function armarTableroJugador1(){
   barcosJ1[0][0] = 1;
   barcosJ1[0][1] = 1;
   
   barcosJ1[4][3] = 1;
   barcosJ1[4][4] = 1;
   barcosJ1[4][5] = 1;
   
   barcosJ1[5][6] = 1;
   barcosJ1[6][6] = 1;
   barcosJ1[7][6] = 1;
   barcosJ1[8][6] = 1;
}

function armarTableroJugador2(){
   barcosJ2[1][0] = 1;
   barcosJ2[1][1] = 1;
   
   barcosJ2[3][6] = 1;
   barcosJ2[3][7] = 1;
   barcosJ2[3][8] = 1;
   
   barcosJ2[5][3] = 1;
   barcosJ2[6][3] = 1;
   barcosJ2[7][3] = 1;
   barcosJ2[8][3] = 1;
}
