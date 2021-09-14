void setup(){
  size(400,400);
}

void draw(){
  dibujarCuadrado(mouseX,mouseY,100,100);
}

void dibujarCuadrado(int posX, int posY, int ancho, int alto){
  rect(posX, posY, ancho, alto);
}
