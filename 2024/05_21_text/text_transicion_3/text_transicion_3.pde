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
  textAlign(CENTER);
  fill(255, 0 ,0 , alpha);
  text("Hola Processing!", width/2, height/2);
  alpha++;
}
