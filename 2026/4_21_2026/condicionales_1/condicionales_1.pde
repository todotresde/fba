int posX = 1;

void setup(){
  size(400,400);
}

void draw(){
  background(200);
  ellipse(posX, 200, 50, 50);
  
  if(posX < width){//posX = 1..2..3..4..400 < width = 400 ???
    posX = posX+1;
  }
}
