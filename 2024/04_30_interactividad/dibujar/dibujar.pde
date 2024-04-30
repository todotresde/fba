void setup() {
  size(400, 400);
  //frameRate(1);
  fill(0);
}

void draw() {
  textSize(40);
  //Poco práctico
  //ellipse(mouseX, mouseY, 10, 10);
  line(pmouseX, pmouseY,mouseX, mouseY);
}

void mouseClicked() {
  rect(0, 0, 100, 100);
}

void keyPressed() {
  background(200);
  fill(#00FF00);
}

void mouseWheel() {
  fill(#000000);
}

void mouseDragged() {
  fill(#FFFFFF);
}
