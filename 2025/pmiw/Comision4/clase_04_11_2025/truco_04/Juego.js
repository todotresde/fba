class Juego {
  constructor(){
    this.turno = 1;
    this.jugador1 = new Jugador();
    this.jugador2 = new Jugador();
    this.mesa = new Mesa();
    this.mazo = new Mazo();
    
    this.repartirCartas();
  }
  
  dibujar(){
    this.jugador1.dibujar(20);
    this.mesa.dibujar();
    this.jugador2.dibujar(280);
  }
  
  repartirCartas(){
    this.jugador1.darCarta(this.mazo.obtenerCarta());
    this.jugador1.darCarta(this.mazo.obtenerCarta());
    this.jugador1.darCarta(this.mazo.obtenerCarta());
    
    this.jugador2.darCarta(this.mazo.obtenerCarta());
    this.jugador2.darCarta(this.mazo.obtenerCarta());
    this.jugador2.darCarta(this.mazo.obtenerCarta());
  }
  
  mousePressed(){
    if(this.turno === 1){
      let carta = this.jugador1.obtenerCartaAlHacerClick();
      
      if(carta !== null){
        this.mesa.agregarCarta(carta, 1);
        this.turno = 2;
      }
    }else{
      let carta = this.jugador2.obtenerCartaAlHacerClick();
      
      if(carta !== null){
        this.mesa.agregarCarta(carta, 2);
        this.turno = 1;
      }
    }
  }
}
