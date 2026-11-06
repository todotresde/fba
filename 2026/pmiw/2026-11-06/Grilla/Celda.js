class Celda {
  constructor(fila, columna) {
    this.personaje = null;
    this.pared = false;
    this.puerta = null;
    this.tamanoCelda = 20;
    this.fila = fila;
    this.columna = columna;
    
  }
  
  dibujar(){
    if(this.esTipoPared()){
      fill(0);
    }else if(this.esTipoPersonaje()){
      this.personaje.dibujar();
    }else{
      fill(200);
    }
    
    rect(
      this.fila * this.tamanoCelda, 
      this.columna * this.tamanoCelda, 
      this.tamanoCelda,
      this.tamanoCelda
    );
  }
  
  esTipoPared(){
    return this.pared == true;
  }
  
  esTipoPersonaje(){
    return this.personaje !== null;
  }
  
  convertirAPared(){
    this.pared = true;
  }
  
  agregarPersonaje(personaje){
    this.personaje = personaje;
  }
}
