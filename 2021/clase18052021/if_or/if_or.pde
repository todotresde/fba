int contador;
boolean cond1;
boolean cond2;
boolean cond3;
  
void setup() {
  size(400, 400);
  textSize(30);
}

void draw() {
  background(200);
  
  cond1 = mouseX < 50;
  cond2 = mouseY > 100;
  cond3 = mouseY < 200;
  
  //line(width/3,0,width/3,height);
  //line((width/3) * 2,0,(width/3) * 2,height);

  rect(0, 100, 50, 100);

  text("Contador: " + contador, 100, 100);
  text("Cond1: " + cond1, 100, 200);
  text("Cond2: " + cond2, 100, 250);
  text("Cond3: " + cond3, 100, 300);
}

void mouseClicked() {
  
  
  if (cond1 || cond2 || cond3) {
    contador++;
  }

}
