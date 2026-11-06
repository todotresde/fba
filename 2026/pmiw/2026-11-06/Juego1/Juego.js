class Juego {
  constructor() {
    this.personaje = new Personaje();
    this.piedras = [];
    this.agregarPiedras();
  }

  agregarPiedras() {
    for (let i=0; i<10; i++) {
      this.piedras.push(new Piedra());
    }
  }

  dibujar() {
    background(255);
    this.dibujarPersonaje();
    this.dibujarPiedras();
    this.detectarColisionPersonaje();
  }

  dibujarPersonaje() {
    this.personaje.dibujar();
  }

  dibujarPiedras() {
    for (let i=0; i<10; i++) {
      this.piedras[i].dibujar();
    }
  }

  detectarColisionPersonaje() {
    for (let i=0; i<10; i++) {
      if (
        !this.piedras[i].estaRota() &&
        this.piedras[i].estaCercaDelPersonaje(this.personaje)
        ) {
        this.personaje.dañar();
        this.piedras[i].romper();
      }
    }
  }
}
