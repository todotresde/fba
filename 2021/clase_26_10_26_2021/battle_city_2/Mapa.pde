class Mapa{
  Celda [][] celdas;
  int cantCeldas = 10;
  int tamCelda = width/10;
  
  Mapa(){
    this.celdas = new Celda [cantCeldas][cantCeldas]; 
    for(int i=0; i<cantCeldas;i++){
      for(int j=0; j<cantCeldas;j++){
        this.celdas[i][j] = new Celda(i*tamCelda, j*tamCelda, tamCelda);
      }
    }
    //Agrego un tanque
    this.celdas[4][6].agregarTanque(new Tanque(this));
    //Agrego pared de Ladrillo
    this.celdas[3][3].agregarParedLadrillo(new ParedLadrillo());
    this.celdas[2][3].agregarParedLadrillo(new ParedLadrillo());
    this.celdas[1][3].agregarParedLadrillo(new ParedLadrillo());
    this.celdas[0][3].agregarParedLadrillo(new ParedLadrillo());
    //Agrego pared de Acero
    this.celdas[5][1].agregarParedAcero(new ParedAcero());
  }
  
  void dibujar(){
    for(int i=0; i<cantCeldas;i++){
      for(int j=0; j<cantCeldas;j++){
        this.celdas[i][j].dibujar();
      }
    }
  }
  
  void teclaPresionada(){
    for(int i=0; i<cantCeldas;i++){
      for(int j=0; j<cantCeldas;j++){
        this.celdas[i][j].teclaPresionada();
      }
    }
  }
  
  void subirContenidoCeldaDesde(int posX, int posY){
    int i = floor(map(posX, 0, width, 0, cantCeldas));
    int j = floor(map(posY, 0, width, 0, cantCeldas));
    if(this.celdas[i][j-1].estaVacia()){
      this.celdas[i][j-1].asignar(this.celdas[i][j]);
      this.celdas[i][j].vaciar();
    }
  }
  
  void bajarContenidoCeldaDesde(int posX, int posY){
    int i = floor(map(posX, 0, width, 0, cantCeldas));
    int j = floor(map(posY, 0, width, 0, cantCeldas));
    if(this.celdas[i][j+1].estaVacia()){
      this.celdas[i][j+1].asignar(this.celdas[i][j]);
      this.celdas[i][j].vaciar();
    }
  }
  
  void derechaContenidoCeldaDesde(int posX, int posY){
    int i = floor(map(posX, 0, width, 0, cantCeldas));
    int j = floor(map(posY, 0, width, 0, cantCeldas));
    
    if(this.celdas[i+1][j].estaVacia()){
      this.celdas[i+1][j].asignar(this.celdas[i][j]);
      this.celdas[i][j].vaciar();
    }
  }
  
  void izquierdaContenidoCeldaDesde(int posX, int posY){
    int i = floor(map(posX, 0, width, 0, cantCeldas));
    int j = floor(map(posY, 0, width, 0, cantCeldas));
    if(this.celdas[i-1][j].estaVacia()){
      this.celdas[i-1][j].asignar(this.celdas[i][j]);
      this.celdas[i][j].vaciar();
    }
  }
  
}
