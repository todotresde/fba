color miColorDeFondo = color(200);

void setup(){
  size(400, 400);
}

void draw(){
  background(miColorDeFondo);
  //mouseX>200
  fill(255,0,0,50);
  rect(200,0,200,400);
  
  //mouseX<300
  fill(0,255,0,50);
  rect(0,0,300,400);
  
  //mouseY>200
  fill(0,0,255,50);
  rect(0,200,400,400);
  
  //mouseY<250
  fill(255,0,255,50);
  rect(0,0,400,250);
}

void mouseClicked(){
  if(mouseX>200 && mouseX<300 && mouseY>200 && mouseY<250){
    miColorDeFondo = color(255,0,0);
  }
}
