int cant = 10;
int tamX, tamY;
int [][] misDatos = new int [cant][cant];

void setup() {
  size(600, 300);
  tamX = width/cant;
  tamY = height/cant;
  for (int col=0; col < cant; col++) {
    for (int fila=0; fila < cant; fila++) {
      misDatos[col][fila] = 1;
    }
  }
  misDatos[5][5] = 8;
  misDatos[2][8] = 3;
}

void draw() {
  background(200);
  for (int col=0; col < cant; col++) {
    for (int fila=0; fila < cant; fila++) {
      fill(200);
      rect(col*tamX, fila*tamY, tamX, tamY);
      fill(0);
      textSize(10);
      text(col+":"+fila, col*tamX + tamX/2, fila*tamY + tamY - tamY/5);
      textSize(15);
      text(misDatos[col][fila], col*tamX + tamX/2, fila*tamY + tamY/2);
    }
  }
}

void mousePressed(){
  int col = floor(map(mouseX, 0, width, 0, cant));
  int fila = floor(map(mouseY, 0, height, 0, cant));
  misDatos[col][fila] = 20;
}
