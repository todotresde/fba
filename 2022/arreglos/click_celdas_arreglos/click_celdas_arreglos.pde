int cant = 10;
int tam;
boolean [] celdas;

void setup(){
  size(400, 400);
  tam = width/cant;
  celdas = new boolean [cant];
}

void draw(){
  background(200);
  dibujarCeldas(200);
}
