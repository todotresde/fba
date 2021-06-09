int radio = 50;
float posX = -100;

void setup(){
  size(400,400);
}

void draw(){
  background(200);
  
  ellipse(posX, 300, 100, 100);
  
  
  if(mouseX > width/2){
    ellipse(mouseX, mouseY, radio * 2, radio * 2);
  }else{
    rect(mouseX, mouseY, radio * 2, radio * 2);
  }
  
  
  
}
