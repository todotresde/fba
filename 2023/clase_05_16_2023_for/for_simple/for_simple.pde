void setup(){
  size(400,400);
}

void draw(){
  //i=0 => posX = 0
  //i=1 => posX = 40
  //i=2 => posX = 80
  //i=3 => posX = 120
  for(int i=0; i<10; i++){
    rect(i*40,0,40,40);
  }
}
