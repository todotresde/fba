class Tablero {
  int cantCasillas;
  Casilla [][] casillas;

  Tablero(int _cantCasillas) {
    cantCasillas = _cantCasillas;

    casillas = new Casilla [cantCasillas][cantCasillas];

    int tam = width/cantCasillas;

    for (int i = 0; i < cantCasillas; i++) {
      for (int j = 0; j < cantCasillas; j++) {
        if (random(100)<20) {
          casillas[i][j] = new Casilla(i, j, tam, new Ficha(i, j, tam));
        } else {
          casillas[i][j] = new Casilla(i, j, tam);
        }
      }
    }
  }

  void dibujar() {
    for (int i = 0; i < cantCasillas; i++) {
      for (int j = 0; j < cantCasillas; j++) {
        casillas[i][j].dibujar();
      }
    }
  }
  
  void teclaPresionada() {
    if (keyCode == RIGHT) {
      //Identificar la ficha selecionada
      //Obtener la casilla
      Casilla casillaConFichaSeleccionada = obtenerLaCasillaConFichaSeleccionada();
      //Sacar la ficha de la casilla
      Ficha ficha = sacarFichaDeCasilla(casillaConFichaSeleccionada);
      //Obtener asilla de la detecha
      Casilla casillaDerecha = obtenerCasillaDerecha(casillaConFichaSeleccionada);
      //Agregar la ficha en la casilla de la derecha
      agregarFichaACasilla(casillaDerecha, ficha);
    }
  }
  
  void mousePresionado() {
    deseleccionarFicha();
    seleccionarFicha();
  }

  void deseleccionarFicha() {
    for (int i = 0; i < cantCasillas; i++) {
      for (int j = 0; j < cantCasillas; j++) {
        casillas[i][j].deseleccionarFicha();
      }
    }
  }
  
  void seleccionarFicha() {
    for (int i = 0; i < cantCasillas; i++) {
      for (int j = 0; j < cantCasillas; j++) {
        casillas[i][j].mousePresionado();
      }
    }
  }
  
  Casilla obtenerLaCasillaConFichaSeleccionada() {
    for (int i = 0; i < cantCasillas; i++) {
      for (int j = 0; j < cantCasillas; j++) {
        if(casillas[i][j].fichaSeleccionada()){
          return casillas[i][j];
        }
      }
    }
    
    return null;
  }
  
  Ficha sacarFichaDeCasilla(Casilla casillaConFichaSeleccionada) {
    Ficha ficha = null;
    
    for (int i = 0; i < cantCasillas; i++) {
      for (int j = 0; j < cantCasillas; j++) {
        if(casillas[i][j].posX == casillaConFichaSeleccionada.posX && 
          casillas[i][j].posY == casillaConFichaSeleccionada.posY){
          ficha = casillas[i][j].ficha;
          casillas[i][j].quitarFicha();
        }
      }
    }
    
    return ficha;
  }
  
  Casilla obtenerCasillaDerecha(Casilla casilla){
    for (int i = 0; i < cantCasillas; i++) {
      for (int j = 0; j < cantCasillas; j++) {
        if(casillas[i][j].posX == casilla.posX && casillas[i][j].posY == casilla.posY){
          return casillas[i+1][j];
        }
      }
    }
    
    return null;
  }
  
  void agregarFichaACasilla(Casilla casilla, Ficha ficha){
    for (int i = 0; i < cantCasillas; i++) {
      for (int j = 0; j < cantCasillas; j++) {
        if(casillas[i][j].posX == casilla.posX && casillas[i][j].posY == casilla.posY){
          casillas[i][j].ficha = ficha;
        }
      }
    }
  }
}
