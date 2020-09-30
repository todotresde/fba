Celda celdaActiva, celda1, celda2, celda3;

void setup(){
  size(400,400);
  celda1 = new Celda(50, 50, 50, 50);
  celda2 = new Celda(50, 200, 25, 25);
  celda3 = new Celda(300, 300, 10, 10);
}

void draw(){
  background(200);
  celda1.dibujar();
  celda2.dibujar();
  celda3.dibujar();
}

void keyPressed(){
  if(keyCode == RIGHT){
    celda1.moverDerecha();
  }else if(keyCode == LEFT){
    celda1.moverIzquierda();
  }
}
