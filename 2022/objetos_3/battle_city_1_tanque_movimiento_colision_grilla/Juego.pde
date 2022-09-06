class Juego {
  int cantParedes = 10;
  Tanque tanque;
  Pared [][] paredes = new Pared [cantParedes][cantParedes]; 

  Juego() {
    int posX = round(map(6, 0, cantParedes, 0, width));
    int posY = round(map(6, 0, cantParedes, 0, height));
    tanque = new Tanque(posX, posY, round(width/cantParedes), round(height/cantParedes));

    generarParedes();
  }

  void dibujar() {
    dibujarParedes();
    dibujarTanque();
  }

  void generarParedes() {
    for (int i=0; i< cantParedes; i++) {
      for (int j=0; j< cantParedes; j++) {
        if (random(0, 100) < 20) {
          int posX = round(map(i, 0, cantParedes, 0, width));
          int posY = round(map(j, 0, cantParedes, 0, height));

          paredes[i][j] = new Pared(posX, posY, round(width/cantParedes), round(height/cantParedes));
        }
      }
    }
  }

  void dibujarParedes() {
    for (int i=0; i< cantParedes; i++) {
      for (int j=0; j< cantParedes; j++) {
        if (paredes[i][j] != null) {
          paredes[i][j].dibujar();
        }
                noFill();
        stroke(0, 255, 0);
        rect(i * round(width/cantParedes), j * round(width/cantParedes), round(width/cantParedes), round(height/cantParedes));
      }
    }
  }

  void dibujarTanque() {
    tanque.dibujar();
  }

  void teclaPresionada() {
    if (keyCode == RIGHT) {
      if (puedoMoverElTanqueA(tanque.posicionALaDerecha(), tanque.posY)) {
        tanque.moverDerecha();
      }
    }
    if (keyCode == LEFT) {
      if (puedoMoverElTanqueA(tanque.posicionALaIzquierda(), tanque.posY)) {
        tanque.moverIzquierda();
      }
    }
    if (keyCode == UP) {
      if (puedoMoverElTanqueA(tanque.posX, tanque.posicionArriba())) {
        tanque.moverArriba();
      }
    }
    if (keyCode == DOWN) {
      if (puedoMoverElTanqueA(tanque.posX, tanque.posicionAbajo())) {
        tanque.moverAbajo();
      }
    }
  }

  boolean puedoMoverElTanqueA(int siguientePosX, int siguientePosY) {
    int posXParedSiguiente = round(map(siguientePosX, 0, width, 0, cantParedes));
    int posYParedSiguiente = round(map(siguientePosY, 0, height, 0, cantParedes));

    if (posXParedSiguiente >= cantParedes || posXParedSiguiente < 0 ||
      posYParedSiguiente >= cantParedes || posYParedSiguiente < 0) {
      return false;
    }

    Pared paredSiguiente = paredes[posXParedSiguiente][posYParedSiguiente];

    return paredSiguiente == null;
  }
}
