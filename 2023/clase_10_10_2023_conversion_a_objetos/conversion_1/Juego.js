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
  }
  
  dibujarFondo(){
    image(this.fondo, 0, 0, width, height);
  }
  
  dibujarMedusas(){
    for(let i=0; i<this.cantidadMedusas; i++){
      this.medusas[i].dibujar();
    }
  }
}
