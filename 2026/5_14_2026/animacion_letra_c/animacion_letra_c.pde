int posX = 300;
int posY = 100;
int tam = 50;

void setup(){
  size(400,400);
}

void draw(){
  ellipse(posX, posY, tam, tam);
  
  if(posX > 100 && posY == 100){
    posX--;
  }else{
    if(posY < 300){
      posY++;
    }else{
      if(posX < 300){
        posX++;
      }
    }
  }
}
