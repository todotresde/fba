color miColor;

void setup() {
  size(400, 400);
  textSize(30);
}

void draw() {
  background(miColor);
  if(dist(mouseX, mouseY, 200, 200) < 50/2){
    miColor = color(random(255),random(255),random(255));
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
