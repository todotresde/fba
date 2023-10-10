class Timer{
  constructor(){
    this.tiempo = 0;
    this.tiempoLimite = 100;
  }
  
  dibujar(){
    fill(255);
    textSize(30);
    text( "Tiempo: "+ this.tiempo, 350, 30 );
    
    this.incrementarTiempo();
  }
  
  incrementarTiempo(){
    if(frameCount%60 == 0){
      this.tiempo++;
    }
  }
}
