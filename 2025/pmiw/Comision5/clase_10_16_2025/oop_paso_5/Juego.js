class Juego {
  constructor() {
    this.tablero = new Tablero();
    this.jugador1 = new Jugador();
    this.jugador2 = new Jugador();
    this.turno = 1;
  }
  
  dibujar(){
    this.tablero.dibujar();
  }
  
  cambiarTurno(){
    if(this.turno === 1){
      this.turno = 2;
    }else if(this.turno === 2){
      this.turno = 1;
    }
  }
  
  iniciarJuego(){
    this.tablero.agregarFicha(5,5);
    this.tablero.agregarFicha(5,4);
    this.tablero.agregarFicha(2,7);
    this.tablero.agregarFicha(1,9);
  }
  
  finJuego(){
  }
}
