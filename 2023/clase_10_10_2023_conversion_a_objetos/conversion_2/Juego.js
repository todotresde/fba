class Juego{
  constructor(){
    this.medusas = [];  
    this.red = new Red();
    this.contador = new Contador();
    this.timer = new Timer();
    this.fondo = imagenFondo;
    this.cantidadMedusas = 100;
    
    for(let i=0; i<this.cantidadMedusas; i++){
      this.medusas[i] = new Medusa();
    }
  }
  
  dibujar(){
    this.dibujarFondo();
    this.dibujarMedusas();
    this.red.dibujar();
    this.contador.dibujar();
    this.timer.dibujar();
    
    if(this.juegoTerminado()){
      for(let i=0; i<this.cantidadMedusas; i++){
        this.medusas[i] = new Medusa();
      }
    }
  }
  
  dibujarFondo(){
    image(this.fondo, 0, 0, width, height);
  }
  
  dibujarMedusas(){
    for(let i=0; i<this.cantidadMedusas; i++){
      this.medusas[i].dibujar();
    }
  }
  
  mousePresionado(){
    for(let i=0; i<this.cantidadMedusas; i++){
      if(this.hayColision(this.medusas[i], this.red)){
        this.medusas[i].atrapar();
        this.contador.incrementar();
      }
    }
  }
  
  hayColision(medusa, red){
    return !medusa.atrapada && dist(medusa.posX, medusa.posY, red.posX, red.posY) < 20;
  }
  
  juegoTerminado(){
    return this.timer.llegoLimite();
  }
}
