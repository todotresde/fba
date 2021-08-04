int posX = 100;
int dir = 1;
int cantidad = 10;
int tam = 50;

void setup(){
  size(400, 400);
}

void draw(){
  background(200);
  for(int i=0; i<= cantidad; i++){
    rect(posX, i * tam, tam, tam);
  }
  
  posX += dir;
    
  if(posX >= width-tam || posX <= 0){
    dir = dir * -1;
  }
}
