int tamX, tamY;
int cantX = 5;
int cantY = 100;

void setup(){
  size(400, 400);
  tamX = width/cantX;
  tamY = width/cantY;
}

void draw(){
  background(200);
  for(int i=0; i<cantX; i++){
    for(int j=0; j<cantY; j++){
      rect(i*tamX, j*tamY, tamX, tamY);
    }
  }
}


void mouseClicked(){
  
}
