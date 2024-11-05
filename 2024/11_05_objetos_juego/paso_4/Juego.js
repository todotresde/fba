class Juego{
  constructor(){
    this.gana = false;
    this.personaje = new Personaje();
    this.pared = new Pared();
    this.enemigos = [];
    
    for(let i=0; i<1; i++){
      this.enemigos.push(new Enemigo());
    }
  }
  
  dibujar(){
    this.pared.dibujar();
    this.personaje.dibujar();
    
    for(let i=0; i<1; i++){
      this.enemigos[i].dibujar();
    }
  }
  
  mover(){
  
  }
  
  teclaPresionada(){
    this.personaje.teclaPresionada();
  }
}
