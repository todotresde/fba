void setup() {
  size(400, 400);
}
void draw() {
  background(200);
  //line(width/2, 0, width/2, height);
  if ((mouseX - 50) > width/2) {
    fill(255);
    ellipse(mouseX, mouseY, 100, 100);
  } else {
    fill(255, 0, 0);
    ellipse(mouseX, mouseY, 100, 100);
  }
}
