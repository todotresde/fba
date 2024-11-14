class Juego {
  constructor() {
    this.juega = true;
    this.ganar = false;
    this.personaje = new Personaje();
    this.pared = new Pared();
    this.talismanes = [];
    this.cantTalismanes = 10;

    for (let i=0; i<this.cantTalismanes; i++) {
      let posXAleatoria = random(50, width-50);
      let ubicacion = random(50) > 25;
      this.talismanes.push(new Talisman(posXAleatoria, ubicacion));
    }
  }

  dibujar() {
    if (this.juega) {
      this.pared.dibujar();
      this.personaje.dibujar();

      for (let i=0; i<this.cantTalismanes; i++) {
        this.talismanes[i].dibujar();
      }

      this.evaluarColisionPersonajeConPared();
      this.evaluarColisionPersonajeContalismanes();
      this.evaluarColisionPersonajeParedDerecha();
    } else {
      if (!this.gana) {
        textSize(40);
        text("PERDISTE!!!!", 200, 200);
      }else{
        textSize(40);
        fill(0,255,0);
        text("GANASTE!!!!", 200, 200);
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

  evaluarColisionPersonajeContalismanes() {

    for (let i=0; i<this.cantTalismanes; i++) {
      this.talismanes[i].dibujar();
      
      if (
        this.talismanes[i].activo === true &&
        dist(
        this.talismanes[i].posX,
        this.talismanes[i].posY,
        this.personaje.posX,
        this.personaje.posY
        ) < 20) {
        this.talismanes[i].activo = false;
        this.personaje.sumarTalisman();
      }
    }
  }
  
  evaluarColisionPersonajeParedDerecha() {
    if (
      dist(
      this.personaje.posX,
      this.personaje.posY,
      width,
      this.personaje.posY
      ) < 40) {
      this.juega = false;
      this.gana = true;
    }
  }
}
