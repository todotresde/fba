int tiempoHolaMundo = 900; //20 seg aprox
int dir = 1;

void setup() {
  size(400, 400);
  textSize(30);
}

void draw() {
  background(200);
  fill(0);
  if (tiempoHolaMundo>(900-300)) {
    tiempoHolaMundo--;
    text("Hola Mundo!!!!", 100, 200);
  } else if(tiempoHolaMundo > 0) {
    tiempoHolaMundo--;
    text("Fin del Mundo!!!!", 100, 200);
  }
}

void mouseClicked() {
}

void keyPressed() {
}
