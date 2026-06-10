int grados = 0;

void setup(){
  size(400,400);
}

void draw(){
  background(200);
  rotate(radians(grados));
  rect(0,0,50,50);
  rect(50,0,50,50);
  rect(100,0,50,50);
  grados++;
}
