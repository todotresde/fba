int tam;
int cant = 10;
int angulo = 0;
int angulo2 = 0;

void setup() {
  size(400, 400);
  rectMode(CENTER);
  tam = width/cant;
}

void draw() {
  background(200);
  for(int j=0; j<cant;j++){
    for(int i=0; i<cant;i++){
      pushMatrix();
      translate(i*tam + tam/2, j*tam + tam/2);
      rotate(radians(angulo));
      rect(0, 0, tam, tam);
      popMatrix();
    }
  }
  angulo++;
}
