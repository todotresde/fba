void setup(){
  size(400, 400);
}

void draw(){
  for(int i=0; i < 10; i++){
    for(int j=0; j < 10; j++){
      if((i+j)%2 == 0){
        noFill();
      }else{
        fill(255,0,0);
      }
      rect(i*40, j*40, 40, 40);
      fill(0);
      text(i + "," + j, i*40 + 20, j*40 + 20);
    }
  }
}
