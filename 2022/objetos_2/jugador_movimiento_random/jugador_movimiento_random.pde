Jugador jugador;

void setup(){
  size(400, 400);
  jugador = new Jugador();
}

void draw(){
  background(200);
  jugador.dibujar();
}
