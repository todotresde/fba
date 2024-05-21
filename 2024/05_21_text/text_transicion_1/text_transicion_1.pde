int tamFont = 0;

void setup(){
  size(400,400);
}

void draw(){
  background(200);
  textSize(tamFont);
  textAlign(CENTER);
  text("Hola Processing!", width/2, height/2);
  tamFont++;
}
