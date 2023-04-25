int tam = 50;
int dir = 1;
int vel = 5;
int posY;

void setup(){
  size(400,400);
  posY = width/2;
}

void draw(){
  background(200);
  ellipse(width/2, posY, tam, tam);
  if(posY+tam/2 > height || posY-tam/2 < 0){
    dir = (dir * -1);
  }
  posY = posY + (dir * vel);
}
