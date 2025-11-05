class Mazo {
  constructor(){
    this.cartas = [];
    for(let i = 0; i < 12; i++){
      this.cartas.push(new Carta("ORO", i+1));
    }
    for(let i = 0; i < 12; i++){
      this.cartas.push(new Carta("ESPADA", i+1));
    }
    for(let i = 0; i < 12; i++){
      this.cartas.push(new Carta("COPA", i+1));
    }
    for(let i = 0; i < 12; i++){
      this.cartas.push(new Carta("BASTO", i+1));
    }
  }
}
