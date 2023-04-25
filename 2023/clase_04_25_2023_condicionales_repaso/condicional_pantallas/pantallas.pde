int pantalla = 1;

void setup() {
  size(400, 400);
  textSize(30);
}

void draw() {
  background(200);
  if (pantalla == 1) {
    fill(0);
    text("Pantalla " + pantalla, 100, 200);
  } else if (pantalla == 2) {
    fill(255, 0, 0);
    text("Pantalla " + pantalla, 100, 200);
    fill(100);
    ellipse(100, 100, 50, 50);
    
    if (dist(mouseX, mouseY, 100, 100) < 25) {
      cursor(HAND);
    }else{
      cursor(ARROW);
    }
  } else if (pantalla == 3) {
    fill(0, 0, 255);
    text("Pantalla " + pantalla, 100, 200);
  }
}

void mouseClicked() {
  if (pantalla == 1) {
  } else if (pantalla == 2) {
    if (dist(mouseX, mouseY, 100, 100) < 25) {
      pantalla++;
    }
  } else if (pantalla == 3) {
  }
}

void keyPressed() {
  if (pantalla == 1) {
    pantalla++;
  } else if (pantalla == 2) {
  } else if (pantalla == 3) {
    pantalla = 1;
  }
}
