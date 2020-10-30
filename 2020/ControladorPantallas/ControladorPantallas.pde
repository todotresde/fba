Controlador controlador;

void setup(){
  size(400,400);
  controlador = new Controlador();
}

void draw(){
  background(200);
  controlador.dibujar();
}

void mouseClicked(){
  controlador.mouseClicked();
}
