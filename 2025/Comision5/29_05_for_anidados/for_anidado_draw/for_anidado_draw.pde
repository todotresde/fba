int cantidad = 400;
int tamCelda = 0;

void setup(){
  size(400,400);
  tamCelda = width/cantidad;
}

void draw(){
  background(200);
  for(int j=0; j<cantidad; j++){
    //Dibuja una fila de 10 rectángulos
    for(int i=0; i<cantidad; i++){
      if(mouseX > i*tamCelda && mouseX < i*tamCelda + tamCelda
      && mouseY > j*tamCelda && mouseY < j*tamCelda + tamCelda){
        fill(0);
      }else{
        fill(255);
      }
      rect(i*tamCelda, j*tamCelda, tamCelda, tamCelda);
      //fill(0);
      //text("("+i*40+","+j*40+")", (i*40)+5, (j*40)+10);
    }
  }
}
