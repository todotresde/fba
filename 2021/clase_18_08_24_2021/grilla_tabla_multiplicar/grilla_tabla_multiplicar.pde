int cant = 10;
int tam;
int [][] misDatos = new int [cant][cant];

void setup() {
  size(400, 400);
  tam = width/cant;
  for (int col=0; col < cant; col++) {
    for (int fila=0; fila < cant; fila++) {
      misDatos[col][fila] = col * fila;
    }
  }
  //misDatos[5][5] = 8;
  //misDatos[2][8] = 3;
}

void draw() {
  background(200);
  for (int col=0; col < cant; col++) {
    for (int fila=0; fila < cant; fila++) {
      fill(200);
      rect(col*tam, fila*tam, tam, tam);
      fill(0);
      textSize(10);
      text(col+":"+fila, col*tam + tam/2, fila*tam + tam - tam/5);
      textSize(15);
      text(misDatos[col][fila], col*tam + tam/2, fila*tam + tam/2);
    }
  }
}
