int posX = 200;
int direccion = 1;
int tamElipse = 50;

void setup(){
  size(400,400);
}

void draw(){
  background(200);
  ellipse(posX, 200, tamElipse, tamElipse);
  
  // Si llega al borde derecho, se mueve a la izquierda (TRUE)
  // Si llega al borde izquierdo, se mueve a la derecha
  // Siempre avanza en una dirección (TRUE)
  
  if(posX == width - tamElipse/2){
     direccion = -1;
  }
  
  if(posX == tamElipse/2){
     direccion = 1;
  }
  
  posX = posX + direccion;
}
