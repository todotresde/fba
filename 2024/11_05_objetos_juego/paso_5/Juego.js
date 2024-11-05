class Juego{
  constructor(){
    this.gana = false;
    this.personaje = new Personaje();
    this.pared = new Pared();
    this.enemigos = [];
    this.cantEnemigos = 10;
    
    for(let i=0; i<this.cantEnemigos; i++){
      let posXAleatoria = random(50, width-50);
      let ubicacion = random(50) > 25;
      this.enemigos.push(new Enemigo(posXAleatoria, ubicacion));
    }
  }
  
  dibujar(){
    this.pared.dibujar();
    this.personaje.dibujar();
    
    for(let i=0; i<this.cantEnemigos; i++){
      this.enemigos[i].dibujar();
    }
  }
  
  mover(){
  
  }
  
  teclaPresionada(){
    this.personaje.teclaPresionada();
  }
}
