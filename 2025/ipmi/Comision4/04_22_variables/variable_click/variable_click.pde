int posX = 0;

void setup() {
  size(400, 400);
}

void draw() {
  background(200);
  noFill();
  ellipse(posX,200,100,100);
  
  textSize(20);
  fill(0);
  text("PosX: " + posX, 300, 100);
}

void mouseClicked(){
  posX = posX + 1;
}
