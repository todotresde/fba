int rotacion = 0;

void setup(){
  size(400, 400);
}

void draw(){
  background(200);
  translate(mouseX, mouseY);
  rotate(radians(rotacion));
  fill(255);
  rect(0,0,50,50);
  fill(255,0,0);
  rect(100,0,50,50);
  fill(0,0,255);
  rect(0,100,50,50);
  rotacion+=5;
}

void mouseMoved(){

}
