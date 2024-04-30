int incrementadorCrucial = 0;

void setup() {
  size(400, 400);
  fill(0);
}

void draw() {
  background(200);
  textSize(40);
  text("Valor: " + incrementadorCrucial, 100, 100);
}

void mouseClicked(){
  incrementadorCrucial = incrementadorCrucial + 1;
}

void keyPressed(){
  incrementadorCrucial = incrementadorCrucial - 1;
}
