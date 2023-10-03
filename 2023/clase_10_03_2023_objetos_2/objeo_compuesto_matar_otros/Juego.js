class Juego{
  constructor(){
    this.cantPersonajes = 20;
    this.objPersonajes = [];
    this.objSeleccionado;
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
      if(this.objPersonajes[i].seleccionado){
        this.objSeleccionado = this.objPersonajes[i];
      }
    }
  }
  
  mover(){
    for(let i=0; i<this.cantPersonajes; i++){
      this.objPersonajes[i].mover();
    }
    if(this.objSeleccionado){
      for(let i=0; i<this.cantPersonajes; i++){
        this.colisionanPersonajes(this.objSeleccionado, this.objPersonajes[i]);
      }
    }
  }
  
  colisionanPersonajes(personaje1, personaje2){
    if(dist(personaje1.posX, personaje1.posY, personaje2.posX, personaje2.posY) < 20){
      personaje2.matar();
    }
  }
}
