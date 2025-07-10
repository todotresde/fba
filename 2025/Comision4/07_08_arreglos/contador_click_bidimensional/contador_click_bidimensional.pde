int cant = 10;
int [][] miContador = new int [cant][cant];
int tam;

void setup(){
  size(400,400);
  tam = width/cant;
  textSize(20);
}

void draw(){
  background(200);
  for(int i=0; i< cant; i++){
    for(int j=0; j< cant; j++){
      fill(255);
      rect(i*tam, j*tam, tam, tam);
      fill(0);
      text(miContador[i][j], i*tam + tam/2, j*tam + tam/2);
    }
  }
}

void mouseClicked() {
  for (int i=0; i<cant; i++) {
    for(int j=0; j< cant; j++){
      if (mouseX > i*tam && mouseX < i*tam + tam && mouseY > j*tam && mouseY < j*tam+tam) {
        miContador[i][j]++;
      }
    }
  }
}
