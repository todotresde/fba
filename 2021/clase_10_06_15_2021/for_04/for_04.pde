int cantFor;
int ancho, alto;

void setup() {
  size(600, 600);

}

void draw() {
  background(200);
  cantFor = round(map(mouseX, 0, width, 1, 30));
  ancho = width/cantFor;
  alto = height/cantFor;
  
  for (int i=0; i<cantFor; i++) {
    fill(random(255),random(255),random(255));
    rect(i * ancho, height/2, ancho, alto);
  }
}
