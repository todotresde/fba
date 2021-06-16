int cantFor = 10;
int ancho, alto;

void setup() {
  size(600, 600);
  ancho = width/cantFor;
  alto = height/cantFor;
}

void draw() {
  background(200);
  
  for (int j=0; j<2; j++) {
    for (int i=0; i<cantFor; i++) {
      rect(i * ancho, j * alto, ancho, alto);
    }
  }
}
