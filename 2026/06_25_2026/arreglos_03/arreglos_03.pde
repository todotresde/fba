String [] posY = new String[5];

void setup() {
  size(400, 400);
  posY[0] = "Hola";
  posY[1] = "Como";
  posY[2] = "Uds";
  posY[3] = "?";
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
     posY[0] += "!";
  }
  
}
