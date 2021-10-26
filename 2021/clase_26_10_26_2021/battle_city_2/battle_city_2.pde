Juego juego;

void setup(){
  size(500,500);
  juego = new Juego();
}

void draw(){
  juego.dibujar();
}

void keyPressed(){
  juego.teclaPresionada();
}
