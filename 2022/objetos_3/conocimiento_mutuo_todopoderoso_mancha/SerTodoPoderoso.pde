class SerTodoPoderoso {
  int cant;
  Jugador [] jugadores;

  SerTodoPoderoso(int cantJugadores) {
    cant = cantJugadores;
    jugadores = new Jugador [cant];
    int esMancha = floor(random(0, cant));

    for (int i = 0; i < cant; i++) {
      jugadores[i] = new Jugador();
      if (i == esMancha) {
        jugadores[i].esMancha();
      }
    }
  }

  void dibujar() {
    for (int i = 0; i < cant; i++) {
      jugadores[i].dibujar();
    }
    calcularColisionesYCambiarDireccion();
  }

  void calcularColisionesYCambiarDireccion() {
    for (int i = 0; i < cant; i++) {
      Jugador jugadorAComparar = jugadores[i];

      for (int j = 0; j < cant; j++) {
        if (i != j && estanChocandoEntre(jugadorAComparar, jugadores[j])) {
          jugadores[j].cambiarDireccion();
          if (jugadorAComparar.mancha) {
            jugadorAComparar.noEsMancha();
            jugadores[j].esMancha();
          } else if (jugadores[j].mancha) {
            jugadorAComparar.esMancha();
            jugadores[j].noEsMancha();
          }
        }
      }
    }
  }

  boolean estanChocandoEntre(Jugador jugador1, Jugador jugador2) {
    //stroke(100,50);
    //line(jugador1.posX, jugador1.posY, jugador2.posX, jugador2.posY);
    return dist(jugador1.posX, jugador1.posY, jugador2.posX, jugador2.posY) < (jugador1.tam);
  }

  void cambiarMancha(Jugador jugador1, Jugador jugador2) {
    if (jugador1.mancha) {
      jugador1.noEsMancha();
      jugador2.esMancha();
    } else if (jugador2.mancha) {
      jugador1.esMancha();
      jugador2.noEsMancha();
    }
  }
}
