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
      fill(i*5, j*5, 0);
      //j=0, i=0 => 0,0,0
      //j=0, i=1 => 5,0,0
      //j=0, i=2 => 10,0,0
      //j=0, i=3 => 15,0,0
      //j=0, i=4 => 20,0,0
      //...
      //j=0, i=9 => 45,0,0
      //j=1, i=0 => 0,5,0
      //j=1, i=1 => 5,5,0
      //j=1, i=2 => 10,5,0
      //...
      //j=1, i=9 => 45,5,0
      //j=2, i=0 => 0,|0,0
      rect(i * ancho, j * alto, ancho, alto);
    }
  }
}
