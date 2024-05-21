int tamFont = 0;
int posX;
int posY;
int alpha = 0;

void setup(){
  size(400,400);
  posX = -width/2;
  posX = -height/2;
}

void draw(){
  background(200);
  textSize(50);
  fill(255, 0 ,0);
  text("El día de hoy voy \n a dar una clase \n para la comisión \n 4 y la comisón 5", posX, 100);
}
