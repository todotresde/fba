int posX = 0;
float tam = 0;

void setup(){
  size(400, 400);
}

void draw(){
  background(200);
  ellipse(posX,200,tam,tam);
  
  posX = posX + 1;
  tam = tam + 0.1;
}
