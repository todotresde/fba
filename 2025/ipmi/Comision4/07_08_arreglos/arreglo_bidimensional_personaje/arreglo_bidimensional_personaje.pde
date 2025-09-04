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
}

void draw(){
  background(200);
  for(int i=0; i< cant; i++){
    for(int j=0; j< cant; j++){
      if(miContador[i][j] == 1){
        fill(0,0,255);
      }else{
        fill(255); 
      }
      rect(i*tam, j*tam, tam, tam);
    }
  }
}

void keyPressed(){
  if(keyCode == LEFT){
    miContador[posXPersonaje][posYPersonaje] = 0;
    miContador[posXPersonaje-1][posYPersonaje] = 1;
    posXPersonaje--;
  }else if(keyCode == RIGHT){
    miContador[posXPersonaje][posYPersonaje] = 0;
    miContador[posXPersonaje+1][posYPersonaje] = 1;
    posXPersonaje++;
  }
}
