int cant = 20;
Jugador [] jugadores = new Jugador [cant];

void setup(){
  size(400, 400);
  for(int i = 0; i < cant; i++){
    jugadores[i] = new Jugador();
  }
}

void draw(){
  background(200);
  for(int i = 0; i < cant; i++){
    jugadores[i].dibujar();
  }
}

void mouseClicked(){
  for(int i = 0; i < cant; i++){
    jugadores[i].click();
  }
}
