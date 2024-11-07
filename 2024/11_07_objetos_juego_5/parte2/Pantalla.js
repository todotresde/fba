class Pantalla{
  constructor(){
    this.personaje = new Personaje();    
    this.obstaculo = new Obstaculo();
  }
  
  dibujar(){
    this.personaje.dibujar();
    this.obstaculo.dibujar();
    this.dibujarSuelo();
  }
  
  dibujarSuelo(){
    fill(0);
    rect(-10,height-10, width+20, 20);
  }
  
  teclaPresionada(){
    this.personaje.teclaPresionada();
  }
}
