class Juego{
  constructor(){
    this.gana = false;
    this.personaje = new Personaje();
    this.pared = new Pared();
    this.enemigos = [];
  }
  
  dibujar(){
    this.pared.dibujar();
  }
  
  mover(){
  
  }
  
  teclaPresionada(){
  }
}
