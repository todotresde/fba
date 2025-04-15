PImage miImagen;

void setup(){
  size(400,400);
}

void draw(){
  background(#E6EA21);
  //Esto es para pintar de color azul
  //fill(0,0,255);
  rect(100,100,100,100);
}

void mouseClicked(){
  fill(255,0,0);
  println("CLICK!!!!");
}

void mousePressed(){
  fill(0,255,0);
  println("PRESSED!!!!");
}

void mouseDragged(){
  fill(0,255,255);
  println("Dragged!!!!");
}
