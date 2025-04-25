PImage miImagen;

void setup(){
  size(800,400);
  miImagen = loadImage("tp1.jpg");
}

void draw(){
  background(#E6EA21);
  image(miImagen, 0, 0, 400, 400);
  fill(0);
  textSize(40);
  text(mouseX + " - " + mouseY, mouseX, mouseY);
  println(mouseX + " - " + mouseY);
  ellipse(412,18, 100, 100);
}
