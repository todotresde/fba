class Juego{
  Tablero tablero;
  
  Juego(){
    tablero = new Tablero();
  }
  
  void dibujar(){
    tablero.dibujar();
  }
  
  void teclaPresionada(){
    tablero.teclaPresionada();
  }
}
