void setup() {
  size(400, 400);
}
void draw() {
  //background(200);
  line(pmouseX, pmouseY, mouseX, mouseY);
}

void keyPressed(){
  if(key == 'v'){
    stroke(0,255,0);
  }else if(key == 'n'){
    stroke(0);
  }else if(key == 'r'){
    stroke(255,0,0);
  }else if(key == 'a'){
    stroke(0,0,255);
  }
}
