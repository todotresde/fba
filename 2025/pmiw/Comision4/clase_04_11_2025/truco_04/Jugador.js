class Jugador {
  constructor(){
    this.posY;
    this.cartas = [];
  }
  
  darCarta(carta){
    this.cartas.push(carta);
  }
  
  dibujar(posY){
    this.posY = posY;
    for(let i=0; i<this.cartas.length;i++){
      this.cartas[i].dibujar(100 + (i*80), posY);
    }
  }
  
  obtenerCartaAlHacerClick(){
    for(let i=0; i<this.cartas.length;i++){
      if(mouseX > 100 + (i*80) && mouseX < 100 + (i*80) + 50 && 
        mouseY > this.posY && mouseY < this.posY + 100){
        return this.cartas[i];
        }
    }
    return null;
  }
}
