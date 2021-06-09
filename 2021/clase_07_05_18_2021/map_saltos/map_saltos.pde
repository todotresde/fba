int posX;
float map_posX;

void setup(){
  size(400,400);
  textSize(40);
}

void draw(){
  background(200);
  rect(posX, 200, width/10, width/10);
  
  rect(map_posX * width/10, 300, width/10, width/10);
  
  text("PosX: " + posX, 100, 100);
  text("Map PosX: " + map_posX, 100, 200);
  
  posX = mouseX;
  map_posX = round(map(mouseX,0 , width, 0, 10));
  
}
