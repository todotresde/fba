int angulo = 0;
int angulo2 = 0;

void setup() {
  size(400, 400);
  rectMode(CENTER);
}

void draw() {
  background(200);
  fill(255);
  pushMatrix();
  translate(200,200);
  rotate(radians(angulo));
  rect(0,0,200,200);
  popMatrix();
  
  pushMatrix();
  translate(200,200);
  rotate(radians(angulo2));
  rect(0,0,50,50);
  popMatrix();
  
  angulo++;
  angulo2--;
}
