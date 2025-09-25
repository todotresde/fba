function iniciarTablero(){
  for(let i = 0; i < cant; i++){
    buscaminas[i] = [];
    show[i] = [];
    for(let j = 0; j < cant; j++){
      buscaminas[i][j] = 0;
      show[i][j] = false;
    }
  }
}

function ubicarMinasEnElTablero(){
   buscaminas[3][3] = 10;
   buscaminas[1][3] = 10;
   buscaminas[3][4] = 10;
   buscaminas[5][5] = 10;
   buscaminas[6][6] = 10;
   buscaminas[8][1] = 10;
}

function setearCantidadDeMinasPorCelda(){
  for(let i = 0; i < cant; i++){
    for(let j = 0; j < cant; j++){
      if(buscaminas[i][j] != 10){
        buscaminas[i][j] = cantidadMinasAlrededor(i, j);
      }
    }
  }
}

function cantidadMinasAlrededor(i, j){
  let prevI = (i>0) ? i-1 : i;
  let prevJ = (j>0) ? j-1 : j;
  let nextI = (i<9) ? i+1 : i;
  let nextJ = (j<9) ? j+1 : j;
  let total = 0;
  
  total += (buscaminas[i][nextJ] == 10) ? 1 : 0;
  total += (buscaminas[nextI][j] == 10) ? 1 : 0;
  total += (buscaminas[nextI][nextJ] == 10) ? 1 : 0;
  total += (buscaminas[prevI][prevJ] == 10) ? 1 : 0;
  total += (buscaminas[prevI][j] == 10) ? 1 : 0;
  total += (buscaminas[i][prevJ] == 10) ? 1 : 0;
  total += (buscaminas[prevI][nextJ] == 10) ? 1 : 0;
  total += (buscaminas[nextI][prevJ] == 10) ? 1 : 0;

  return total;
}

function dibujarTablero(){
  strokeWeight(1);
  for(let i = 0; i < cant; i++){
    for(let j = 0; j < cant; j++){
      if(show[i][j]){
        if(buscaminas[i][j] == 10){
          fill(200);
        }else{
          fill(255);
        }
        rect(i*tam, j*tam, tam, tam);
        fill(0);
        text(buscaminas[i][j], i*tam + tam/2, j*tam + tam/2);
      }else{
        fill(200,255,200);
        rect(i*tam, j*tam, tam, tam);
      }
    }
  }
  strokeWeight(10);
  noFill();
  rect(0,0,400,400);
  
}
