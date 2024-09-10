function dibujarCelda(i, j) {
  //Personaje
  if(grilla[i][j] === 1){
    fill(0);
  //Árbol
  }else if(grilla[i][j] === 2){
    fill(0,255,0);
  //No hay nada
  }else{
    fill(255);
  }
  rect(i*tam, j*tam, tam, tam);
}
