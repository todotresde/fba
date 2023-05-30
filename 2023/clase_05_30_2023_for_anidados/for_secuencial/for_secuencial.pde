int cant = 10;
int tamX, tamY;

void setup(){
  size(400, 400);
  tamX = width/cant;
  tamY = height/cant;
}

void draw(){
  for(int i=0; i<cant; i++){
    rect(i*tamX, 0, tamX, tamY);
  }
  for(int i=0; i<cant; i++){
    rect(i*tamX, tamX, tamX, tamY);
  }
  for(int i=0; i<cant; i++){
    rect(i*tamX, tamX*2, tamX, tamY);
  }
  for(int j=0; j<cant; j++){
    rect(0, j*tamY, tamX, tamY);
  }
}
