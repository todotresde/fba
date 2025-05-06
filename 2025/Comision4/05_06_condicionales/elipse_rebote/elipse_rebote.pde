int posX = 0;
int tam = 50;
void setup(){
    size(400, 400);
}

void draw(){
  background(200);
  ellipse(posX, 200, tam, tam);
  posX++; //posX = posX + 1;
  
  if(posX + tam/2 > width){
    posX--;
  }
}

//posX = 399
//posX = 400
//posX = 401
//posX = 400
//posX = 401
//posX = 400
//posX = 401
//posX = 400
