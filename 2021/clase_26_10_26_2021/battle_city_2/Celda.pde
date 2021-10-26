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
    if(this.tanque != null)
      this.tanque.dibujar();
    else if(this.tanqueEnemigo != null)
      this.tanqueEnemigo.dibujar();
    else if(this.paredLadrillo != null)
      this.paredLadrillo.dibujar();
    else if(this.paredAcero != null)
      this.paredAcero.dibujar();
    else if(this.aguila != null)
      this.aguila.dibujar();
    else{
      fill(200);
      rect(this.posX, this.posY, this.tamCelda, this.tamCelda);
      fill(0);
      textSize(8);
      text(this.posX + "-" + this.posY, this.posX, this.posY + this.tamCelda);
    }
  }
  
  void teclaPresionada(){
    if(this.tanque != null){
      println(this.posX + "-" + this.tanque.posX);
      this.tanque.teclaPresionada();
    }
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
  
  boolean estaVacia(){
    return this.tanque == null && this.tanqueEnemigo == null && 
      this.paredLadrillo == null && this.paredAcero == null && 
      this.aguila == null;
  }
  
  void vaciar(){
    this.tanque = null;
    this.tanqueEnemigo = null;
    this.paredLadrillo = null;
    this.paredAcero = null;
    this.aguila = null;
  }
  
  void asignar(Celda celda){
    this.agregarTanque(celda.tanque);
    this.tanqueEnemigo = celda.tanqueEnemigo;
    this.paredLadrillo = celda.paredLadrillo;
    this.paredAcero = celda.paredAcero;
    this.aguila = celda.aguila;
  }
  
}
