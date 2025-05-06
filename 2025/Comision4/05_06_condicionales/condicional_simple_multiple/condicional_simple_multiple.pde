void setup(){
    size(400, 400);
}

void draw(){
  if(mouseX < 150){
    background(200,0,0);
  }else if(mouseX < 300){
    background(0,200,0);
  }else{
    background(0,0,200);
  }
  
  ellipse(200,200,100,100);
}
