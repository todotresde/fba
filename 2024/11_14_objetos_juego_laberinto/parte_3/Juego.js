class Juego{
  constructor(){
    this.personaje = new Personaje();
    this.premio = new Premio();
    this.laberinto = new Laberinto(this.personaje, this.premio);
  }
  
  dibujar(){
    this.laberinto.dibujar();
  }
}
