class Cuadrado{
  constructor() {
    this.alto = 100;
    this.ancho = 100;
    this.colorDeFondo = color(255,0,0);
  }
  
  dibujar() {
    fill(this.colorDeFondo);
    rect(100,100,this.ancho, this.alto);
  }
}
