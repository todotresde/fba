float miMap;

void setup(){
  size(400,400);
  textSize(30);
}

void draw(){
  background(200);
  
  miMap = map(mouseX, 0, width, 0, 255);
  
  fill(mouseX,0,0);
  ellipse(width/2, 100, 200, 200);
  
  text("mouseX: " + mouseX, 40, 300);
  text("map: " + miMap, 40, 350);
}
