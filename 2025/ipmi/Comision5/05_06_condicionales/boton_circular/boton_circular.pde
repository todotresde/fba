void setup() {
  size(400, 400);
  textSize(30);
}

void draw() {
  background(200);
  if(dist(mouseX, mouseY, 200, 200) < 50/2){
    fill(100);
  }else{
    fill(255);
  }
  
  ellipse(200,200,50,50);
  //line(mouseX, mouseY, 200, 200);
  
  
}

void mouseClicked() {
}

void keyPressed() {
}
