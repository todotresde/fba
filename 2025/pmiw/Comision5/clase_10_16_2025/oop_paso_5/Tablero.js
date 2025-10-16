class Tablero {
  constructor() {
    this.celdas = [];
    this.cantidad = 10;
    
    for(let i=0; i<this.cantidad; i++){
      this.celdas[i] = [];
      
      for(let j=0; j<this.cantidad; j++){
        this.celdas[i][j] = new Celda(i, j);
      }
    }
  }
  
  dibujar(){
    for(let i=0; i<this.cantidad; i++){
      for(let j=0; j<this.cantidad; j++){
        this.celdas[i][j].dibujar();
      }
    }
  }
  
  agregarFicha(posFila, posColumna){
    this.celdas[posFila][posColumna].agregarFicha();
  }
  
  moverFicha(){
  }
}
