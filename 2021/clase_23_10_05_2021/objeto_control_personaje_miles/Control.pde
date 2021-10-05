class Control{
  //Personaje es una clase
  //personaje1 es una variable del tipo Personaje
  Personaje [] personajes;
  int cantidad = 100;
  
  Control(){
    //personaje1 es una instancia u objeto de la clase Personaje
    this.personajes = new Personaje [this.cantidad];
    for(int i=0; i<this.cantidad; i++){
      this.personajes[i] = new Personaje();
    }
  }
  
  void dibujar(){
    for(int i=0; i<this.cantidad; i++){
      this.personajes[i].dibujar();
    }
  }
  
  void teclaPresionada(){
    for(int i=0; i<this.cantidad; i++){
      if(this.personajes[i].estaSeleccionado()){
        this.personajes[i].teclaPresionada();
      }
    }
  }
  
  void mousePresionado(){
    for(int i=0; i<this.cantidad; i++){
      if(this.personajes[i].mousePresionado()){
        this.personajes[i].seleccionarPersonaje();
      }else{
        this.personajes[i].deseleccionarPersonaje();
      }
    }

  }
}
