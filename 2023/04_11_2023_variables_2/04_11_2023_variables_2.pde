float posX = 100;
float posY = 100;

void setup(){
  size(400,400);
}

void draw(){
  //background(200);
  ellipse(posX,posY,200,200);
  posX = posX + 1;
  posY = posY + 1;
}

void mouseClicked(){
  posX = 100;
  posY = 100;
}
