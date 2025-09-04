color miColor = color(200);

void setup() {
  size(400, 400);
  textSize(30);
}

void draw() {
  background(miColor);
  if(mouseX > 200 && mouseX < 300 && mouseY > 200 && mouseY < 250){
    fill(100);
  }else{
    fill(255);
  }
  
  rect(200,200,100,50);
  line(mouseX, mouseY, 250,225);
  
}

void mouseClicked() {
  if(mouseX > 200 && mouseX < 300 && mouseY > 200 && mouseY < 250){
    miColor = color(255, 0, 0);
  }
}

void keyPressed() {
}
