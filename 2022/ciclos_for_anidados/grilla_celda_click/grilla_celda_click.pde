int cant = 10;
int tamX, tamY;
int posX = 0;
int posY = 0;

void setup(){
  size(400, 400);
  tamX = width/cant;
  tamY = height/cant;
}

void draw(){
  background(200);
  for(int i=0; i<cant; i++){
    for(int j=0; j<cant; j++){
      if(posX == i && posY == j){
        fill(0);
      }else{
        fill(255);
      }
      rect(i*tamX, j*tamY, tamX, tamY);
    }
  }
}

void mouseClicked(){
  posX = floor(map(mouseX, 0, width, 0, cant));
  posY = floor(map(mouseY, 0, height, 0, cant));
}

void keyPressed(){
  if(keyCode == RIGHT){
    posX++;
  }else if(keyCode == LEFT){
    posX--;
  }else if(keyCode == UP){
    posY--;
  }else if(keyCode == DOWN){
    posY++;
  }
}
