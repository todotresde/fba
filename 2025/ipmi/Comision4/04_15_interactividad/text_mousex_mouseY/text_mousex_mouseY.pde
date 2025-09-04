PImage miImagen;

void setup(){
  size(400,400);
}

void draw(){
  background(#E6EA21);
  textSize(30);
  fill(0);
  text(mouseX + "-" + mouseY, mouseX,mouseY);
}
