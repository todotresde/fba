//Personaje es una clase
//personaje1 es una variable del tipo Personaje
Personaje personaje1, personaje2;

void setup(){
  size(400,400);
  //personaje1 es una instancia u objeto de la clase Personaje
  personaje1 = new Personaje();
  personaje2 = new Personaje();
}

void draw(){
  background(255);
  personaje1.dibujar();
  personaje2.dibujar();
}

void keyPressed(){
  if(personaje1.estaSeleccionado()){
    personaje1.teclaPresionada();
  }
  
  if(personaje2.estaSeleccionado()){
    personaje2.teclaPresionada();
  }
  
  if(key == '1'){
    personaje1.seleccionarPersonaje();
    personaje2.deseleccionarPersonaje();
  }else if(key == '2'){
    personaje1.deseleccionarPersonaje();
    personaje2.seleccionarPersonaje();
  }
}
