int tam;
int cant = 5;

void setup(){
  size(400, 400);
  rectMode(CENTER);
}

void draw(){
  background(200);
  for(int j=0; j<4; j++){
    tam = width/2;
    for(int i=0; i<cant; i++){
      if(j == 0){
        stroke(255,0,0);
        rect(width/4, height/4, tam, tam);
      }else if(j == 1){
        stroke(255,0,255);
        rect(width/4 + width/2, height/4, tam, tam);
      }else if(j == 2){
        stroke(255,255,0);
        rect(width/4, height/4 + height/2, tam, tam);
      }else{
        stroke(0);
        rect(width/4 + width/2, height/4 + height/2, tam, tam);
      }
      tam = tam - 50;
    }
  }
}
