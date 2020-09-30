Tablero tablero1, tablero2, tablero3;

void setup(){
  size(400,400);
  tablero1 = new Tablero(10, 20, 0, 0);
  tablero2 = new Tablero(20, 5, 200, 200);
  tablero3 = new Tablero(20, 3, 300, 0);
  
  Ficha ficha = new Ficha(color(255,0,0));
  tablero1.agregarFicha(ficha, 2, 2);
  
  tablero2.agregarFicha(ficha, 10, 10);
}

void draw(){
  background(200);
  tablero1.dibujar();
  tablero2.dibujar();
  tablero3.dibujar();
}

void keyPressed(){

}
