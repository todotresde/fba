int cant = 10;
int tam;
int angulo;

void setup(){
  size(800,400);
  tam = width / cant;
}

void draw(){
  background(200);
  rotate(radians(angulo));
  rect(300,200,100,100);
  /*
  for(int i = 0; i<cant; i++){
    line(i*tam, 0, i*tam, width);
  }
  */
  angulo++;
}
