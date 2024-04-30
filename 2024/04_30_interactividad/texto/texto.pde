void setup() {
  size(400, 400);
  //frameRate(1);
  fill(0);
}

void draw() {
  background(200);
  textSize(40);
  text("Hola!!", 100, 100);
  text("(" + mouseX + "," + mouseY + ")", mouseX, mouseY);
}

void mouseClicked() {
  rect(0, 0, 100, 100);
}

void keyPressed() {
  fill(#00FF00);
}

void mouseWheel() {
  fill(#000000);
}

void mouseDragged() {
  fill(#FFFFFF);
}
