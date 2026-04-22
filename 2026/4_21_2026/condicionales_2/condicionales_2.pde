int posX = 1;

void setup(){
  size(400,400);
}

void draw(){
  background(200);
  ellipse(posX, 200, 50, 50);
  
  if(posX < width){
    posX = posX+1;
  }else{
    posX = posX - width;
  }
}
