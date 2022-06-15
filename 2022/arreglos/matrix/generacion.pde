void generarLetras(){
  letras = new int [cant];
  posicionesX = new int [cant];
  posicionesY = new int [cant];
  opacidad = new float [cant];
  
  for(int i = 0; i < cant; i++){
    letras[i] = floor(random(48, 125));
    posicionesX[i] = floor(random(0,width));
    posicionesY[i] = floor(random(-1000,0));
    opacidad[i] = random(100, 250);
  }
}
