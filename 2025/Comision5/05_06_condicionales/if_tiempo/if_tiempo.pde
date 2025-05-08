int tiempoHolaMundo = 600; //10 seg aprox
int dir = 1;

void setup() {
  size(400, 400);
  textSize(30);
}

void draw() {
  background(200);
  fill(0);
  if(tiempoHolaMundo>0){
    tiempoHolaMundo--;
    text("Hola Mundo!!!!", 100, 200);
  }
}

void mouseClicked() {
}

void keyPressed() {
}
