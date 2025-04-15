PImage miImagen;

void setup(){
  size(400,400);
}

void draw(){
  background(#E6EA21);
  rect(100,100,100,100);
}

void keyPressed(){
  fill(255,0,0);
  println("Pressed!!!!");
}

void keyReleased(){
  fill(0,255,0);
  println("Released!!!!");
}
