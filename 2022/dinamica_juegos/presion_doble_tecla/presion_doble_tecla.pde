boolean[] teclas = new boolean[526];
boolean mover;
int posX = 100;

void setup() {
  size(400, 400);
}
void draw() {
  background(0);
  ellipse(posX, 200, 100, 100);
  if ( mover ) {
    posX++;
  }
}

boolean verificarTecla(int k) {
  if (teclas.length >= k) {
    return teclas[k];
  }
  return false;
}

void keyPressed() {
  teclas[keyCode] = true;
  if (verificarTecla(CONTROL) && verificarTecla(RIGHT)) {
    mover = true;
  }
}

void keyReleased() {
  teclas[keyCode] = false;
  mover = false;
}
