int posX = 50;
int posX1 = 100;
int posX2 = 200;
int posX3 = 300;
int dir = 1;
int dir1 = 1;
int dir2 = 1;
int dir3 = 1;
int cantidad = 10;
int tam = 50;

void setup(){
  size(400, 400);
}

void draw(){
  background(200);
  // Esto es para posX
  rect(posX, 100, tam, tam);
  posX += dir; 
  if(posX >= width-tam || posX <= 0){
    dir = dir * -1;
  }
  
  // Esto es para posX1
  rect(posX1, 200, tam, tam);
  posX1 += dir1; 
  if(posX1 >= width-tam || posX1 <= 0){
    dir1 = dir1 * -1;
  }
  
  // Esto es para posX2
  rect(posX2, 300, tam, tam);
  posX2 += dir2; 
  if(posX2 >= width-tam || posX2 <= 0){
    dir2 = dir2 * -1;
  }
  
  // Esto es para posX3
  rect(posX3, 0, tam, tam);
  posX3 += dir3; 
  if(posX3 >= width-tam || posX3 <= 0){
    dir3 = dir3 * -1;
  }
}
