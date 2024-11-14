class Principal{
  constructor(){
    this.juego = new Juego();
    this.pantallaInicio = new Pantalla("titulo", 2);
    this.pantallaCreditos = new PantallaCreditos();
    this.pantallaInstrucciones = new Pantalla();
  }
  
  dibujar(){
    if(pantallaActiva === 1){
      this.pantallaInicio.dibujar();
    }else if(pantallaActiva === 2){
      this.pantallaInicio.pantallaCreditos();
    }else if(pantallaActiva === 3){
      this.juego.dibujar();
    }
    
    if(this.juego.gano()){
      this.pantallaActiva = 5;
    }
  }
  
  teclaPresionada(){
    if(pantallaActiva === 3){
      this.juego.teclaPresionada();
    }
  }
}
