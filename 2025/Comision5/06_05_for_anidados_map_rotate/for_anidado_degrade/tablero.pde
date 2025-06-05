void dibujarTablero(int cantidad) {
  for (int j=0; j<cantidad; j=j+1) {
    for (int i=0; i<cantidad; i=i+1) {
      dibujarCelda(i, j);
    }
  }
}

void dibujarCelda(int i, int j) {
  //float r = map(j, 0, cant, 0, 255);
  //float g = map(j, 0, cant, 0, 255);
  //float b = map(j, 0, cant, 255, 0);
  //fill(r,g,b);
  //noStroke();
  float r = map(i, 0, cant, 0, 255);
  // i = 0 => r = 0;
  // i = 9 => r = 255;
  // i = 4 => r = 125;
  fill(r,0,0);
  rect(i*tam, j*tam, tam, tam);
}
