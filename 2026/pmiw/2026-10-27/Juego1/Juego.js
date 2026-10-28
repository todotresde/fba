class Juego{
  constructor(){
    this.personaje = new Personaje();
    this.piedras = [];   
    this.agregarPiedras();
  }
  
  agregarPiedras(){
    for(let i=0; i<10;i++){
      this.piedras.push(new Piedra());
    }
  }
  
  dibujar(){
    background(255);
    this.dibujarPersonaje();
    this.dibujarPiedras();
    this.detectarColisionPersonaje();
  }
  
  dibujarPersonaje(){
    this.personaje.dibujar();
  }
  
  dibujarPiedras(){
    for(let i=0; i<10;i++){
      this.piedras[i].dibujar();
    }
  }
  
  detectarColisionPersonaje(){
    for(let i=0; i<10;i++){
      /**
      line(this.personaje.posX, 
        this.personaje.posY, 
        this.piedras[i].posX,
        this.piedras[i].posY);
        **/
      if(dist(
        this.personaje.posX, 
        this.personaje.posY, 
        this.piedras[i].posX,
        this.piedras[i].posY,
      ) < 20){
        this.personaje.morir();
      }
    }
  }
}
