int cant = 10;
int [][] miContador = new int [cant][cant];
int tam;
int posXPersonaje = 4;
int posYPersonaje = 4;

void setup(){
  size(400,400);
  tam = width/cant;
  textSize(20);
  miContador[posXPersonaje][posYPersonaje] = 1;
  miContador[2][4] = 2;
  miContador[5][2] = 2;
  miContador[8][8] = 2;
  miContador[8][9] = 2;
}

void draw(){
  background(200);
  for(int i=0; i< cant; i++){
    for(int j=0; j< cant; j++){
      if(miContador[i][j] == 1){
        fill(0,0,255);
      }else if(miContador[i][j] == 2){
        fill(0,255,0); 
      }else {
        fill(255);
      }
      rect(i*tam, j*tam, tam, tam);
    }
  }
}

void keyPressed(){
  if(mePuedoMover()) {
    mover();
  }
}
