int rojo;
float map_rojo;

void setup(){
  size(400,400);
  textSize(40);
}

void draw(){
  
  background(rojo, 0, 0);
  text("Rojo: " + rojo, 100, 100);
  text("Map Rojo: " + map_rojo, 100, 200);
  
  rojo = mouseX;
  map_rojo = map(mouseX,0 , width, 0, 255);
  
  println(mouseX, mouseY);
}
