void setup(){
  size(400, 400);
}

void draw(){
  for(int i=0; i < 10; i++){
    for(int j=0; j < 10; j++){
      noFill();
      rect(i*40, j*40, 40, 40);
      text(i + "," + j, i*40 + 20, j*40 + 20);
    }
  }
}
