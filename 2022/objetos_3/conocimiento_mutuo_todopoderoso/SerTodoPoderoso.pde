class SerTodoPoderoso {
  int cant;
  Jugador [] jugadores;

  SerTodoPoderoso(int cantJugadores) {
    cant = cantJugadores;
    jugadores = new Jugador [cant];
    
    for (int i = 0; i < cant; i++) {
      jugadores[i] = new Jugador();
    }
  }

  void dibujar() {
    for (int i = 0; i < cant; i++) {
      jugadores[i].dibujar();
    }
    calcularColisionesYCambiarDireccion();
  }
  
  void calcularColisionesYCambiarDireccion(){
    for (int i = 0; i < cant; i++) {
      Jugador jugadorAComparar = jugadores[i];
      
      for (int j = 0; j < cant; j++) {
        if(i != j && estanChocandoEntre(jugadorAComparar, jugadores[j])){
          //jugadorAComparar.cambiarDireccion();
          jugadores[j].cambiarDireccion();
          println("CHOCAN!");
        }
      }
    }
  }
  
  boolean estanChocandoEntre(Jugador jugador1, Jugador jugador2){
    //stroke(100,50);
    //line(jugador1.posX, jugador1.posY, jugador2.posX, jugador2.posY);
    return dist(jugador1.posX, jugador1.posY, jugador2.posX, jugador2.posY) < (jugador1.tam);
  }

}
