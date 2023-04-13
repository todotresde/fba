float posX = 100;
float posY = 100;
String punteroDelMouse;

void setup(){
  size(1000,720);
  textSize(30);
  
}

void draw(){
  background(0,200,0);
  punteroDelMouse = "PosX: " + mouseX + " PosY: " + mouseY;
  text(punteroDelMouse, width/2, height/2);
}

void mouseClicked(){
  ellipse(mouseX,mouseY,200,200);
}
