void setup(){
  size(400,400);
}

void draw(){
  if(mouseX > width/2){
    if(mouseY > height/2){
      background(255,0,0);
    }else{
      background(0,255,0);
    }
  }else{
    if(mouseY > height/2){
      background(0,0,255);
    }else{
      background(0,0,0);
    }
  }
}
