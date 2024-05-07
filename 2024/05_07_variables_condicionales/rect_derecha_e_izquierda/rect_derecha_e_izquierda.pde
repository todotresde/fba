int posX = 200;
int direccion = 1;

void setup(){
  size(400, 400);
  textSize(20);
}

void draw(){
  background(200);
  fill(255);
  rect(posX, 200, 50, 50);
  fill(0);
  text("posX: " + posX + " + direccion: " + direccion, mouseX, mouseY);
  posX = posX + direccion;
}

void mouseClicked(){
  direccion = direccion * -1;
}
