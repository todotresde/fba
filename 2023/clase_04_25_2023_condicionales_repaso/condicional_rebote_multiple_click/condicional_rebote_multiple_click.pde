int tam = 50;
int dirX = 1;
int dirY = 1;
int vel = 2;
int posX;
int posY;
boolean reboteX;
String texto = "";

void setup() {
  size(400, 400);
  posX = 100;
  posY = width/2;
  reboteX = true;
  textSize(20);
}

void draw() {
  background(200);
  fill(255);
  ellipse(posX, posY, tam, tam);

  if (posX+tam/2 > width || posX-tam/2 < 0) {
    dirX = (dirX * -1);
  }

  posX = posX + (dirX * vel);

  if (posY+tam/2 > height || posY-tam/2 < 0) {
    dirY = (dirY * -1);
  }
  posY = posY + (dirY * vel);
  
  fill(0);
  text(texto, 50, 100);
}


void mouseMoved() {
  if (dist(posX, posY, mouseX, mouseY) < tam/2) {
    
    texto = "Random: " + random(10);
    
    if (random(10)>5) {
      dirX = dirX * -1;
    } else {
      dirY = dirY * -1;
    }
  }
}
