class Tablero{
  int cantidadCeldas;
  int tamCelda;
  int posX;
  int posY;
  Celda [][] celdas;
  
  Tablero(int p_cantidadCeldas, int p_tamCelda, int p_posX, int p_posY){
    this.cantidadCeldas = p_cantidadCeldas;
    this.tamCelda = p_tamCelda;
    this.posX = p_posX;
    this.posY = p_posY;
    this.celdas = new Celda [this.cantidadCeldas][this.cantidadCeldas];
    
    for(int i=0; i < cantidadCeldas; i++){
      for(int j=0; j < cantidadCeldas; j++){
        this.celdas[i][j] = new Celda(
          this.posX + i*this.tamCelda,
          this.posY + j*this.tamCelda,
          this.tamCelda, 
          this.tamCelda);
        if((i+j)%2 == 0){
          this.celdas[i][j].definirColor(color(0));
        }
      }
    }
  }
  
  void dibujar(){
    for(int i=0; i < cantidadCeldas; i++){
      for(int j=0; j < cantidadCeldas; j++){
        this.celdas[i][j].dibujar();
      }
    }
  }
  
  void agregarFicha(Ficha p_ficha, int p_posX, int p_posY){
    this.celdas[p_posX][p_posY].agregarFicha(p_ficha);
  }
}
