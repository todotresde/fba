class Juego {
  constructor() {
    this.personaje = new Personaje();
    this.laberinto = new Laberinto(this.personaje);
  }
  
  dibujar(){
    this.laberinto.dibujar();
  }
}
