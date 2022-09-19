ProgramaPrincipal programaPrincipal;

void setup(){
  size(400, 400);
  programaPrincipal = new ProgramaPrincipal();
}
  
void draw(){
  background(200);
  programaPrincipal.dibujar();
}

void mousePressed(){
  programaPrincipal.mousePresionado();
}
