Control control;

void setup(){
  size(400,400);
  control = new Control();
}

void draw(){
  background(255);
  control.dibujar();
}

void keyPressed(){
   control.teclaPresionada();
}
