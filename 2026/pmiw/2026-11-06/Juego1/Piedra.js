class Piedra{
  constructor(){
    this.posX = random(50, 350);
    this.posY = random(-100, -300);
    this.vel = 1;
    this.rota = false;
  }
  
  mover(){
    if(!this.estaRota()){
      this.posY++;
    }
  }
  
  dibujar(){
    if(!this.estaRota()){
      fill(200);
      ellipse(this.posX, this.posY, 10, 10);
      this.mover();
    }
  }
  
  romper(){
    this.rota = true;
  }
  
  estaRota(){
    return this.rota == true;
  }
  
  estaCercaDelPersonaje(personaje){
    return dist(
        personaje.posX, 
        personaje.posY, 
        this.posX,
        this.posY,
      ) < 20;
  }
}
