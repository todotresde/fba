int tamFont = 0;
int posX;
int posY;

void setup(){
  size(400,400);
  posX = -width/2;
  posX = -height/2;
}

void draw(){
  background(200);
  textSize(40);
  text("Hola Processing!", posX, posY);
  posX++;
  posY++;
}
