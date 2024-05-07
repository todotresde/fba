void setup(){
  size(400, 400);
  textSize(40);
}

void draw(){
  background(200);
  rect((mouseX/50) * 50, (mouseY/50) * 50, 50, 50);
  //text(mouseX/50, mouseX, mouseY);
}
