class Juego {
  Tablero tablero;
  
  Juego() {
    tablero = new Tablero(8);
  }

  void dibujar() {
    tablero.dibujar();
  }
  
  void teclaPresionada() {
    tablero.teclaPresionada();
  }
  
  void mousePresionado() {
    tablero.mousePresionado();
  }

}
