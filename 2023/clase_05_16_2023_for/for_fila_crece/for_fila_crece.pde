int cant = 1;
int tam = 40;
int posX = 0;

void setup(){
  size(400,400);
}

void draw(){
  background(200);
  for(int i=0; i<cant;i++){
    rect(posX, ((height - tam) - (tam * i)) , tam, tam);
  }
}

void keyPressed(){
  if(keyCode == LEFT){
    posX = posX - tam;
  }else if(keyCode == RIGHT){
    posX = posX + tam;
  }else if(keyCode == UP){
    cant++;
  }else if(keyCode == DOWN){
    cant--;
  }
}
