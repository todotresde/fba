class Juego{
  constructor(){
    this.cantPersonajes = 20;
    this.objPersonajes = [];
    for(let i=0; i<this.cantPersonajes; i++){
      this.objPersonajes[i] = new Personaje(
        random(width), random(height), 
        color(random(255),random(255),random(255)));
    }
  }
  
  dibujar(){
    fill(255,0,0);
    rect(0,0,width,200);
    
    for(let i=0; i<this.cantPersonajes; i++){
      this.objPersonajes[i].dibujar();
    }
  }
  
  click(){
    //Le digo a todo los personajes ue se deseleccionen
    for(let i=0; i<this.cantPersonajes; i++){
      this.objPersonajes[i].deseleccionado();
    }
    //Se selcciona solo 1
    for(let i=0; i<this.cantPersonajes; i++){
      this.objPersonajes[i].click();
    }
  }
  
  mover(){
    for(let i=0; i<this.cantPersonajes; i++){
      this.objPersonajes[i].mover();
    }
  }
}
