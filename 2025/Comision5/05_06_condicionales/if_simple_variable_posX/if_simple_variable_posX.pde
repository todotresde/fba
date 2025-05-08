int tam = 0;
int incTam = 1;
int incPosX = 1;
int posX = 200;

void setup(){
    size(400, 400);
}

void draw(){
  ellipse(posX,200,tam,tam);
  tam = tam + incTam;
  posX = posX + incPosX;
  
  if(tam > 100){
    incTam = 0;
  }else{
    incTam = 1;
  }
  
  if(posX > 400){
    incPosX = 0;
  }else{
    incPosX = 1;
  }
}

void mouseClicked(){
}

void keyPressed(){

}
