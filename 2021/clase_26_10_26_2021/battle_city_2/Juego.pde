class Juego{
  Mapa mapa;
  
  Juego(){
    this.mapa = new Mapa();
  }
  
  void dibujar(){
    this.mapa.dibujar();
  }
  
  void teclaPresionada(){
    this.mapa.teclaPresionada();
  }
  
  void spawnEnemigo(){
  }
}
