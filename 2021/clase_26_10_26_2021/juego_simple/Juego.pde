class Juego{
  int pantallaActual; //0 Inicio, 1 Juego, 2 Fin
  Pantalla pantallaInicio, pantallaFinOk, pantallaFinNoOk;
  boolean gano;
  MiniJuego miniJuego;
  
  Juego(){
    miniJuego = new MiniJuego();
    pantallaActual = 0;
    pantallaInicio = new Pantalla("Welcome! Click to play");
    pantallaFinOk = new Pantalla("You win!");
    pantallaFinNoOk = new Pantalla("Try again!");
    gano = false;
  }
  
  void dibujar(){
    if(this.inicioDelJuego()){
      pantallaInicio.dibujar();
    }else if(this.estoyJugando()){
      miniJuego.dibujar();
    }else{
      if(gano){
        pantallaFinOk.dibujar();
      }else{
        pantallaFinNoOk.dibujar();
      }
    }
  }
  
  boolean inicioDelJuego(){
    return pantallaActual == 0;
  }
  
  boolean estoyJugando(){
    return pantallaActual == 1;
  }
  
  void mousePresionado(){
    if(this.inicioDelJuego()){
      cambiarSiguientePantalla();
    }else if(this.estoyJugando()){
      miniJuego.mousePresionado();
      gano = miniJuego.gano;
      cambiarSiguientePantalla();
    }else{
      cambiarSiguientePantalla();
    }
  }
  
  void cambiarSiguientePantalla(){
    if(this.inicioDelJuego()){
      pantallaActual++;
      miniJuego.iniciar();
    }else if(this.estoyJugando()){
      pantallaActual++;
      miniJuego.finalizar();
    }else{
      pantallaActual = 0;
    }
  }
}
