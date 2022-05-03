void setup(){
  size(400,400);
}

void draw(){
  background(200);
  if(mouseX > 100 && mouseX < 200 && 
    mouseY > 100 && mouseY < 150){
    fill(255, 0, 0, 50);
  }else{
    fill(255,0,0);
  }
  rect(100,100,100,50);
}
