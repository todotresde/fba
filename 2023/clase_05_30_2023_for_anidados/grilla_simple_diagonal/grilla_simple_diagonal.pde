int cant = 10;
int tamX, tamY;

void setup(){
  size(400, 400);
  tamX = width/cant;
  tamY = height/cant;
}

void draw(){
  for(int i=0; i<cant; i++){
    for(int j=0; j<cant; j++){
      if(i==j)
        fill(255, 0, 0);
      else
        fill(255);
      rect(i*tamX, j*tamY, tamX, tamY);
    }
  }
}
