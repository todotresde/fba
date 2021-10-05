Control control;

void setup(){
  size(400,400);
  control = new Control();
}

void draw(){
  background(255);
  control.dibujar();
}

void mousePressed(){
  control.mousePresionado();
}

void keyPressed(){
   control.teclaPresionada();
}
