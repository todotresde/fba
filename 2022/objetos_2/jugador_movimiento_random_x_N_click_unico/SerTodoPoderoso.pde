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

  void click() {
    int ultimoEnHacerClick = -1;
    for (int i = 0; i < cant; i++) {
      if (jugadores[i].hiceClickEncima()) {
        ultimoEnHacerClick = i;
      }
    }
    if (ultimoEnHacerClick != -1) {
      jugadores[ultimoEnHacerClick].arrancarOParar();
    }
  }
}
