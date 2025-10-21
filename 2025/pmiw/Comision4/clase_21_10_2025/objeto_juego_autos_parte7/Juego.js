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
    this.dibujarAutosEnemigos();
    this.jugador.dibujar();
    this.dibujarHud();
    this.controlColision();
  }
  
  dibujarAutosEnemigos(){
    for(let i=0; i<this.cantAutosEnemigos; i++){
      this.autosEnemigos[i].dibujar();
    }
  }
  
  dibujarPista(){
  }
  
  dibujarHud(){
    fill(0);
    text("Vidas: " + this.jugador.vidas, 50, 50);
    text("Puntos: " + this.jugador.puntaje, 350, 50);
  }
  
  teclaPresionada(){
    this.jugador.teclaPresionada();
  }
  
  controlColision(){
    for(let i=0; i<this.cantAutosEnemigos; i++){
      if(dist(this.autosEnemigos[i].posX, this.autosEnemigos[i].posY, this.jugador.auto.posX, this.jugador.auto.posY) < 20){
        this.jugador.quitarVida();
        this.iniciar();
      }
    }
  }
}
