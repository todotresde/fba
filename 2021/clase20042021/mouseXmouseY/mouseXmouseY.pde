void setup(){
  size(400,400);
  //frameRate(60);
}

void draw(){
  background(200);
  fill(0);
  text("(" + mouseX + "," + mouseY + ")", 100, 100);
  fill(255);
  rect(mouseX,mouseY,100,100);
}
