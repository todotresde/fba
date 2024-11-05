class Juego {
  constructor() {
    this.juega = true;
    this.ganar = false;
    this.personaje = new Personaje();
    this.pared = new Pared();
    this.enemigos = [];
    this.cantEnemigos = 10;

    for (let i=0; i<this.cantEnemigos; i++) {
      let posXAleatoria = random(50, width-50);
      let ubicacion = random(50) > 25;
      this.enemigos.push(new Enemigo(posXAleatoria, ubicacion));
    }
  }

  dibujar() {
    if(this.juega){
      this.pared.dibujar();
      this.personaje.dibujar();
  
      for (let i=0; i<this.cantEnemigos; i++) {
        this.enemigos[i].dibujar();
      }
  
      this.evaluarColisionPersonajeConPared();
      this.evaluarColisionPersonajeConEnemigos();
    }else{
      if(!this.gana){
        textSize(40);
        text("PERDISTE!!!!", 200, 200);
      }
    }
  }

  mover() {
  }

  teclaPresionada() {
    this.personaje.teclaPresionada();
  }

  evaluarColisionPersonajeConPared() {
    if (
      dist(
      this.personaje.posX,
      this.personaje.posY,
      this.pared.posX,
      this.personaje.posY
      ) < 40) {
        this.juega = false;
        this.gana = false;
    }
  }
}
