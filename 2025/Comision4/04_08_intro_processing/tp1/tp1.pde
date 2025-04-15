PImage miImagen;

void setup(){
  size(400,400);
  miImagen = loadImage("tp1.jpg");
}

void draw(){
  background(#E6EA21);
  image(miImagen, 0, 0, 200, 400);
  fill(0);
  textSize(40);
  text(mouseX + " - " + mouseY, mouseX, mouseY);
  println(mouseX + " - " + mouseY);
}
