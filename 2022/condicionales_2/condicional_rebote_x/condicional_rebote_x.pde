int tam = 50;
int dir = 1;
int posX;

void setup(){
  size(400,400);
  posX = height/2;
}

void draw(){
  background(200);
  ellipse(posX, height/2, tam, tam);
  if(posX+tam/2 > width || posX-tam/2 < 0){
    dir = dir * -1;
  }
  posX = posX + dir;
}
