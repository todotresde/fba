color miColor0 = color(255, 0, 0);
color miColor1 = color(255, 0, 0);
color miColor2 = color(255, 0, 0);
color miColor3 = color(255, 0, 0);

void setup() {
  size(500, 500);
}

void draw() {
  for (int i=0; i<4; i++) {
    if (i==0) {
      fill(miColor0);
    } else if (i==1) {
      fill(miColor1);
    } else if (i==2) {
      fill(miColor2);
    } else if (i==3) {
      fill(miColor3);
    }

    ellipse(50 + (i*100), 100, 50, 50);
  }
}

void mouseClicked() {
  for (int i=0; i<4; i++) {
    if (dist(mouseX, mouseY, 50 + (i*100), 100) < 25) {
      
      if (i==0) {
        miColor0 = color(0, 255, 0);
      } else if (i==1) {
        miColor1 = color(255, 255, 0);
      } else if (i==2) {
        miColor2 = color(255, 0, 255);
      } else if (i==3) {
        miColor3 = color(0, 255, 255);
      }
    }
  }
}
