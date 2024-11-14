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
    this.celdas[0][0].setearPersonaje(this.personaje)
    this.celdas[9][9].setearPremio(this.premio)
  }

  dibujar() {
    for (let i=0; i<10; i++) {
      for (let j=0; j<10; j++) {
        this.celdas[i][j].dibujar();
      }
    }
  }
}
