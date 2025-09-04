int posX = 0;
int tam = 50;
int dir = 1;
int vel = 5;
void setup(){
    size(400, 400);
}

void draw(){
  background(200);
  ellipse(posX, 200, tam, tam);
  posX = posX + dir * vel;
  
  if(posX + tam/2 > width){
    dir = -1;
  }
  if(posX - tam/2 < 0){
    dir = 1;
  }
}

void mouseClicked(){
  dir = 0;
}

void keyPressed(){
  dir = 1;
}
