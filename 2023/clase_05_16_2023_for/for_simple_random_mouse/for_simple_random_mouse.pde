int cant = 10;
int tam;

void setup() {
  size(400, 400);
  tam = width/cant;
  rectMode(CENTER);
  //frameRate(1);
}

void draw() {
  background(200);
  for (int i=0; i<cant; i++) {
    int x = floor(random(0, width));
    int y = floor(random(0, width));
    noFill();
    ellipse(mouseX, mouseY, 200, 200);
    if (dist(mouseX, mouseY, x, y) > 120) {
      fill(255);
      rect(x, y, tam, tam);
    }
    
  }
}

void mousePressed() {
  cant++;
  tam = width/cant;
}

void keyPressed() {
  cant--;
  tam = width/cant;
}
