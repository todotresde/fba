int posX = 0;

void setup(){
  size(400, 400);
  textSize(40);
}

void draw(){
  background(200);
  rect(posX, 200, 50, 50);
  posX = posX + 1;
}
