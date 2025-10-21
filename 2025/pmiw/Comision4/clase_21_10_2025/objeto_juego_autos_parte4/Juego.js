class Juego{
  constructor(){
    this.jugador = new Jugador();
    this.cantAutosEnemigos = 100;
    this.autosEnemigos = [];
  }
  
  iniciar(){
    for(let i=0; i<this.cantAutosEnemigos; i++){
      this.autosEnemigos[i] = new AutoEnemigo();
    }
  }
  
  reiniciar(){
  }
  
  dibujar(){
    this.dibujarPista();
    this.dibujarHud();
    this.dibujarAutosEnemigos();
    this.jugador.dibujar();
  }
  
  dibujarAutosEnemigos(){
    for(let i=0; i<this.cantAutosEnemigos; i++){
      this.autosEnemigos[i].dibujar();
    }
  }
  
  dibujarPista(){
  }
  
  dibujarHud(){
  }
}
