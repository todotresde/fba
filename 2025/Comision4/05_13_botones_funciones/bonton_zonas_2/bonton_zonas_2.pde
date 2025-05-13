color miColorDeFondo = color(200);

void setup(){
  size(400, 400);
}

void draw(){
  background(miColorDeFondo);
  rect(200,200,100,50);
}

void mouseClicked(){
  if(mouseX>200 && mouseX<300 && mouseY>200 && mouseY<250){
    miColorDeFondo = color(255,0,0);
  }
}
