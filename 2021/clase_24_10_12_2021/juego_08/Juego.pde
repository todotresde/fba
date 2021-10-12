class Juego{
  int cantidadEnemigos = 6;
  Personaje personaje;
  Enemigo [] enemigos = new Enemigo [cantidadEnemigos];
  
  Juego(){
    this.personaje = new Personaje();
    
    for(int i=0; i < cantidadEnemigos; i++){
      int posXEnemigo = 50 * (i + 1);
      this.enemigos[i] = new Enemigo(posXEnemigo, 50);
    }
  }
  
  void dibujar(){
    this.personaje.dibujar();
    
    for(int i=0; i < cantidadEnemigos; i++){
      this.enemigos[i].dibujar();
      if(this.balaMataEnemigo(this.personaje.bala, this.enemigos[i])){
        this.enemigos[i].matar();
      }
    }
  }
  
  void teclaPresionada(){
    this.personaje.teclaPresionada();
  }
  
  boolean balaMataEnemigo(Bala bala, Enemigo enemigo){
    if(bala.disparada){
      if(dist(bala.posX, bala.posY, enemigo.posX, enemigo.posY) < 25){
        return true;
      }
    }
    return false;
  }
}
