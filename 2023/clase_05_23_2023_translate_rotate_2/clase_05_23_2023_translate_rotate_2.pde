int cant = 10;
int tam;
int angulo;

void setup(){
  size(800,400);
  tam = width / cant;
  rectMode(CENTER);
}

void draw(){
  background(200);
  pushMatrix();
  translate(200,200);
  rotate(radians(angulo));
  rect(0,0,100,100);
  ellipse(-50,-50,30,30);
  popMatrix();
  
  pushMatrix();
  translate(400,200);
  rotate(radians(angulo));
  rect(0,0,100,100);
  popMatrix();
  
  angulo++;
}
