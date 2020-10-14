CreadorPersona creadorPersona;

void setup(){
  size(400, 400);
  
  creadorPersona = new CreadorPersona();
}
void draw(){
  background(200);
  creadorPersona.dibujar();
}

void mousePressed(){
  creadorPersona.mousePresionado();
}

void keyPressed(){
  creadorPersona.teclaPresionada();
}
