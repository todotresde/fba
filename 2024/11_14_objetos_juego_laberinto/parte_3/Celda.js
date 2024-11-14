class Celda{
  constructor(posX, posY){
    this.posX = posX * 30;
    this.posY = posY * 30;
    this.personaje;
    this.premio;
    this.pared = new Pared();
    this.tipo = 0;
  }
  
  dibujar(){
    if(this.tipo === 0){
      fill(255);
      rect(this.posX, this.posY, 30, 30);
    }else if(this.tipo === 1){
      //this.pared.dibujar();
      fill(0);
      rect(this.posX, this.posY, 30, 30);
    }else if(this.tipo === 2){
      this.personaje.dibujar();
    }else if(this.tipo === 3){
      this.premio.dibujar();
    }
  }
  
  definirPared(){
    if(random(0,1) > 0.3){
      this.tipo = 0;
    }else{
      this.tipo = 1;
    }
  }
  
  setearPersonaje(personaje){
    this.tipo = 2;
    this.personaje = personaje;
  }
  
  setearPremio(premio){
    this.tipo = 3;
    this.premio = premio;
  }
}
