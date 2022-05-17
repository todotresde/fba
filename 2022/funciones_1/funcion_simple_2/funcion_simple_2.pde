int posX, posY;
boolean hiceClick = false;

void setup(){
  size(400,400);
  posX = round(random(50,width-50));
  posY = round(random(50,height-50));
}

void draw(){
  background(200);
  dibujarBoton(posX, posY);

  if(hiceClick){
    fill(0);
    textSize(30);
    text("Hola Mundo!!!", 100, 100);
  }
}

void mouseClicked(){
  hiceClick = dibujarBoton(posX, posY);
}
