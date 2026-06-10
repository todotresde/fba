

void setup() {
  size(500, 500);
}

void draw() {
  background(200);
  float dist = dist(mouseX, mouseY, 200,200);
  float ancho = map(dist, 0, 300, 1, 5);
  strokeWeight(ancho);
  
  ellipse(200,200,50,50);
  
}
