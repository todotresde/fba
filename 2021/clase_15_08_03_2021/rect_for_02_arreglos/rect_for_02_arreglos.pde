int cantidad = 1;
int [] posXs = new int [cantidad];
int dir = 1;
int tam = 50;

void setup(){
  size(400, 400);
}

void draw(){
  background(200);
  for(int i=0; i < cantidad; i++){
    rect(posXs[i], i * tam, tam, tam);
    
    if(posXs[i] > width-tam || posXs[i] < 0){
      dir = dir * -1;
    }
    
    posXs[i] += dir;
    
    
  }
}
