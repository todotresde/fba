class Juego {
  constructor(){
    this.jugador1 = new Jugador();
    this.jugador2 = new Jugador();
    this.mazo = new Mazo();
    
    this.repartirCartas();
  }
  
  dibujar(){
    this.jugador1.dibujar();
    this.jugador1.dibujar();
    this.jugador2.dibujar();
  }
  
  repartirCartas(){
    this.jugador1.darCarta(this.mazo.obtenerCarta());
    this.jugador1.darCarta(this.mazo.obtenerCarta());
    this.jugador1.darCarta(this.mazo.obtenerCarta());
    
    this.jugador2.darCarta(this.mazo.obtenerCarta());
    this.jugador2.darCarta(this.mazo.obtenerCarta());
    this.jugador2.darCarta(this.mazo.obtenerCarta());
  }
}
