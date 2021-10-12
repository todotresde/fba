class Juego{
  int cantidadEnemigos = 10;
  Personaje personaje;
  Enemigo [] enemigos = new Enemigo [cantidadEnemigos];
  
  Juego(){
    this.personaje = new Personaje();
    
    for(int i=0; i < cantidadEnemigos; i++){
      this.enemigos[i] = new Enemigo();
    }
  }
  
  void dibujar(){
    this.personaje.dibujar();
    
    for(int i=0; i < cantidadEnemigos; i++){
      this.enemigos[i].dibujar();
    }
  }
}
