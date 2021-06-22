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
        rect(i*tamX, j*tamY, tamX, tamY);
      }else if(i > j){
        fill(dist(mouseX, mouseY, i*tamX, j*tamY));
        rect(i*tamX, j*tamY, tamX, tamY);
      }else{          
        fill(width - dist(mouseX, mouseY, i*tamX, j*tamY));
        ellipse(i*tamX + tamX/2, j*tamY + tamY/2, tamX, tamY);
      }
    }
  }
}


void mouseClicked(){
  cantX--;
  tamX = width/cantX;
}

void keyPressed(){
  cantY--;
  tamY = width/cantY;
}
