int tam = 50;

void setup(){
  size(400,400);
}

void draw(){
  background(200);
  tam = dibujarCuadradoYRetornarTam(mouseX,mouseY,tam);
}
