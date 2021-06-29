int grados = 0;

void setup(){
  size(400,400);
  textSize(20);
}

void draw(){
  background(200);
  translate(100,100);
  rotate(radians(grados));
  rect(0,0,50,50);
  rect(200,0,50,50);
  rect(300,0,50,50);
  rect(300,300,50,50);
  grados += 5;
}

void mouseClicked(){
  
}
