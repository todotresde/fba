int cant = 10;
int diferencia;
int tam;

void setup(){
  size(400,400);
  diferencia = width/cant;
  rectMode(CENTER);
}

void draw(){
  background(200);
  tam = width;
  dibujarRectangulos();
}
