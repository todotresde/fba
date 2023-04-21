void setup() {
  size(400, 400);
}
void draw() {
  //background(200);
  
  if(mouseX < 100 || mouseX > 300){
    stroke(0);
    line(pmouseX, pmouseY, mouseX, mouseY);
  }
  
}
