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
  }
  
  finJuego(){
  }
}
