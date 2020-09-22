class Tablero{
  int cantidadCeldas = 10;
  Celda [][] celdas;
  
  Tablero(){
    celdas = new Celda [cantidadCeldas][cantidadCeldas];
  }
  
  void dibujar(){
    for(int i=0; i<cantidadCeldas; i++){
      for(int j=0; j<cantidadCeldas; j++){
        celdas[i][j].dibujar();
      }
    }
  }
  
  void teclaPresionada(){
    
  }
  
}
