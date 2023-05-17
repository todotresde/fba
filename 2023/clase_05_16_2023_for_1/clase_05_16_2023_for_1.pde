void setup() {
  size(500, 500);
}

void draw(){
  for(int i=4; i>=0; i = i + 1){
    ellipse(i*100,i*100,50,50);
  }
}
