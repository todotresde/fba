void setup() {
  size(500, 400);
}
void draw() {
  fill(180, 180, 180);
  strokeWeight(12);
  rect(0, 0, 500, 400);
  strokeWeight(1);
}
void mouseMoved() {
  rect(200, 200, 100, 100);
}

void mouseClicked() {
  fill(0, 255, 0);
  ellipse(200, 200, 50, 50);
}
