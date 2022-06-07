int angulo = 0;

void setup(){
  size(400, 400);
  textSize(40);
}

void draw(){
  background(200);
  text("Ang: " + angulo, 100, 100);
  rotate(radians(angulo));
  text("Ang: " + angulo, 100, 100);
  dibujarMiraEn(0,0);
  dibujarRectEn(width/2, height/2);
  dibujarRectContornoPantalla();
}

void dibujarMiraEn(int posX, int posY){
  fill(255,0,0);
  ellipse(posX, posY, 10, 10);
  line(posX-10, posY, posX+10, posY);
  line(posX, posY-10, posX, posY+10);
}

void dibujarRectEn(int posX, int posY){
  fill(255,0,0);
  rectMode(CENTER);
  rect(posX, posY, 50, 50);
  line(0, 0, posX, posY);
}

void dibujarRectContornoPantalla(){
  noFill();
  rectMode(CORNER);
  rect(0,0,width,height);
}

void mouseClicked(){
  if(mouseButton == RIGHT)
    angulo++;
  else
    angulo--;
}
