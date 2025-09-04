void setup() {
  size(400, 400);
  textSize(40);
}

void draw() {
  background(200);
  fill(0,255,0,map(mouseX, 0, width, 0, 200));
  text("hola!!!", 200, 200);
}

void mouseClicked(){

}
