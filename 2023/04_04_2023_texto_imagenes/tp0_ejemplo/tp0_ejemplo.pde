PImage miImagen;

void setup() {
  size(800, 400);

  miImagen = loadImage("transbordador.jpg");
}

void draw() {
  image(miImagen, 0, 0, 400, 400);

  fill(0);
  stroke(255,0,0);
  beginShape();
  vertex(450, 300);
  vertex(600, 350);
  vertex(750, 180);
  vertex(700, 150);
  vertex(600, 250);
  endShape();
}
