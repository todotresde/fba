int cant = 10;
int tamX, tamY;
int posX = 0;
int posY = 0;

int dirX = 1;//1 Derecha - 0 Ninguna - -1 Izquierda
int dirY = 0;//1 Abajo - 0 Ninguna - -1 Arriba

void setup(){
  size(400, 400);
  tamX = width/cant;
  tamY = height/cant;
}

void draw(){
  background(200);
  for(int i=0; i<cant; i++){
    for(int j=0; j<cant; j++){
      if(posX == i && posY == j){
        fill(0);
      }else{
        fill(255);
      }
      rect(i*tamX, j*tamY, tamX, tamY);
    }
  }
  mover();
}
