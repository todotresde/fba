int posX = 0;
int tam = 50;
int dir = 1;
void setup(){
    size(400, 400);
}

void draw(){
  background(200);
  ellipse(posX, 200, tam, tam);
  posX = posX + dir; // posX + (-1) => posX - 1
  
  if(posX + tam/2 > width){
    dir = -1;
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
