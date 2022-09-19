class ProgramaPrincipal {
  Pantalla pInicio, p1, p2;
  Pantalla pantallaActual;
  
  ProgramaPrincipal() {
    pInicio = new Pantalla("papel.png");
    p1 = new Pantalla("piedra.png");
    p2 = new Pantalla("tijera.png");
    
    pantallaActual = pInicio;
  }

  void dibujar() {
    pantallaActual.dibujar();
  }
  
  void mousePresionado() {
  }

}
