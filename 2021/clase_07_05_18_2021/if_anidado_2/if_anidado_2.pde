int contador;

void setup() {
  size(400, 400);
  textSize(40);
}

void draw() {
  background(200);

  //line(width/3,0,width/3,height);
  //line((width/3) * 2,0,(width/3) * 2,height);

  rect(0, 100, 50, 100);

  text("Contador: " + contador, 100, 200);
}

void mouseClicked() {
  if (mouseX < 50) {
    if (mouseY > 100) {
      if (mouseY < 200) {
        contador++;
      }
    }
  }
}
