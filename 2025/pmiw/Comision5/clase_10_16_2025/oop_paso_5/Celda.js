class Celda {
  constructor(posFila, posColumna) {
    this.posFila = posFila;
    this.posColumna = posColumna;
    this.ficha = null;
  }
  
  dibujar(){
    noFill();
    rect(this.posFila * 40, this.posColumna * 40, 40, 40);
    if(this.ficha !== null){
      this.ficha.dibujar();
    }
  }
  
  agregarFicha(){
    this.ficha = new Ficha(this.posFila, this.posColumna);
  }
  
  quitarFicha(){
  }
}
