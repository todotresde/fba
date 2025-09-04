int cant = 10;
int [] miContador = new int [cant];
int tam;

void setup(){
  size(400,400);
  tam = width/cant;
  textSize(20);
}

void draw(){
  background(200);
  for(int i=0; i< cant; i++){
    fill(255);
    rect(i*tam, tam, tam, tam);
    fill(0);
    text(miContador[i], i*tam + tam/2, tam + tam/2);
  }
}

void mouseClicked() {
  for (int i=0; i<cant; i++) {
    if (mouseX > i*tam && mouseX < i*tam + tam && mouseY > tam && mouseY < tam+tam) {
      miContador[i]++;
    }
  }
}
