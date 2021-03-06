int cantFor = 10;
int ancho, alto;

void setup() {
  size(600, 600);
  ancho = width/cantFor;
  alto = height/cantFor;
}

void draw() {
  background(200);
  
  for (int j=0; j<cantFor; j++) {
    for (int i=0; i<cantFor; i++) {
      int colorDelRect = round(map(dist(mouseX, mouseY, i * ancho, j * alto), 0, width, 0, 255));
      fill(colorDelRect, 0, 0);
      rect(i * ancho, j * alto, ancho, alto);
    }
  }
}
