int tam = 50;
int radio = tam/2;
int dir = 1;
int vel = 2;
int posY;

void setup(){
  size(400,400);
  posY = width/2;
}

void draw(){
  background(200);
  ellipse(width/2, posY, tam, tam);
  if(posY+radio > height || posY-radio < 0){
    dir = (dir * -1);
  }
  posY = posY + (dir * vel);
  if(dist(width/2, posY, mouseX, mouseY) < radio){
    fill(0,255,0);
  }else{
    fill(0);
  }
  line(width/2, posY,mouseX,mouseY);
}

void mouseClicked(){
  if(dist(width/2, posY, mouseX, mouseY) < radio){
    dir = dir * -1;
  }
}
