

void setup() {
  size(500, 500);
}

void draw() {
  background(200);
  for (int i=0; i<10; i++) {
    float valor = dist(mouseX, mouseY, i*50, 0);
    float valorRojo = map(valor,0,400,0,200);
    fill(valorRojo,0,0);
    rect(i*50, 0, 50, 50);
  }
  
}
