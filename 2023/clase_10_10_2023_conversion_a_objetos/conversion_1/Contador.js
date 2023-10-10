class Contador{
  constructor(){
    this.cantidad = 0;
  }
  
  dibujar(){
    fill(255);
    textSize(30);
    text( "MEDUSAS: "+ this.cantidad, 20, 30 );
  }
}
