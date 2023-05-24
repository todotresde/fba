int cant = 10;
int tam;
int angulo;

void setup(){
  size(800,400);
  tam = width / cant;
  rectMode(CENTER);
}

void draw(){
  background(200);
  translate(300,200);
  rotate(radians(angulo));
  rect(0,0,100,100);
  angulo++;
}
