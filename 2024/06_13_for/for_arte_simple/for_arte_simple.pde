int cant = 10;

void setup(){
  size(400,400);
  rectMode(CENTER);
}

void draw(){
  background(200);
  for(int i=0; i<cant;i++){
    //i=0 => tam = 400 - 0*40 = 400
    //i=1 => tam = 400 - 1*40 = 360
    //i=2 => tam = 400 - 2*40 = 320
    //i=3 => tam = 400 - 3*40 = 280
    //...
    //i=9 => tam = 400 - 9*40 = 40
    int tam = width - (i * 40);
    if(i%2 == 0){
      fill(0);
    }else{
      fill(255);
    }
    rect(width/2, height/2, tam, tam);
  }
}
