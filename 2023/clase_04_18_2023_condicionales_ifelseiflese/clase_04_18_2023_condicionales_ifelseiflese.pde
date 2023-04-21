void setup() {
  size(400, 400);
}
void draw() {
  background(200);
  //line(width/2, 0, width/2, height);
  if (mouseX < 100) {
    fill(255);
    ellipse(mouseX, mouseY, 100, 100);
  } else if(mouseX < 200){
    fill(255, 0, 0);
    ellipse(mouseX, mouseY, 100, 100);
  } else if(mouseX < 300){
    fill(0, 255, 0);
    ellipse(mouseX, mouseY, 100, 100);
  } else {
    fill(0, 0, 255);
    ellipse(mouseX, mouseY, 100, 100);
  }
}
