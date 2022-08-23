class SerTodoPoderoso {
  int cant = 2000;
  Jugador [] jugadores = new Jugador [cant];

  SerTodoPoderoso() {
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
    for (int i = 0; i < cant; i++) {
      jugadores[i].click();
    }
  }
}
