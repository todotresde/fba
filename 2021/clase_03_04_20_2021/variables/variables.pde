int posX = 100;
color color_random = color(random(255),random(255),random(255));
color color_azul = color(0,0,255);
color color_fondo;

void setup(){
  size(400,400);
  textSize(20);
  color_fondo = color_random;
}

void draw(){
  background(color_fondo);
  fill(0);
  text("posX: " + posX, mouseX, 100);
  fill(255);
  rect(posX,200,100,100);
  posX = posX + 1;
}

void mouseReleased(){
  
  posX = posX + 10;
}

void mouseClicked(){
  color_fondo = color_azul;
  posX = posX + 10;
}

void keyPressed(){
  color_fondo = color_random;
  posX = posX - 10;
}
