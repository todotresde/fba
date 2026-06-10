int grados = 0;

void setup(){
  size(400,400);
}

void draw(){
  background(200);
  
  pushMatrix();
  translate(0,0);
  rotate(radians(grados));
  rect(0,0,50,50);
  popMatrix();
  
  pushMatrix();
  translate(50,0);
  rotate(radians(grados));
  rect(0,0,50,50);
  popMatrix();
  
  pushMatrix();
  translate(200,200);
  rotate(radians(grados));
  rect(0,0,50,50);
  popMatrix();
  
  grados++;
}
