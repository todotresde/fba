int cant = 1000;
int [] letras;
int [] posicionesX;
int [] posicionesY;
float [] opacidad;

void setup(){
  size(400, 400);
  generarLetras();
  textSize(20);
}

void draw(){
  //background(0);
  dibujarLetras();
}
