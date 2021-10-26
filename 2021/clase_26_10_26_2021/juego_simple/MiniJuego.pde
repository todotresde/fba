class MiniJuego {
  boolean jugando;
  int posXEllipse, posYEllipse;
  int tamEllipse;
  boolean gano;

  MiniJuego() {
    jugando = false;
    tamEllipse = 50;
    gano = false;
  }

  void dibujar() {
    if (estoyJugando()) {
      this.posXEllipse = 220;//round(random(50, width-50));
      this.posYEllipse = 200;//round(random(50, height-50));
      ellipse(this.posXEllipse, this.posYEllipse, this.tamEllipse, this.tamEllipse);
    }
  }

  boolean estoyJugando() {
    return jugando;
  }

  void mousePresionado() {
    if (estoyJugando()) {
      if (dist(mouseX, mouseY, this.posXEllipse, this.posYEllipse) < this.tamEllipse) {
        gano = true;
      } else {
        gano = false;
      }
    }
  }

  void iniciar() {
    jugando = true;
  }
  
  void finalizar() {
    jugando = false;
    gano = false;
  }
}
