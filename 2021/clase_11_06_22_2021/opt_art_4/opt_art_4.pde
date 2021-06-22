int tamX, tamY;
int cantX = 30;
int cantY = 30;

void setup(){
  size(400, 400);
  tamX = width/cantX;
  tamY = width/cantY;
}

void draw(){
  background(200);
  for(int i=0; i<cantX; i++){
    for(int j=0; j<cantY; j++){
      if(i == j){
        fill(random(200));
      }else{
        fill(dist(mouseX, mouseY, width/2, height/2));
      }
      rect(i*tamX, j*tamY, tamX, tamY);
    }
  }
}


void mouseClicked(){
  
}
