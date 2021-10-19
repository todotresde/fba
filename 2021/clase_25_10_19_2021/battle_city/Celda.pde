class Celda{
  int posX, posY, tamCelda;
  
  Tanque tanque;
  TanqueEnemigo tanqueEnemigo;
  ParedLadrillo paredLadrillo;
  ParedAcero paredAcero;
  Aguila aguila;
  
  Celda(int posX, int posY, int tamCelda){
    this.posX = posX;
    this.posY = posY;
    this.tamCelda = tamCelda;
  }
  
  void dibujar(){
    if(tanque != null)
      tanque.dibujar();
    else if(tanqueEnemigo != null)
      tanqueEnemigo.dibujar();
    else if(paredLadrillo != null)
      paredLadrillo.dibujar();
    else if(paredAcero != null)
      paredAcero.dibujar();
    else if(aguila != null)
      aguila.dibujar();
    else{
      fill(200);
      rect(this.posX, this.posY, this.tamCelda, this.tamCelda);
    }
  }
  
  void teclaPresionada(){
    if(tanque != null)
      tanque.teclaPresionada();
  }
  
  void agregarTanque(Tanque tanque){
    this.tanque = tanque;
    this.tanque.posX = this.posX;
    this.tanque.posY = this.posY;
    this.tanque.tamCelda = this.tamCelda;
  }
  
  void agregarParedLadrillo(ParedLadrillo paredLadrillo){
    this.paredLadrillo = paredLadrillo;
    this.paredLadrillo.posX = this.posX;
    this.paredLadrillo.posY = this.posY;
    this.paredLadrillo.tamCelda = this.tamCelda;
  }
  
  void agregarParedAcero(ParedAcero paredAcero){
    this.paredAcero = paredAcero;
    this.paredAcero.posX = this.posX;
    this.paredAcero.posY = this.posY;
    this.paredAcero.tamCelda = this.tamCelda;
  }
  
}
