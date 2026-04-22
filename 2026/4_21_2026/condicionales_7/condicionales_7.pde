int posX = 200;
int tamElipse = 50;
int velocidad = 10;
int direccion = velocidad;

void setup(){
  size(400,400);
}

void draw(){
  background(200);
  ellipse(posX, 200, tamElipse, tamElipse);
  
  // Si llega al borde derecho, se mueve a la izquierda (TRUE)
  // Si llega al borde izquierdo, se mueve a la derecha
  // Siempre avanza en una dirección (TRUE)
  //360 .. 370 .. 380 ..
  if(posX > width - tamElipse/2){
     direccion = -velocidad;
  }
  
  if(posX < tamElipse/2){
     direccion = velocidad;
  }
  
  posX = posX + direccion;
}

void mouseClicked(){
  if(velocidad > 1){
    velocidad = velocidad - 1;
  }
}

void keyPressed(){
  if(velocidad < 10){
    velocidad = velocidad + 1;
  }
}
