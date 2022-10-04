Tanque tanque;
TanqueEnemigo tanqueEnemigo;

void setup(){
  size(400,400);
  tanque = new Tanque(100);
  tanqueEnemigo = new TanqueEnemigo(300);
}

void draw(){
  tanque.dibujar();
  tanqueEnemigo.dibujar();
}
