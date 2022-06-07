int centroX = 0;
int centroY = 0;
int angulo1 = 0;
int angulo2 = 0;

void setup(){
  size(400, 400);
}

void draw(){
  background(200);
  
  pushMatrix();
  translate(100, 100);
  rotate(radians(angulo1));
  dibujarMiraEn(0,0);
  dibujarRectEn(0,0);
  popMatrix();
  
  pushMatrix();
  translate(200, 200);
  rotate(radians(angulo2));
  dibujarMiraEn(0,0);
  dibujarRectEn(0,0);
  popMatrix();
  
  angulo1++;
  angulo2--;
}

void dibujarMiraEn(int posX, int posY){
  fill(255,0,0);
  ellipse(posX, posY, 10, 10);
  line(posX-10, posY, posX+10, posY);
  line(posX, posY-10, posX, posY+10);
}

void dibujarRectEn(int posX, int posY){
  fill(255,0,0,100);
  rectMode(CENTER);
  rect(posX, posY, 50, 50);
  line(0, 0, posX, posY);
}
