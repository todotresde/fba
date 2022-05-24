int cant = 10;

void setup(){
  size(400,400);
  rectMode(CENTER);
}

void draw(){
  background(200);
  for(int i=0; i<cant;i++){
    int tam = width - (i * 40);
    if(i%2 == 0){
      fill(0);
    }else{
      fill(255);
    }
    rect(width/2, height/2, tam, tam);
  }
}
