int grados = 0;

void setup(){
  size(400,400);
  textSize(20);
}

void draw(){
  background(200);
  rotate(radians(grados));
  rect(0,0,50,50);
  
}

void mouseClicked(){
  grados += 5;
}
