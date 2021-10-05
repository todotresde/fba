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
  if(keyCode == LEFT){
    personaje1.moverIzquierda();
    personaje2.moverIzquierda();
  }else if(keyCode == RIGHT){
    personaje1.moverDerecha();
    personaje2.moverDerecha();
  }
}
