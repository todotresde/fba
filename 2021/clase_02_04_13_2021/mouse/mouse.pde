void setup() {
  size(500, 400);
  fill(0);
  textSize(30);
  
}
void draw() {
  background(200);
  fill(255,0,0);
  rect(0,0,mouseX,mouseY);
  fill(0);
  text("MouseX: " + mouseX + " y MouseY:" + mouseY, 50, 200);
  text("(" + mouseX + "," + mouseY + ")", 50, 300);
  
}

void mouseMoved() {
}

void mouseClicked() {
}

void keyPressed(){
}
