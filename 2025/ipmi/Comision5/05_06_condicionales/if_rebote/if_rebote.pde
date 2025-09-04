int posX = 200;
int dir = 1;

void setup(){
    size(400, 400);
}

void draw(){
  background(200);
  ellipse(posX,200,50,50);
  posX = posX + dir;
  
  if(posX > 400){
    dir = -1;
  }
  
  if(posX < 0){
    dir = 1;
  }
  
}

void mouseClicked(){
}

void keyPressed(){

}
