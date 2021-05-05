int radio = 50;
float posX = -100;

void setup(){
  size(400,400);
  textSize(20);
}

void draw(){
  background(200);
  
  ellipse(posX, 300, 100, 100);
  
  
  if(mouseX > width/2){
    ellipse(mouseX, mouseY, radio * 2, radio * 2);
  }else{
    rect(mouseX, mouseY, radio * 2, radio * 2);
  }
  
  text("MouseX: " + mouseX, 100, 100);
  text("width/2: " + width/2, 100, 150);
  text("mouseX > width/2: " + (mouseX > width/2), 100, 200);
  
  
}
