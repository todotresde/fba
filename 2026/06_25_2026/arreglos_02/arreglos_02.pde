int [] posY = new int[5];

void setup() {
  size(400, 400);
  posY[0] = 134;
  posY[1] = 765;
  posY[2] = 10000;
  posY[3] = -1223;
}

void draw() {
  background(200);
  textSize(40);
  fill(0);
  text("Valor: "  + posY[0], 100, 50);
  text("Valor: "  + posY[1], 100, 100);
  text("Valor: "  + posY[2], 100, 150);
  text("Valor: "  + posY[3], 100, 200);
}

void keyPressed(){
  if(key == 'w'){
     posY[0]++;
  }
  if(key == 's'){
     posY[1]++;
  }
  if(key == 'a'){
     posY[2]++;
  }
  if(key == 'd'){
     posY[3]++;
  }
}
