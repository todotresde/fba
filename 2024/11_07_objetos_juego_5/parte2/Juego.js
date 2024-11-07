class Juego{
  constructor(){
    this.pantalla = new Pantalla();    
  }
  
  dibujar(){
    this.pantalla.dibujar();
  }
  
  teclaPresionada(){
    this.pantalla.teclaPresionada();
  }

}
