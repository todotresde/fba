class Celda {
  constructor(posFila, posColumna) {
    this.posFila = posFila;
    this.posColumna = posColumna;
    this.ficha = null;
  }
  
  dibujar(){
    rect(this.posFila * 40, this.posColumna * 40, 40, 40);
    if(this.ficha !== null){
      this.ficha.dibujar();
    }
  }
  
  agregarFicha(){
  }
  
  quitarFicha(){
  }
}
