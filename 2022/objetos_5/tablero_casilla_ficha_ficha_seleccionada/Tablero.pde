class Tablero {
  int cantCasillas;
  Casilla [][] casillas;
  
  Tablero(int _cantCasillas) {
    cantCasillas = _cantCasillas;
    
    casillas = new Casilla [cantCasillas][cantCasillas];
    
    int tam = width/cantCasillas;
    
    for (int i = 0; i < cantCasillas; i++) {
      for (int j = 0; j < cantCasillas; j++) {
        if(random(100)<20){
          casillas[i][j] = new Casilla(i, j, tam, new Ficha(i, j, tam));
        }else{
          casillas[i][j] = new Casilla(i, j, tam);
        }
      }
    }
  }

  void dibujar() {
    for (int i = 0; i < cantCasillas; i++) {
      for (int j = 0; j < cantCasillas; j++) {
        casillas[i][j].dibujar();
      }
    }
  }
  
  void mousePresionado() {
    for (int i = 0; i < cantCasillas; i++) {
      for (int j = 0; j < cantCasillas; j++) {
        casillas[i][j].mousePresionado();
      }
    }
  }
}
