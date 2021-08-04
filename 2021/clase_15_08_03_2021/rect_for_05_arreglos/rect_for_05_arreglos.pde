int cantidad = 10;
int [] posXs = new int [cantidad];
int [] dirs = new int [cantidad];
int tam = 50;

void setup(){
  size(400, 400);
  textSize(20);
  for(int i=0; i < cantidad; i++){
    dirs[i] = 1;
    posXs[i] = round(random(0,width-tam));
  }
  tam = height/cantidad;
}

void draw(){
  background(200);
  for(int i=0; i < cantidad; i++){
    text(i + ":" + posXs[i] + ":" + dirs[i], width/2, i * tam + tam/2);
    
    rect(posXs[i], i * tam, tam, tam);
    
    if(posXs[i] > width-tam || posXs[i] < 0){
      dirs[i] = dirs[i] * -1;
    }
    
    posXs[i] += dirs[i];
  }
}
