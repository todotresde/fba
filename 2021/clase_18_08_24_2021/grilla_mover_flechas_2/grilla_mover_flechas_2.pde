int cant = 10;
int tamX, tamY;
int col1, fila1 = 0;
int [][] misDatos = new int [cant][cant];

void setup() {
  size(600, 300);
  tamX = width/cant;
  tamY = height/cant;
  for (int col=0; col < cant; col++) {
    for (int fila=0; fila < cant; fila++) {
      misDatos[col][fila] = 0;
    }
  }
  misDatos[col1][fila1] = 1;
}

void draw() {
  background(200);
  for (int col=0; col < cant; col++) {
    for (int fila=0; fila < cant; fila++) {
      if(misDatos[col][fila] == 1){
        fill(0);
      }else{
        fill(250);
      }
      rect(col*tamX, fila*tamY, tamX, tamY);
      
      fill(0);
      textSize(10);
      text(col+":"+fila, col*tamX + tamX/2, fila*tamY + tamY - tamY/5);
    }
  }
}

void keyPressed(){
  if(keyCode == RIGHT){
    misDatos[col1][fila1] = 0;
    misDatos[col1+1][fila1] = 1;
    col1 = col1 + 1;
  }
}
