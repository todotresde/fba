void dibujarScore(int posX, int posY) {
  textSize(30);
  fill(255, 0, 0);
  text("Score: " + puntaje, posX, posY);
}

void dibujarElipses() {
  if(frameCount%600 == 0){
    for (int fila = 0; fila < cantFilas; fila++) {
      for (int columna = 0; columna < cantColumnas; columna++) {
        if (tablero[columna][fila] == 3) {
          tablero[columna][fila] = 0;
        }
      }
    }
    
    for (int fila = 0; fila < cantFilas; fila++) {
      for (int columna = 0; columna < cantColumnas; columna++) {
        if (random(0,10) > 7) {
          tablero[columna][fila] = 3;
        }
      }
    }
  }
}
