void setup(){
    size(400, 400);
}

void draw(){
  if(mouseX < 400){
    background(200,0,0);
  }else if(mouseX < 300){
    background(0,200,0);
  }else if(mouseX < 150){
    background(0,0,200);
  }else {
    background(0);
  }
  
  line(150,0, 150, height);
  line(300,0, 300, height);
  
  ellipse(200,200,100,100);
}
