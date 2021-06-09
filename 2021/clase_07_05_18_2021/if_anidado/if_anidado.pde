int posX;
float map_posX;

void setup(){
  size(400,400);
  textSize(40);
}

void draw(){
  background(200);
  
  //line(width/3,0,width/3,height);
  //line((width/3) * 2,0,(width/3) * 2,height);
  
  if(mouseX < width/2){
    if(mouseY > height/2){
      rect(mouseX, mouseY, 100, 100);
    }
  }
  
  
}
