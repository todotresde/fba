int tam = 50;
int dirX = 1;
int dirY = 1;
int vel = 2;
int posX;
int posY;
boolean reboteX;

void setup() {
  size(400, 400);
  posX = height/2;
  posY = width/2;
  reboteX = true;
}

void draw() {
  background(200);
  ellipse(posX, posY, tam, tam);
  if (reboteX) {
    if (posX+tam/2 > width || posX-tam/2 < 0) {
      dirX = (dirX * -1);
    }
    posX = posX + (dirX * vel);
  } else {
    if (posY+tam/2 > height || posY-tam/2 < 0) {
      dirY = (dirY * -1);
    }
    posY = posY + (dirY * vel);
  }
}

void mouseClicked() {
  if (dist(posX, posY, mouseX, mouseY) < tam/2) {
    if (reboteX) {
      dirX = dirX * -1;
    } else {
      dirY = dirY * -1;
    }
  }
}

void keyPressed(){
  reboteX = !reboteX;
}
