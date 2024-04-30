void setup(){
  size(400, 400);
  //frameRate(1);
}

void draw(){
  background(200);
  triangle(100,100, mouseX, mouseY, 100, 300);
  println(mouseX, mouseY);
}

void mouseClicked(){
  rect(0,0,100,100);
}

void keyPressed(){
  fill(#00FF00);
}

void mouseWheel(){
  fill(#000000);
}

void mouseDragged(){
  fill(#FFFFFF);
}
