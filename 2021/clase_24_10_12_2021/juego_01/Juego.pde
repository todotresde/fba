class Juego{
  Personaje personaje;
  
  Juego(){
    personaje = new Personaje();
  }
  
  void dibujar(){
    personaje.dibujar();
  }
}
