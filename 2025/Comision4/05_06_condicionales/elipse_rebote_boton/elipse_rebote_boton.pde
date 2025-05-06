int posX = 0;
int tam = 50;
int dir = 1;
int vel = 3;
void setup(){
    size(400, 400);
}

void draw(){
  background(200);
  
  if(dist(mouseX, mouseY, posX, 200) < tam/2 ){
    fill(255,0,0);
  }else{
    fill(255);
  }
  
  ellipse(posX, 200, tam, tam);
  posX = posX + dir * vel;
  
  if(posX + tam/2 > width){
    dir = -1;
  }
  if(posX - tam/2 < 0){
    dir = 1;
  }
  line(mouseX, mouseY, posX, 200);
}

void mouseClicked(){
  if(dist(mouseX, mouseY, posX, 200) < tam/2 ){
    dir = 0;
  }
}

void keyPressed(){
  dir = 1;
}
