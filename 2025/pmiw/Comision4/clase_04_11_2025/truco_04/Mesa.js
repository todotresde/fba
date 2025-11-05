class Mesa {
  constructor(){
    this.cartasJugador1 = [];
    this.cartasJugador2 = [];
  }
  
  dibujar(){
    for(let i = 0; i < this.cartasJugador1.length; i++){
      this.cartasJugador1[i].dibujar(100 + (i*80), 100);
    }
    
    for(let i = 0; i < this.cartasJugador2.length; i++){
      this.cartasJugador2[i].dibujar(100 + (i*80), 200);
    }
  }
  
  agregarCarta(carta, numeroDeJugador){
     if(numeroDeJugador === 1){
       this.cartasJugador1.push(carta);
     }else{
       this.cartasJugador2.push(carta);
     }
  }
}
