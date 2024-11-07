class Pantalla{
  constructor(){
    this.personaje = new Personaje();    
    this.obstaculo = new Obstaculo();
  }
  
  dibujar(){
    this.personaje.dibujar();
    this.obstaculo.dibujar();
    this.dibujarSuelo();
    this.colisionPersonajeConObstaculo();
  }
  
  dibujarSuelo(){
    fill(0);
    rect(-10,height-10, width+20, 20);
  }
  
  teclaPresionada(){
    this.personaje.teclaPresionada();
  }
  
  colisionPersonajeConObstaculo(){
    if(this.personaje.haDisparado()){
      if(dist(
        this.personaje.pistola.bala.posX,
        this.personaje.pistola.bala.posY,
        this.obstaculo.posX,
        this.obstaculo.posY) < 30){
        this.obstaculo.matar();  
      }
    }
  }
}
