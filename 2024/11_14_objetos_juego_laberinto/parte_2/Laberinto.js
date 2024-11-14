class Laberinto {
  constructor(personaje, premio) {
    this.personaje = personaje;
    this.premio = premio;
    
    this.celdas = [];
    for (let i=0; i<10; i++) {
      this.celdas[i] = [];
      for (let j=0; j<10; j++) {
        this.celdas[i][j] = new Celda(i,j);
        this.celdas[i][j].definirPared();
      }
    }
  }

  dibujar() {
    for (let i=0; i<10; i++) {
      for (let j=0; j<10; j++) {
        this.celdas[i][j].dibujar();
      }
    }
  }
}
