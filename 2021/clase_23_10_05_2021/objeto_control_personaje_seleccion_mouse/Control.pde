class Control{
  //Personaje es una clase
  //personaje1 es una variable del tipo Personaje
  Personaje personaje1, personaje2;
  
  Control(){
    //personaje1 es una instancia u objeto de la clase Personaje
    this.personaje1 = new Personaje();
    this.personaje2 = new Personaje();
  }
  
  void dibujar(){
    this.personaje1.dibujar();
    this.personaje2.dibujar();
  }
  
  void teclaPresionada(){
    if(this.personaje1.estaSeleccionado()){
      this.personaje1.teclaPresionada();
    }
    
    if(this.personaje2.estaSeleccionado()){
      this.personaje2.teclaPresionada();
    }
  }
  
  void mousePresionado(){
    if(this.personaje1.mousePresionado()){
      this.personaje1.seleccionarPersonaje();
      this.personaje2.deseleccionarPersonaje();
    }
    
    if(this.personaje2.mousePresionado()){
      this.personaje1.deseleccionarPersonaje();
      this.personaje2.seleccionarPersonaje();
    }
  }
}
