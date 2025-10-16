class Ficha {
  constructor(posFila, posColumna) {
    this.posFila = posFila;
    this.posColumna = posColumna;
  }
  
  dibujar(){
    fill(255,0,0);
    ellipse((this.posFila * 40) - 20, (this.posColumna * 40) - 20, 40, 40);
  }
}
