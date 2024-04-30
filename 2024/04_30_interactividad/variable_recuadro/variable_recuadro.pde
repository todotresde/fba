int incrementadorCrucial = 0;

void setup() {
  size(1200, 400);
  fill(0);
}

void draw() {
  background(200);
  textSize(40);
  rect(incrementadorCrucial,100, 50, 50);
  incrementadorCrucial = incrementadorCrucial + 60;
}

void mouseClicked(){
  incrementadorCrucial = 0;
}

void keyPressed(){
  incrementadorCrucial = incrementadorCrucial - 1;
}
