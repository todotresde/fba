Persona persona0, persona2;

void setup(){
  size(400,400);
  persona0 = new Persona();
  persona0.cambiarColorDePelo(color(0,255,0));
  
  persona2 = new Persona();
  persona2.cambiarColorDePelo(color(0,0,255));
  
  textSize(30);
}

void draw(){
  background(200);
  fill(0);
  
  persona0.dibujar();
  persona2.dibujar();
}

void mouseClicked(){
  persona0.cambiarColorDePelo(color(random(255),random(255),random(255)));
}

void keyPressed(){
  if(keyCode == RIGHT){
    persona0.moverDerecha();
  }
  if(keyCode == LEFT){
    persona2.moverIzquierda();
  }
}
