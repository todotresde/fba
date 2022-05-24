int cant = 10;
int tam;

void setup(){
  size(400,400);
  tam = width/cant;
}

void draw(){
  background(200);
  for(int i=0; i<cant;i++){
    rect(i*tam,0,tam,tam);
  }
}

void mousePressed(){
  cant++;
  tam = width/cant;
}

void keyPressed(){
  cant--;
  tam = width/cant;
}
