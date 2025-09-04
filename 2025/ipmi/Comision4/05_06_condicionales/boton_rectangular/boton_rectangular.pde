int posX = 0;
int tam = 50;
int dir = 0;
int vel = 3;
void setup(){
    size(400, 400);
}

void draw(){
  background(200);
  //AND
  if(mouseX > 0 && mouseX < tam && mouseY > 200 && mouseY < 200 + tam){
    fill(255,0,0);
  }else{
    fill(255);
  }
  
  rect(posX, 200, tam, tam);
  posX = posX + dir * vel;
  
  if(posX + tam > width){
    dir = -1;
  }
  if(posX < 0){
    dir = 1;
  }
  line(mouseX, mouseY, posX, 200);
}

void mouseClicked(){
  /*
  if(???){
    dir = 0;
  }
  */
}

void keyPressed(){
  dir = 1;
}
