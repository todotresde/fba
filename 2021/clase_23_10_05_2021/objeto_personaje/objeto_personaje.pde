//Personaje es una clase
//personaje1 es una variable del tipo Personaje
Personaje personaje1;

void setup(){
  size(400,400);
  //personaje1 es una instancia u objeto de la clase Personaje
  personaje1 = new Personaje();
}

void draw(){
  personaje1.dibujar();
}

void keyPressed(){
  if(keyCode == LEFT){
    personaje1.moverIzquierda();
  }else if(keyCode == RIGHT){
    personaje1.moverDerecha();
  }
}
