void setup(){
  size(400,400);
}

void draw(){
  background(200);
  for(int j=0; j<10; j++){
    //Dibuja una fila de 10 rectángulos
    for(int i=0; i<10; i++){
      fill(255);
      rect(i*40, j*40, 40, 40);
      fill(0);
      text("("+i*40+","+j*40+")", (i*40)+5, (j*40)+10);
    }
  }
  // j=0, i=0 => x=0, y=0
  // j=0, i=1 => x=40, y=0
  // j=0, i=2 => x=80, y=0
  // j=0, i=3 => x=120, y=0
  // ...
  // j=0, i=9 => x=360, y=0
  // j=1, i=0 => x=0, y=40
  // j=1, i=1 => x=40, y=40
  // j=1, i=2 => x=80, y=40
  // ....
  // j=1, i=9 => x=360, y=40
  // j=2, i=0 => x=0, y=80
  // j=2, i=1 => x=40, y=80
  // j=2, i=2 => x=80, y=80
  
}
