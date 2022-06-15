void dibujarLetras(){
  for(int i = 0; i < cant; i++){
    fill(0,200,0,opacidad[i]);
    text(char(letras[i]), posicionesX[i], posicionesY[i]);
    posicionesY[i]++;
    opacidad[i]-=0.3;
  }
  fill(0,0,0,20);
  rect(0,0,width, height);
}
