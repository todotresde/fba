boolean activoEllipse = false;
int ellipsePosX = 0;

void setup(){
  size(400,400);
}

void draw(){
  background(200);
  
  fill(255,0,0);
  rect(100,100,100,50);
  
  fill(255);
  ellipse(ellipsePosX, 300, 50, 50);
  if(activoEllipse){
    ellipsePosX++;
  }else{
    fill(0,0,255);
    rect(0,0,width,20);
  }
  
}

void mouseClicked(){
  if(mouseX > 100 && mouseX < 200 && 
    mouseY > 100 && mouseY < 150){
    activoEllipse=true;
  }
}
