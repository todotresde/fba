int tamaño = 0;

void setup() {
  size(400, 400);
}

void draw() {
  background(200);
  noFill();
  ellipse(200,200,tamaño,tamaño);
  
  textSize(20);
  fill(0);
  text("tamaño: " + tamaño, 300, 100);
  
  tamaño = tamaño + 1;
}

void mousePressed(){
}
