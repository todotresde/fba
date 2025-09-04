int posX = 200;

void setup(){
    size(400, 400);
}

void draw(){
  background(200);
  ellipse(posX,200,50,50);
  posX = posX + 1;
  
  if(posX>400){
    posX = posX - 400;
  }
}

void mouseClicked(){
}

void keyPressed(){

}
