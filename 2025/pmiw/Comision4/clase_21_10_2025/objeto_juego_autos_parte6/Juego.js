class Juego{
  constructor(){
    this.jugador = new Jugador();
    this.cantAutosEnemigos = 100;
    this.autosEnemigos = [];
  }
  
  iniciar(){
    for(let i=0; i<this.cantAutosEnemigos; i++){
      let posX = random(0, width);
      let posY = random(-100, -10000);
      this.autosEnemigos[i] = new AutoEnemigo(posX, posY);
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
  
  teclaPresionada(){
    this.jugador.teclaPresionada();
  }
}
