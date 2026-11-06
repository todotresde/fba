class Laberinto {
  constructor(personaje) {
    this.filas = 10;
    this.columnas = 10;
    this.celdas = [];
    
    for (let f = 0; f < this.filas; f++) {
      this.celdas[f] = [];
      for (let c = 0; c < this.columnas; c++) {
        this.celdas[f][c] = new Celda(f, c);
      }
    }
    
    this.celdas[0][0].agregarPersonaje(personaje);
    this.celdas[0][1].convertirAPared();
    this.celdas[0][2].convertirAPared();
    this.celdas[1][0].convertirAPared();
    this.celdas[2][0].convertirAPared();
    this.celdas[3][0].convertirAPared();
    
  }
  
  dibujar(){
    for (let f = 0; f < this.filas; f++) {
      for (let c = 0; c < this.columnas; c++) {
        this.celdas[f][c].dibujar();
      }
    }
  }
}
