int grados = 0;
int click = 0;
int movX = 0;

void setup(){
  size(400,400);
  textSize(20);
}

void draw(){
  background(200);
  translate(200,200);
  fill(0,255,0);
  rotate(radians(30));
  rect(0,0,50,50);
  rotate(radians(30));
  rect(0,0,50,50);
  rotate(radians(-60));
  fill(255,0,0);
  rect(0,0,50,50);
}

void mouseClicked(){
}

void keyPressed(){
  if(keyCode == RIGHT){
    movX += 50;
  }else if(keyCode == LEFT){
    movX -= 50;
  }
}
