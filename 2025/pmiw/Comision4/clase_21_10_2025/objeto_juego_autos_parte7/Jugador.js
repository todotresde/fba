class Jugador {
  constructor() {
    this.vidas = 3;
    this.puntaje = 0;
    this.auto = new AutoJugador();
  }
  
  dibujar(){
    this.auto.dibujar();
  }

  quitarVida(){
    this.vidas = this.vidas - 1;
  }
  
  incrementarPuntaje(){
     this.puntaje = this.puntaje + 100;
  }
  
  teclaPresionada(){
    this.auto.teclaPresionada();
  }
}
