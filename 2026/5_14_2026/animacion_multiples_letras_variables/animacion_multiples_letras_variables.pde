int tam = 50;
int animacionActual = 1;

void setup() {
  size(400, 400);
  inicializarVariablesC();
}

void draw() {
  if(animacionActual == 1){
    dibujarLetraC();
  }else if(animacionActual == 2){
    dibujarLetraO();
  }
  controlDeAnimacion();
}
