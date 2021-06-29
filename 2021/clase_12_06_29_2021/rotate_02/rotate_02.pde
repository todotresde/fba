int grados = 0;

void setup(){
  size(400,400);
  textSize(20);
}

void draw(){
  background(200);
  rotate(radians(grados));
  rect(0,0,50,50);
  rect(200,0,50,50);
  rect(300,0,50,50);
  rect(300,300,50,50);
  grados += 1;
}

void mouseClicked(){
  
}
