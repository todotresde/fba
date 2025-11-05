class Carta {
  constructor(tipo, numero){
    this.tipo = tipo;
    this.numero = numero;
  }
  
  dibujar(posX, posY){
    rect(posX, posY, 50, 70);
    text(this.tipo, posX + 5, posY + 20);
    text(this.numero, posX + 5, posY + 40);
  }
}
