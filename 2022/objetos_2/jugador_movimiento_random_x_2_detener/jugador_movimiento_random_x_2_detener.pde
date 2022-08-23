Jugador jugador1;
Jugador jugador2;

void setup(){
  size(400, 400);
  jugador1 = new Jugador();
  jugador2 = new Jugador();
}

void draw(){
  background(200);
  jugador1.dibujar();
  jugador2.dibujar();
}

void mouseClicked(){
  jugador1.click();
  jugador2.click();
}
