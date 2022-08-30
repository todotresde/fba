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
  }

}
