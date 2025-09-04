void setup(){
  size(400,400);
}

void draw(){
  background(200);
  for(int j=0; j<10; j++){
    //Dibuja una fila de 10 rectángulos
    for(int i=0; i<10; i++){
      if(mouseX > i*40 && mouseX < i*40 + 40
      && mouseY > j*40 && mouseY < j*40 + 40){
        fill(0);
      }else{
        fill(255);
      }
      rect(i*40, j*40, 40, 40);
      //fill(0);
      //text("("+i*40+","+j*40+")", (i*40)+5, (j*40)+10);
    }
  }
}
